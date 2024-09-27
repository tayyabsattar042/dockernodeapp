pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dGF5eWFiMDQyOmV5SmhiR2NpT2lKU1V6STFOaUlzSW5SNWNDSTZJa3BYVkNJc0ltdHBaQ0k2SW5oWWEzQkNkRE55VjNNeVJ5MTFZamxzY0VwbmNTSjkuZXlKb2RIUndjem92TDJoMVlpNWtiMk5yWlhJdVkyOXRJanA3SW1WdFlXbHNJam9pZEdGNWVXRmljMkYwZEdGeU5EVTFRR2R0WVdsc0xtTnZiU0lzSW5ObGMzTnBiMjVmYVdRaU9pSXhObVZtTjJVeVpTMWtZelV5TFRSbE5tRXRPVEJrWmkxaE4yVmpNRGN6WW1Sak1Ea2lMQ0p6YjNWeVkyVWlPaUpoZFhSb01DSXNJblZ6WlhKdVlXMWxJam9pZEdGNWVXRmlNRFF5SWl3aWRYVnBaQ0k2SWpkaE1UVXlPRE5rTFdJNU5UZ3ROREpsWlMxaU5HWmpMV05qTjJWbE56ZzVNemMyWlNKOUxDSnBjM01pT2lKb2RIUndjem92TDJ4dloybHVMbVJ2WTJ0bGNpNWpiMjB2SWl3aWMzVmlJam9pWVhWMGFEQjhOMkV4TlRJNE0yUXRZamsxT0MwME1tVmxMV0kwWm1NdFkyTTNaV1UzT0Rrek56WmxJaXdpWVhWa0lqcGJJbWgwZEhCek9pOHZhSFZpTG1SdlkydGxjaTVqYjIwaUxDSm9kSFJ3Y3pvdkwyUnZZMnRsY2kxd2NtOWtMblZ6TG1GMWRHZ3dMbU52YlM5MWMyVnlhVzVtYnlKZExDSnBZWFFpT2pFM01qY3pOVEV3TXpVc0ltVjRjQ0k2TVRjeU56TTFORFl6TlN3aWMyTnZjR1VpT2lKdmNHVnVhV1FnYjJabWJHbHVaVjloWTJObGMzTWlMQ0poZW5BaU9pSk1OSFl3Wkcxc1RrSndXVlZxUjBkaFlqQkRNa3AwWjFSbldISXhVWG8wWkNKOS5jLUtmdWZRaWZPUXpmU2NjLVFOUnpzVjNHQ2k2bGVpOFU0bEZqWG5EV3dHTkRXTTk5dzB4Z0lLclAxWXVIR1FkZWFUWk9rNWVjQ0J0WTlGSVNqcjNzTE42U1pFRFhjTm5tbE1fdG1FNHFrLU81SW9fcW5nMl8wNjUxa1ZvbFl3WGUzUDRnZXF4VmRhWGk0Tm1BUV9ELXZvZ05aRG01MDZ1QTB5MkNnUWJiZXYycWNydW05MEZZLWxvZ1J0S05GZEV3QXBMc2VyYnA2WXFyU3ItbEpaVTZUUHV5ckhOSWdfYlVfbm9rZ3djV3ZtZ1Y3bmJEV1lTbDZjN25LZDdCbjJBNXhZa3ZuVnpySkprdkhhRE1xOEVSeHJfa3RYOWotMlhfZmxMRUVBRHRBME9fYXc3OENPRW1uVDg1ZUJDUzl1UmZudmlZTVF5MEtvZHE0RWtDSWoxWEE=')
        DOCKER_IMAGE = 'tayyab042/docker-nodejs-repo'
    }
    stages {
        stage('Clone') {
            steps { git url: 'https://github.com/tayyabsattar042/dockernodeapp.git' }
        }

        stage('Deploy') {
            steps {
                script {
                    sh '''
                    docker stop tayyab042/docker-nodejs-repo || true
                    docker rm tayyab042/docker-nodejs-repo || true
                    docker run -p 3011:3000 --name tayyab042/docker-nodejs-repo ${tayyab042/docker-nodejs-repo}:latest
                    '''
                }
            }
        }
    }
}
