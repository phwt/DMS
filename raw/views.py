from django.contrib.auth.decorators import login_required
from django.db import connection
from django.shortcuts import render
import re


@login_required(login_url='login')
def index(request):
    query = request.POST.get('query', '')
    if request.method == 'POST':
        if bool(re.search(r'\bCREATE\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'CREATE', 'query': query})
        if bool(re.search(r'\bALTER\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'ALTER', 'query': query})
        if bool(re.search(r'\bDROP\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'DROP', 'query': query})
        if bool(re.search(r'\bTRUNCATE\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'TRUNCATE', 'query': query})
        if bool(re.search(r'\bCOMMENT\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'COMMENT', 'query': query})
        if bool(re.search(r'\bRENAME\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'RENAME', 'query': query})
        if bool(re.search(r'\bINSERT\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'INSERT', 'query': query})
        if bool(re.search(r'\bUPDATE\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'UPDATE', 'query': query})
        if bool(re.search(r'\bDELETE\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'DELETE', 'query': query})
        if bool(re.search(r'\bMERGE\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'MERGE', 'query': query})
        if bool(re.search(r'\bCALL\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'CALL', 'query': query})
        if bool(re.search(r'\bINFORMATION_SCHEMA\b', query, flags=re.IGNORECASE)):
            return render(request, 'raw.html', {'error': 'INFORMATION_SCHEMA', 'query': query})

        with connection.cursor() as cursor:
            cursor.execute(query)
            return render(request, 'raw.html', {'query': query, 'rows': cursor, 'cols': [i.name for i in cursor.description]})

    return render(request, 'raw.html', {'query': query})
