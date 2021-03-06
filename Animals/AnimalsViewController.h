//
//  AnimalsViewController.h
//  Animals
//
//  Created by Thiago Silva on 7/10/12.
//  Copyright (c) 2012 LPJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimalsViewController : UIViewController {
    UIImageView *sheep;
    UIImageView *cachorro;
    UIImageView *gato;
    UIImageView *leao;
    UIImageView *macaco;
    UIImageView *porco;
    UIImageView *bg;
}

@property (nonatomic, retain) UIImageView *sheep;
@property (nonatomic, retain) UIImageView *cachorro;
@property (nonatomic, retain) UIImageView *gato;
@property (nonatomic, retain) UIImageView *leao;
@property (nonatomic, retain) UIImageView *macaco;
@property (nonatomic, retain) UIImageView *porco;
@property (nonatomic, retain) UIImageView *bg;

-(IBAction)playElefante:(id)sender;
-(IBAction)playCachorro:(id)sender;
-(IBAction)playGato:(id)sender;
-(IBAction)playLeao:(id)sender;
-(IBAction)playMacaco:(id)sender;
-(IBAction)playPorco:(id)sender;


@end

