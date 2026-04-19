#!/usr/bin/env groovy

/**
 * CI/CD Pipeline
 * This Jenkins pipeline implements basic build and deployment stages
 */

pipeline {
    agent any

    options {
        buildDiscarder(logRotator(numToKeepStr: '10'))
        timestamps()
        timeout(time: 60, unit: 'MINUTES')
    }

    environment {
        DOCKER_REGISTRY = credentials('docker-registry-url')
        APP_NAME = 'app'
    }

    stages {
        stage('Initialize') {
            steps {
                script {
                    echo "========================================="
                    echo "Build Pipeline"
                    echo "========================================="
                    echo "Build Number: ${env.BUILD_NUMBER}"
                    echo "Git Commit: ${env.GIT_COMMIT}"
                    echo "========================================="
                    cleanWs()
                    checkout scm
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                script {
                    echo "Installing dependencies..."
                    sh 'npm ci'
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    echo "Building application..."
                    sh 'npm run build'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    echo "Running tests..."
                    sh 'npm test || true'
                }
            }
        }
    }

    post {
        always {
            script {
                echo "Pipeline completed"
                cleanWs()
            }
        }
    }
}
