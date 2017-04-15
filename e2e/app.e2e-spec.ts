import { DockerDemoPage } from './app.po';

describe('docker-demo App', () => {
  let page: DockerDemoPage;

  beforeEach(() => {
    page = new DockerDemoPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
