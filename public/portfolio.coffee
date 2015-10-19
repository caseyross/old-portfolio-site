portfolio = angular.module 'portfolio', []

portfolio.controller 'PortfolioController', ->
    @projects = [
        {
            name: 'STEMfire UI redesign'
            year: '2013'
            type: 'school'
            description: 'With STEMfire, educators can create these opportunities for industry volunteers to join. Together we can ignite a passion for STEM in students and enhance the education of a generation.'
            technologies: ['node.js', 'angular.js', 'mongodb', 'heroku']
            images: ['w_dashboard_l9me1t', 's_events_qoetlo']
            livelink: 'http://www.stemfire.com'
        }
        {
            name: 'Elevator visualization'
            github: 'http://www.github.com/stemfire/stemfire'
        }
    ]
    @selectedProject = undefined
    @selectProject = (index) ->
        @selectedProject = index
    return