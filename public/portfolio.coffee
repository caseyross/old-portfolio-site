portfolio = angular.module 'portfolio', []

portfolio.controller 'PortfolioController', ->
    @projects = [
        {
            name: 'Theorem prover'
            year: '2013'
            type: 'school'
            title: 'Resolution theorem prover for propositional logic'
            technologies: ['java']
            images: []
            github: 'http://www.github.com/caseyross/prover'
        }
        {
            name: 'Elevator visualization'
            year: '2012'
            type: 'school'
            title: 'Simulation and visualization of elevator movement'
            technologies: ['java', 'swing']
            images: ['elevator3_jfhjsg', 'elevator4_btvqol', 'elevator2_st2cox', 'elevator1_bukyyn', 'elevator5_y5qm8t', 'elevator6_tty38t']
            github: 'http://www.github.com/caseyross/elevator-sim'
        }
        {
            name: 'Portfolio'
            year: '2015'
            type: 'personal'
            title: 'Personal website'
            technologies: ['node.js', 'express', 'angular.js', 'adobe illustrator']
            images: ['ps_k0pccb', 'ps2_cu56fh', 'ps3_xvuptj', 'ps4_touof9', 'portfolio_unddhw.png']
            github: 'http://www.github.com/caseyross/portfolio'
        }
        {
            name: 'STEMfire UI redesign'
            year: '2015'
            type: 'school / work'
            title: 'UX evaluation and redesign for stemfire.com'
            technologies: ['ruby on rails', 'postgresql', 'heroku', 'bootstrap']
            images: ['s_events_qoetlo.jpg', 'sf_sketch_oabn0i', 'w_dashboard_l9me1t', 'w_event_oyymtb', 's_event_jlregq']
            livelink: 'http://www.stemfire.com'
        }
        {
            name: 'T-shirt design'
            year: '2013'
            type: 'personal'
            title: 'T-shirt design contest entry for my university\'s honors program'
            commentary: ''
            technologies: ['adobe illustrator']
            images: ['CV_TShirt_Contest_Design_dik2oq.png']
        }
        {
            name: 'Olympics logo'
            year: '2015'
            type: 'personal'
            title: 'Just-for-fun logo for the 2020 Olympics'
            commentary: 'I tried to evoke three ideas with the shapes and arrangement of this logo:
            \n
            \n1. The easily recognizable icons of the Olympic rings and the Rising Sun
            \n2. The silhouette of Mt. Fuji, an internationally renowned Japanese landmark
            \n3. The sun above the curve of the earth, representing both a bright, optimistic future and a unified, equal gathering of humanity'
            technologies: ['adobe illustrator']
            images: ['tokyo-2020_wkpcc1.png']
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