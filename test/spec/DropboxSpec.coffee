describe 'Dropbox', ->

  {Dropbox,$httpBackend,credentials} = {}
  
  headers = 
    'Accept': 'application/json, text/plain, */*'
    'X-Requested-With': 'XMLHttpRequest'
    'Authorization': 'Bearer g1bb3r1sh'

  angular.module('dropbox').value('DropboxClientId', '1234')
  beforeEach module 'dropbox'

  beforeEach inject ($injector) ->
    Dropbox      = $injector.get 'Dropbox'
    $httpBackend = $injector.get '$httpBackend'
    credentials = access_token: 'g1bb3r1sh'
    Dropbox.setCredentials credentials

  afterEach ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  describe 'authorize', ->
    # TEST THE MESSAGE EVENT ON WINDOW

  describe 'credentials', ->

    it 'should return OAuth credentials', ->
      expect(Dropbox.credentials()).toEqual(credentials)

  describe 'authenticate', ->

  describe 'isAuthenticated', ->

    it 'should ...', ->
      expect(Dropbox.isAuthenticated()).toEqual true


  describe 'signOut', ->

  describe 'signOff', ->

  describe 'accountInfo', ->
    
    it 'should get account info', ->
      $httpBackend.expectGET("#{Dropbox.urls.accountInfo}").respond(null)
      Dropbox.accountInfo()
      $httpBackend.flush()

  describe 'readFile', ->

    it 'should get the contents of a file', ->
      url = "#{Dropbox.urls.getFile}directory/name.ext"
      $httpBackend.expectGET(url, headers).respond null
      Dropbox.readFile 'directory/name.ext'
      $httpBackend.flush()

  describe 'writeFile', ->

  describe 'resumableUploadStep', ->

  describe 'resumableUploadFinish', ->

  describe 'stat', ->

    it 'should get the stat for a path', ->
      url = "#{Dropbox.urls.metadata}directory/name.ext"
      $httpBackend.expectGET(url, headers).respond null
      Dropbox.stat 'directory/name.ext'
      $httpBackend.flush()

  describe 'readdir', ->
    # HOW TO TEST THIS?

  describe 'metadata', ->

    it 'should get the metadata for a path', ->
      url = "#{Dropbox.urls.metadata}directory/name.ext"
      $httpBackend.expectGET(url, headers).respond null
      Dropbox.metadata 'directory/name.ext'
      $httpBackend.flush()

  describe 'makeUrl', ->

  describe 'history', ->

    it 'should get the history for a path', ->
      url = "#{Dropbox.urls.revisions}directory/name.ext"
      $httpBackend.expectGET(url, headers).respond null
      Dropbox.history 'directory/name.ext'
      $httpBackend.flush()

  describe 'revisions', ->

    it 'should get the revisions for a path', ->
      url = "#{Dropbox.urls.revisions}directory/name.ext"
      $httpBackend.expectGET(url, headers).respond null
      Dropbox.revisions 'directory/name.ext'
      $httpBackend.flush()

  describe 'thumbnailUrl', ->

    it 'should make a signed url for a thumbnail', ->
      url = "#{Dropbox.urls.thumbnails}directory/image.jpeg?format=jpeg&size=m&access_token=#{credentials.access_token}"
      expect(Dropbox.thumbnailUrl('directory/image.jpeg')).toEqual(url)

  describe 'readThumbnail', ->

  describe 'revertFile', ->

  describe 'restore', ->

  describe 'findByName', ->

    it 'should get query a path', ->
      url = "#{Dropbox.urls.search}directory/name.ext?query=terms"
      $httpBackend.expectGET(url, headers).respond null
      Dropbox.findByName 'directory/name.ext', 'terms'
      $httpBackend.flush()

  describe 'search', ->

    it 'should get query a path', ->
      url = "#{Dropbox.urls.search}directory/name.ext?query=terms"
      $httpBackend.expectGET(url, headers).respond null
      Dropbox.search 'directory/name.ext', 'terms'
      $httpBackend.flush()

  describe 'makeCopyReference', ->

  describe 'copyRef', ->

  describe 'pullChanges', ->

  describe 'delta', ->

  describe 'mkdir', ->

  describe 'remove', ->

  describe 'unlink', ->

  describe 'delete', ->

  describe 'copy', ->

  describe 'move', ->

  describe 'reset', ->

  describe 'setCredentials', ->

  describe 'appHash', ->

