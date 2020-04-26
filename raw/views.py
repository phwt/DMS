from django.contrib.auth.decorators import login_required
from django.db import connection
from django.shortcuts import render


@login_required(login_url='login')
def index(request):
    query = request.POST.get('query', '')
    if request.method == 'POST':
        if 'CREATE' in query.upper():
            return render(request, 'raw.html', {'error': 'CREATE', 'query': query})
        if 'ALTER' in query.upper():
            return render(request, 'raw.html', {'error': 'ALTER', 'query': query})
        if 'DROP' in query.upper():
            return render(request, 'raw.html', {'error': 'DROP', 'query': query})
        if 'TRUNCATE' in query.upper():
            return render(request, 'raw.html', {'error': 'TRUNCATE', 'query': query})
        if 'COMMENT' in query.upper():
            return render(request, 'raw.html', {'error': 'COMMENT', 'query': query})
        if 'RENAME' in query.upper():
            return render(request, 'raw.html', {'error': 'RENAME', 'query': query})
        if 'INSERT' in query.upper():
            return render(request, 'raw.html', {'error': 'INSERT', 'query': query})
        if 'UPDATE' in query.upper():
            return render(request, 'raw.html', {'error': 'UPDATE', 'query': query})
        if 'DELETE' in query.upper():
            return render(request, 'raw.html', {'error': 'DELETE', 'query': query})
        if 'MERGE' in query.upper():
            return render(request, 'raw.html', {'error': 'MERGE', 'query': query})
        if 'CALL' in query.upper():
            return render(request, 'raw.html', {'error': 'CALL', 'query': query})
        if 'INFORMATION_SCHEMA' in query.upper():
            return render(request, 'raw.html', {'error': 'INFORMATION_SCHEMA', 'query': query})

        with connection.cursor() as cursor:
            cursor.execute(query)
            return render(request, 'raw.html', {'query': query, 'rows': cursor, 'cols': [i.name for i in cursor.description]})

    return render(request, 'raw.html', {'query': query})
