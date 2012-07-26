//
//  AnimalsViewController.m
//  Animals
//
//  Created by Thiago Silva on 7/10/12.
//  Copyright (c) 2012 LPJ. All rights reserved.
//

#import "AnimalsViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@implementation AnimalsViewController

@synthesize elefante;
@synthesize cachorro;
@synthesize gato;
@synthesize leao;
@synthesize macaco;
@synthesize porco;

-(void)displayAnimals{
    elefante = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 160, 118)];
    [elefante setImage:[UIImage imageNamed:@"elefante.png"]];
    elefante.opaque = YES;
    [self.view addSubview:elefante];
    
    cachorro = [[UIImageView alloc] initWithFrame:CGRectMake(10, 148, 160, 118)];
    [cachorro setImage:[UIImage imageNamed:@"cachorro.png"]];
    cachorro.opaque = YES;
    [self.view addSubview:cachorro];
    
    gato = [[UIImageView alloc] initWithFrame:CGRectMake(170, 10, 160, 118)];
    [gato setImage:[UIImage imageNamed:@"gato.png"]];
    gato.opaque = YES;
    [self.view addSubview:gato];
    
    leao = [[UIImageView alloc] initWithFrame:CGRectMake(170, 148, 160, 118)];
    [leao setImage:[UIImage imageNamed:@"leao.png"]];
    leao.opaque = YES;
    [self.view addSubview:leao];
    
    macaco = [[UIImageView alloc] initWithFrame:CGRectMake(10, 286, 160, 118)];
    [macaco setImage:[UIImage imageNamed:@"macaco.png"]];
    macaco.opaque = YES;
    [self.view addSubview:macaco];   
    
    porco = [[UIImageView alloc] initWithFrame:CGRectMake(170, 286, 160, 118)];
    [porco setImage:[UIImage imageNamed:@"porco.png"]];
    porco.opaque = YES;
    [self.view addSubview:porco];
}

-(IBAction)playSound:(NSString *)filename {
    SystemSoundID sound1;
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:filename
                                              withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &sound1);
    AudioServicesPlayAlertSound(sound1);
    NSLog(@"tapped");
}

-(IBAction)playElefante:(UITapGestureRecognizer *)sender{
    SystemSoundID elefante_snd;
    NSURL *elefante_snd_URL = [[NSBundle mainBundle] URLForResource:@"elefante"
                                              withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)elefante_snd_URL, &elefante_snd);
    AudioServicesPlayAlertSound(elefante_snd);
    NSLog(@"tapped_elefante");
}

-(IBAction)playCachorro:(UITapGestureRecognizer *)sender{
    SystemSoundID elefante_snd;
    NSURL *elefante_snd_URL = [[NSBundle mainBundle] URLForResource:@"dog"
                                                      withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)elefante_snd_URL, &elefante_snd);
    AudioServicesPlaySystemSound(elefante_snd);
    NSLog(@"tapped_dog");
}

-(IBAction)playGato:(UITapGestureRecognizer *)sender{
    SystemSoundID sound1;
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"gato"
                                              withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &sound1);
    AudioServicesPlayAlertSound(sound1);
    NSLog(@"tapped_gato");
}

-(IBAction)playLeao:(UITapGestureRecognizer *)sender{
    SystemSoundID sound1;
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"leao"
                                              withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &sound1);
    AudioServicesPlayAlertSound(sound1);
    NSLog(@"tapped_leao");
}

-(IBAction)playMacaco:(UITapGestureRecognizer *)sender{
    SystemSoundID sound1;
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"macaco"
                                              withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &sound1);
    AudioServicesPlayAlertSound(sound1);
    NSLog(@"tapped_Macaco");
}

-(IBAction)playPorco:(UITapGestureRecognizer *)sender{
    SystemSoundID sound1;
    NSURL *soundURL = [[NSBundle mainBundle] URLForResource:@"porco"
                                              withExtension:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &sound1);
    AudioServicesPlayAlertSound(sound1);
    NSLog(@"tapped_porco");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self displayAnimals];
    elefante.userInteractionEnabled = YES;
    cachorro.userInteractionEnabled = YES;
    gato.userInteractionEnabled = YES;
    leao.userInteractionEnabled = YES;
    macaco.userInteractionEnabled = YES;
    porco.userInteractionEnabled = YES;

    UITapGestureRecognizer *elefanteTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(playElefante:)];
    elefanteTap.numberOfTapsRequired = 1;
    [elefante addGestureRecognizer:elefanteTap];
    [self.view addSubview:elefante];
    
    UITapGestureRecognizer *cachorroTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(playCachorro:)];
    cachorroTap.numberOfTapsRequired = 1;
    [cachorro addGestureRecognizer:cachorroTap];
    [self.view addSubview:cachorro];
    
    UITapGestureRecognizer *gatoTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(playGato:)];
    gatoTap.numberOfTapsRequired = 1;
    [gato addGestureRecognizer:gatoTap];
    [self.view addSubview:gato];
    
    UITapGestureRecognizer *leaoTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(playLeao:)];
    leaoTap.numberOfTapsRequired = 1;
    [leao addGestureRecognizer:leaoTap];
    [self.view addSubview:leao];
    
    UITapGestureRecognizer *macacoTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(playMacaco:)];
    macacoTap.numberOfTapsRequired = 1;
    [macaco addGestureRecognizer:macacoTap];
    [self.view addSubview:macaco];
    
    UITapGestureRecognizer *porcoTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(playPorco:)];
    porcoTap.numberOfTapsRequired = 1;
    [porco addGestureRecognizer:porcoTap];
    [self.view addSubview:porco];
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
