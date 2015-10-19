portfolio = angular.module 'portfolio', []

portfolio.controller 'PortfolioController', ->
    @projects = [
        {
            name: 'Resolution theorem prover'
            year: '2013'
            type: 'school'
            technologies: ['java']
            images: []
            github: 'http://www.github.com/caseyross/prover'
        }
        {
            name: 'Elevator visualization'
            year: '2012'
            type: 'school'
            technologies: ['java', 'swing']
            images: []
            github: 'http://www.github.com/caseyross/elevator-sim'
        }
        {
            name: 'STEMfire UI redesign'
            year: '2013'
            type: 'school / work'
            description: 'With STEMfire, educators can create these opportunities for industry volunteers to join. Together we can ignite a passion for STEM in students and enhance the education of a generation.'
            technologies: ['bootstrap', 'ruby on rails', 'postgresql', 'heroku']
            images: ['w_dashboard_l9me1t', 's_events_qoetlo.jpg']
            livelink: 'http://www.stemfire.com'
        }
        {
            name: 'Portfolio'
            year: '2015'
            type: 'personal'
            technologies: ['node.js', 'express', 'angular.js']
            images: []
            github: 'http://www.github.com/caseyross/portfolio'
        }
        {
            name: 'T-shirt design'
            year: '2013'
            type: 'personal'
            technologies: ['adobe illustrator']
            images: ['CV_TShirt_Contest_Design_dik2oq.png']
        }
        {
            name: 'Tokyo Olympics logo'
            year: '2015'
            type: 'personal'
            technologies: ['adobe illustrator']
            images: []
        }
    ]
    
    @selectedProject = -1
    @selectProject = (index) ->
        @selectedProject = index
    @selectedImage = -1
    @selectImage = (index) ->
        @selectedImage = index
    @deselectImage = ->
        @selectedImage = -1
    @isImageSelected = ->
        @selectedImage > -1
    return