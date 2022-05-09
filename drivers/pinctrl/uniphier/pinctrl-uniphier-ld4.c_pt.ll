; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c_pt.bc'
source_filename = "../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_pinctrl_socdata = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.uniphier_pinctrl_group = type { ptr, ptr, i32, ptr }
%struct.uniphier_pinmux_function = type { ptr, ptr, i32 }

@__initcall__kmod_pinctrl_uniphier_ld4__210_749_uniphier_ld4_pinctrl_driver_init6 = internal global ptr @uniphier_ld4_pinctrl_driver_init, section ".initcall6.init", align 4
@uniphier_ld4_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_ld4_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_ld4_pinctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uniphier_pinctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uniphier-ld4-pinctrl\00", [43 x i8] zeroinitializer }, align 32
@uniphier_ld4_pinctrl_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld4-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@uniphier_pinctrl_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@uniphier_ld4_pindata = internal constant { %struct.uniphier_pinctrl_socdata, [32 x i8] } { %struct.uniphier_pinctrl_socdata { ptr @uniphier_ld4_pins, i32 175, ptr @uniphier_ld4_groups, i32 29, ptr @uniphier_ld4_functions, i32 18, ptr @uniphier_ld4_get_gpio_muxval, i32 0 }, [32 x i8] zeroinitializer }, align 32
@uniphier_ld4_pins = internal constant { [175 x %struct.pinctrl_pin_desc], [524 x i8] } { [175 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.1, ptr inttoptr (i32 17039431 to ptr) }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.2, ptr inttoptr (i32 17072207 to ptr) }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.3, ptr inttoptr (i32 17104983 to ptr) }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.4, ptr inttoptr (i32 17137759 to ptr) }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.5, ptr inttoptr (i32 17170535 to ptr) }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.6, ptr inttoptr (i32 17203311 to ptr) }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.7, ptr inttoptr (i32 17236087 to ptr) }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.8, ptr inttoptr (i32 17268856 to ptr) }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.9, ptr inttoptr (i32 17301632 to ptr) }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.10, ptr inttoptr (i32 17334408 to ptr) }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.11, ptr inttoptr (i32 17367184 to ptr) }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.12, ptr inttoptr (i32 17399960 to ptr) }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.13, ptr inttoptr (i32 17432736 to ptr) }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.14, ptr inttoptr (i32 17465512 to ptr) }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.15, ptr inttoptr (i32 17498288 to ptr) }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.16, ptr inttoptr (i32 17531071 to ptr) }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.17, ptr inttoptr (i32 786631 to ptr) }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.18, ptr inttoptr (i32 819407 to ptr) }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.19, ptr inttoptr (i32 884959 to ptr) }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.20, ptr inttoptr (i32 917735 to ptr) }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.21, ptr inttoptr (i32 950511 to ptr) }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.22, ptr inttoptr (i32 1245495 to ptr) }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.23, ptr inttoptr (i32 4788231 to ptr) }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.24, ptr inttoptr (i32 4821007 to ptr) }, %struct.pinctrl_pin_desc { i32 24, ptr @.str.25, ptr inttoptr (i32 4853783 to ptr) }, %struct.pinctrl_pin_desc { i32 25, ptr @.str.26, ptr inttoptr (i32 4886559 to ptr) }, %struct.pinctrl_pin_desc { i32 26, ptr @.str.27, ptr inttoptr (i32 4919335 to ptr) }, %struct.pinctrl_pin_desc { i32 27, ptr @.str.28, ptr inttoptr (i32 4952111 to ptr) }, %struct.pinctrl_pin_desc { i32 28, ptr @.str.29, ptr inttoptr (i32 4984887 to ptr) }, %struct.pinctrl_pin_desc { i32 29, ptr @.str.30, ptr inttoptr (i32 5017663 to ptr) }, %struct.pinctrl_pin_desc { i32 30, ptr @.str.31, ptr inttoptr (i32 5050439 to ptr) }, %struct.pinctrl_pin_desc { i32 31, ptr @.str.32, ptr inttoptr (i32 5083215 to ptr) }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.33, ptr inttoptr (i32 18055486 to ptr) }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.34, ptr inttoptr (i32 18088262 to ptr) }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.35, ptr inttoptr (i32 18121038 to ptr) }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.36, ptr inttoptr (i32 18153814 to ptr) }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.37, ptr inttoptr (i32 18186590 to ptr) }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.38, ptr inttoptr (i32 18219366 to ptr) }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.39, ptr inttoptr (i32 18252142 to ptr) }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.40, ptr inttoptr (i32 18284918 to ptr) }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.41, ptr inttoptr (i32 18317694 to ptr) }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.42, ptr inttoptr (i32 18350470 to ptr) }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.43, ptr inttoptr (i32 18383246 to ptr) }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.44, ptr inttoptr (i32 18416022 to ptr) }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.45, ptr inttoptr (i32 5115991 to ptr) }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.46, ptr inttoptr (i32 5148767 to ptr) }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.47, ptr inttoptr (i32 5181543 to ptr) }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.48, ptr inttoptr (i32 5214319 to ptr) }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.49, ptr inttoptr (i32 5247095 to ptr) }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.50, ptr inttoptr (i32 5279871 to ptr) }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.51, ptr inttoptr (i32 1671583 to ptr) }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.52, ptr inttoptr (i32 1704359 to ptr) }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.53, ptr inttoptr (i32 1737135 to ptr) }, %struct.pinctrl_pin_desc { i32 53, ptr @.str.54, ptr inttoptr (i32 18547120 to ptr) }, %struct.pinctrl_pin_desc { i32 54, ptr @.str.55, ptr inttoptr (i32 18579896 to ptr) }, %struct.pinctrl_pin_desc { i32 55, ptr @.str.56, ptr inttoptr (i32 18612672 to ptr) }, %struct.pinctrl_pin_desc { i32 56, ptr @.str.57, ptr inttoptr (i32 18645448 to ptr) }, %struct.pinctrl_pin_desc { i32 57, ptr @.str.58, ptr inttoptr (i32 18678224 to ptr) }, %struct.pinctrl_pin_desc { i32 58, ptr @.str.59, ptr inttoptr (i32 18711000 to ptr) }, %struct.pinctrl_pin_desc { i32 59, ptr @.str.60, ptr inttoptr (i32 18743776 to ptr) }, %struct.pinctrl_pin_desc { i32 60, ptr @.str.61, ptr inttoptr (i32 18776552 to ptr) }, %struct.pinctrl_pin_desc { i32 61, ptr @.str.62, ptr inttoptr (i32 18809328 to ptr) }, %struct.pinctrl_pin_desc { i32 62, ptr @.str.63, ptr inttoptr (i32 18842104 to ptr) }, %struct.pinctrl_pin_desc { i32 63, ptr @.str.64, ptr inttoptr (i32 18874880 to ptr) }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.65, ptr inttoptr (i32 18907656 to ptr) }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.66, ptr inttoptr (i32 18940432 to ptr) }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.67, ptr inttoptr (i32 18973208 to ptr) }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.68, ptr inttoptr (i32 19005984 to ptr) }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.69, ptr inttoptr (i32 19038760 to ptr) }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.70, ptr inttoptr (i32 19071536 to ptr) }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.71, ptr inttoptr (i32 19104312 to ptr) }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.72, ptr inttoptr (i32 19137088 to ptr) }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.73, ptr inttoptr (i32 19169864 to ptr) }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.74, ptr inttoptr (i32 19202640 to ptr) }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.75, ptr inttoptr (i32 19235416 to ptr) }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.76, ptr inttoptr (i32 19268192 to ptr) }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.77, ptr inttoptr (i32 19300968 to ptr) }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.78, ptr inttoptr (i32 19333744 to ptr) }, %struct.pinctrl_pin_desc { i32 78, ptr @.str.79, ptr inttoptr (i32 19366520 to ptr) }, %struct.pinctrl_pin_desc { i32 79, ptr @.str.80, ptr inttoptr (i32 19399296 to ptr) }, %struct.pinctrl_pin_desc { i32 80, ptr @.str.81, ptr inttoptr (i32 19432072 to ptr) }, %struct.pinctrl_pin_desc { i32 81, ptr @.str.82, ptr inttoptr (i32 19464848 to ptr) }, %struct.pinctrl_pin_desc { i32 82, ptr @.str.83, ptr inttoptr (i32 19497624 to ptr) }, %struct.pinctrl_pin_desc { i32 83, ptr @.str.84, ptr inttoptr (i32 19530400 to ptr) }, %struct.pinctrl_pin_desc { i32 84, ptr @.str.85, ptr inttoptr (i32 19563176 to ptr) }, %struct.pinctrl_pin_desc { i32 85, ptr @.str.86, ptr inttoptr (i32 19595952 to ptr) }, %struct.pinctrl_pin_desc { i32 86, ptr @.str.87, ptr inttoptr (i32 19628728 to ptr) }, %struct.pinctrl_pin_desc { i32 87, ptr @.str.88, ptr inttoptr (i32 19661504 to ptr) }, %struct.pinctrl_pin_desc { i32 88, ptr @.str.89, ptr inttoptr (i32 19694280 to ptr) }, %struct.pinctrl_pin_desc { i32 89, ptr @.str.90, ptr inttoptr (i32 19727056 to ptr) }, %struct.pinctrl_pin_desc { i32 90, ptr @.str.91, ptr inttoptr (i32 19759832 to ptr) }, %struct.pinctrl_pin_desc { i32 91, ptr @.str.92, ptr inttoptr (i32 19792608 to ptr) }, %struct.pinctrl_pin_desc { i32 92, ptr @.str.93, ptr inttoptr (i32 19825384 to ptr) }, %struct.pinctrl_pin_desc { i32 93, ptr @.str.94, ptr inttoptr (i32 22102011 to ptr) }, %struct.pinctrl_pin_desc { i32 94, ptr @.str.95, ptr inttoptr (i32 22134780 to ptr) }, %struct.pinctrl_pin_desc { i32 95, ptr @.str.96, ptr inttoptr (i32 22167549 to ptr) }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.97, ptr inttoptr (i32 19858160 to ptr) }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.98, ptr inttoptr (i32 19890936 to ptr) }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.99, ptr inttoptr (i32 19923719 to ptr) }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.100, ptr inttoptr (i32 19956495 to ptr) }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.101, ptr inttoptr (i32 19989271 to ptr) }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.102, ptr inttoptr (i32 20022040 to ptr) }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.103, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.104, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.105, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 105, ptr @.str.106, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 106, ptr @.str.107, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 107, ptr @.str.108, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 108, ptr @.str.109, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 109, ptr @.str.110, ptr inttoptr (i32 83869695 to ptr) }, %struct.pinctrl_pin_desc { i32 110, ptr @.str.111, ptr inttoptr (i32 3277607 to ptr) }, %struct.pinctrl_pin_desc { i32 111, ptr @.str.112, ptr inttoptr (i32 3310383 to ptr) }, %struct.pinctrl_pin_desc { i32 112, ptr @.str.113, ptr inttoptr (i32 83873785 to ptr) }, %struct.pinctrl_pin_desc { i32 113, ptr @.str.114, ptr inttoptr (i32 83873786 to ptr) }, %struct.pinctrl_pin_desc { i32 114, ptr @.str.115, ptr inttoptr (i32 20120375 to ptr) }, %struct.pinctrl_pin_desc { i32 115, ptr @.str.116, ptr inttoptr (i32 20153151 to ptr) }, %struct.pinctrl_pin_desc { i32 116, ptr @.str.117, ptr inttoptr (i32 20185927 to ptr) }, %struct.pinctrl_pin_desc { i32 117, ptr @.str.118, ptr inttoptr (i32 20218703 to ptr) }, %struct.pinctrl_pin_desc { i32 118, ptr @.str.119, ptr inttoptr (i32 20251479 to ptr) }, %struct.pinctrl_pin_desc { i32 119, ptr @.str.120, ptr inttoptr (i32 20284255 to ptr) }, %struct.pinctrl_pin_desc { i32 120, ptr @.str.121, ptr inttoptr (i32 20317024 to ptr) }, %struct.pinctrl_pin_desc { i32 121, ptr @.str.122, ptr inttoptr (i32 20349800 to ptr) }, %struct.pinctrl_pin_desc { i32 122, ptr @.str.123, ptr inttoptr (i32 20382576 to ptr) }, %struct.pinctrl_pin_desc { i32 123, ptr @.str.124, ptr inttoptr (i32 20415352 to ptr) }, %struct.pinctrl_pin_desc { i32 124, ptr @.str.125, ptr inttoptr (i32 20448128 to ptr) }, %struct.pinctrl_pin_desc { i32 125, ptr @.str.126, ptr inttoptr (i32 20480904 to ptr) }, %struct.pinctrl_pin_desc { i32 126, ptr @.str.127, ptr inttoptr (i32 20513680 to ptr) }, %struct.pinctrl_pin_desc { i32 127, ptr @.str.128, ptr inttoptr (i32 20546456 to ptr) }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.129, ptr inttoptr (i32 20579232 to ptr) }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.130, ptr inttoptr (i32 20612008 to ptr) }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.131, ptr inttoptr (i32 20644784 to ptr) }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.132, ptr inttoptr (i32 20677560 to ptr) }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.133, ptr inttoptr (i32 20710336 to ptr) }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.134, ptr inttoptr (i32 20743112 to ptr) }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.135, ptr inttoptr (i32 20775888 to ptr) }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.136, ptr inttoptr (i32 20808664 to ptr) }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.137, ptr inttoptr (i32 20841440 to ptr) }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.138, ptr inttoptr (i32 20874216 to ptr) }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.139, ptr inttoptr (i32 20906992 to ptr) }, %struct.pinctrl_pin_desc { i32 139, ptr @.str.140, ptr inttoptr (i32 20939768 to ptr) }, %struct.pinctrl_pin_desc { i32 140, ptr @.str.141, ptr inttoptr (i32 20972544 to ptr) }, %struct.pinctrl_pin_desc { i32 141, ptr @.str.142, ptr inttoptr (i32 21005320 to ptr) }, %struct.pinctrl_pin_desc { i32 142, ptr @.str.143, ptr inttoptr (i32 21038096 to ptr) }, %struct.pinctrl_pin_desc { i32 143, ptr @.str.144, ptr inttoptr (i32 21070872 to ptr) }, %struct.pinctrl_pin_desc { i32 144, ptr @.str.145, ptr inttoptr (i32 21103648 to ptr) }, %struct.pinctrl_pin_desc { i32 145, ptr @.str.146, ptr inttoptr (i32 21136424 to ptr) }, %struct.pinctrl_pin_desc { i32 146, ptr @.str.147, ptr inttoptr (i32 21169200 to ptr) }, %struct.pinctrl_pin_desc { i32 147, ptr @.str.148, ptr inttoptr (i32 21201976 to ptr) }, %struct.pinctrl_pin_desc { i32 148, ptr @.str.149, ptr inttoptr (i32 21234752 to ptr) }, %struct.pinctrl_pin_desc { i32 149, ptr @.str.150, ptr inttoptr (i32 21267528 to ptr) }, %struct.pinctrl_pin_desc { i32 150, ptr @.str.151, ptr inttoptr (i32 21300311 to ptr) }, %struct.pinctrl_pin_desc { i32 151, ptr @.str.152, ptr inttoptr (i32 21333080 to ptr) }, %struct.pinctrl_pin_desc { i32 152, ptr @.str.153, ptr inttoptr (i32 21365856 to ptr) }, %struct.pinctrl_pin_desc { i32 153, ptr @.str.154, ptr inttoptr (i32 21398632 to ptr) }, %struct.pinctrl_pin_desc { i32 154, ptr @.str.155, ptr inttoptr (i32 21431408 to ptr) }, %struct.pinctrl_pin_desc { i32 155, ptr @.str.156, ptr inttoptr (i32 21464191 to ptr) }, %struct.pinctrl_pin_desc { i32 156, ptr @.str.157, ptr inttoptr (i32 21496960 to ptr) }, %struct.pinctrl_pin_desc { i32 157, ptr @.str.158, ptr inttoptr (i32 21529736 to ptr) }, %struct.pinctrl_pin_desc { i32 158, ptr @.str.159, ptr inttoptr (i32 1016063 to ptr) }, %struct.pinctrl_pin_desc { i32 159, ptr @.str.160, ptr inttoptr (i32 1048839 to ptr) }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.161, ptr inttoptr (i32 17858831 to ptr) }, %struct.pinctrl_pin_desc { i32 161, ptr @.str.162, ptr inttoptr (i32 17891607 to ptr) }, %struct.pinctrl_pin_desc { i32 162, ptr @.str.163, ptr inttoptr (i32 17924383 to ptr) }, %struct.pinctrl_pin_desc { i32 163, ptr @.str.164, ptr inttoptr (i32 1179943 to ptr) }, %struct.pinctrl_pin_desc { i32 164, ptr @.str.165, ptr inttoptr (i32 1212719 to ptr) }, %struct.pinctrl_pin_desc { i32 165, ptr @.str.166, ptr inttoptr (i32 16777223 to ptr) }, %struct.pinctrl_pin_desc { i32 166, ptr @.str.167, ptr inttoptr (i32 16809999 to ptr) }, %struct.pinctrl_pin_desc { i32 167, ptr @.str.168, ptr inttoptr (i32 16842775 to ptr) }, %struct.pinctrl_pin_desc { i32 168, ptr @.str.169, ptr inttoptr (i32 16875551 to ptr) }, %struct.pinctrl_pin_desc { i32 169, ptr @.str.170, ptr inttoptr (i32 16908327 to ptr) }, %struct.pinctrl_pin_desc { i32 170, ptr @.str.171, ptr inttoptr (i32 16941103 to ptr) }, %struct.pinctrl_pin_desc { i32 171, ptr @.str.172, ptr inttoptr (i32 16973879 to ptr) }, %struct.pinctrl_pin_desc { i32 172, ptr @.str.173, ptr inttoptr (i32 17006655 to ptr) }, %struct.pinctrl_pin_desc { i32 173, ptr @.str.174, ptr inttoptr (i32 852183 to ptr) }, %struct.pinctrl_pin_desc { i32 174, ptr @.str.175, ptr inttoptr (i32 983287 to ptr) }], [524 x i8] zeroinitializer }, align 32
@uniphier_ld4_groups = internal constant { [29 x %struct.uniphier_pinctrl_group], [112 x i8] } { [29 x %struct.uniphier_pinctrl_group] [%struct.uniphier_pinctrl_group { ptr @.str.176, ptr @emmc_pins, i32 7, ptr @emmc_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.177, ptr @emmc_dat8_pins, i32 4, ptr @emmc_dat8_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.178, ptr @ether_mii_pins, i32 19, ptr @ether_mii_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.179, ptr @ether_rmii_pins, i32 12, ptr @ether_rmii_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.180, ptr @i2c0_pins, i32 2, ptr @i2c0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.181, ptr @i2c1_pins, i32 2, ptr @i2c1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.182, ptr @i2c2_pins, i32 2, ptr @i2c2_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.183, ptr @i2c3_pins, i32 2, ptr @i2c3_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.184, ptr @nand_pins, i32 15, ptr @nand_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.185, ptr @nand_cs1_pins, i32 2, ptr @nand_cs1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.186, ptr @sd_pins, i32 9, ptr @sd_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.187, ptr @spi0_pins, i32 4, ptr @spi0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.188, ptr @system_bus_pins, i32 14, ptr @system_bus_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.189, ptr @system_bus_cs0_pins, i32 1, ptr @system_bus_cs0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.190, ptr @system_bus_cs1_pins, i32 1, ptr @system_bus_cs1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.191, ptr @system_bus_cs2_pins, i32 1, ptr @system_bus_cs2_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.192, ptr @system_bus_cs3_pins, i32 1, ptr @system_bus_cs3_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.193, ptr @uart0_pins, i32 2, ptr @uart0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.194, ptr @uart0_ctsrts_pins, i32 2, ptr @uart0_ctsrts_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.195, ptr @uart0_modem_pins, i32 1, ptr @uart0_modem_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.196, ptr @uart1_pins, i32 2, ptr @uart1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.197, ptr @uart1b_pins, i32 2, ptr @uart1b_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.198, ptr @uart2_pins, i32 2, ptr @uart2_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.199, ptr @uart3_pins, i32 2, ptr @uart3_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.200, ptr @usb0_pins, i32 2, ptr @usb0_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.201, ptr @usb1_pins, i32 2, ptr @usb1_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.202, ptr @usb2_pins, i32 2, ptr @usb2_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.203, ptr @usb2b_pins, i32 2, ptr @usb2b_muxvals }, %struct.uniphier_pinctrl_group { ptr @.str.204, ptr @gpio_range_pins, i32 136, ptr null }], [112 x i8] zeroinitializer }, align 32
@uniphier_ld4_functions = internal constant { [18 x %struct.uniphier_pinmux_function], [40 x i8] } { [18 x %struct.uniphier_pinmux_function] [%struct.uniphier_pinmux_function { ptr @.str.176, ptr @emmc_groups, i32 2 }, %struct.uniphier_pinmux_function { ptr @.str.178, ptr @ether_mii_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.179, ptr @ether_rmii_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.180, ptr @i2c0_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.181, ptr @i2c1_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.182, ptr @i2c2_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.183, ptr @i2c3_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.184, ptr @nand_groups, i32 2 }, %struct.uniphier_pinmux_function { ptr @.str.186, ptr @sd_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.187, ptr @spi0_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.188, ptr @system_bus_groups, i32 5 }, %struct.uniphier_pinmux_function { ptr @.str.193, ptr @uart0_groups, i32 3 }, %struct.uniphier_pinmux_function { ptr @.str.196, ptr @uart1_groups, i32 2 }, %struct.uniphier_pinmux_function { ptr @.str.198, ptr @uart2_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.199, ptr @uart3_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.200, ptr @usb0_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.201, ptr @usb1_groups, i32 1 }, %struct.uniphier_pinmux_function { ptr @.str.202, ptr @usb2_groups, i32 2 }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EA1\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EA2\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EA3\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EA4\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EA5\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EA6\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EA7\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EA8\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EA9\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EA10\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EA11\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EA12\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EA13\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EA14\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EA15\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ECLK\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XERWE0\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XERWE1\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ES0\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ES1\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ES2\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XERST\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MMCCLK\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MMCCMD\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MMCDAT0\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MMCDAT1\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MMCDAT2\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MMCDAT3\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MMCDAT4\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MMCDAT5\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MMCDAT6\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MMCDAT7\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RMII_RXD0\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RMII_RXD1\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RMII_CRS_DV\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RMII_RXER\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RMII_REFCLK\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RMII_TXD0\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RMII_TXD1\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RMII_TXEN\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MDC\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MDIO\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MDIO_INTL\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PHYRSTL\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDCLK\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SDCMD\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDDAT0\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDDAT1\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDDAT2\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDDAT3\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDCD\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDWP\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SDVOLC\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USB0VBUS\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USB0OD\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USB1VBUS\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USB1OD\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCRESET\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCREG\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCCE2\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCVS1\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCCD2\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCCD1\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCREADY\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCDOE\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCCE1\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCWE\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCOE\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCWAIT\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCIOWR\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCIORD\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HS0DIN0\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HS0DIN1\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HS0DIN2\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HS0DIN3\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HS0DIN4\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HS0DIN5\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HS0DIN6\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HS0DIN7\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HS0BCLKIN\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HS0VALIN\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HS0SYNCIN\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSDOUT0\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSDOUT1\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSDOUT2\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSDOUT3\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSDOUT4\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSDOUT5\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSDOUT6\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSDOUT7\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HSBCLKOUT\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HSVALOUT\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HSSYNCOUT\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AGCI\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AGCR\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AGCBS\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IECOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ASMCK\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ABCKO\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ALRCKO\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ASDOUT0\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ARCOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDA0\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCL0\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SDA1\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCL1\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMDSDA0\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMDSCL0\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMDSDA1\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMDSCL1\00", [24 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SBO0\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SBI0\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HIN\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VIN\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCON0\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCON1\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCON2\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCON3\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCON4\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCON5\00", [26 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCON6\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TCON7\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PWMA\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XIRQ1\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XIRQ2\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XIRQ3\00", [26 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XIRQ4\00", [26 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XIRQ5\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XIRQ6\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XIRQ7\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XIRQ8\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XIRQ9\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XIRQ10\00", [25 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XIRQ11\00", [25 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XIRQ14\00", [25 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT00\00", [25 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT01\00", [25 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT02\00", [25 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT03\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT04\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT05\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT06\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT07\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT10\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT11\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT12\00", [25 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT13\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT14\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT15\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT16\00", [25 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT17\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT20\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT21\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT22\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT23\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT24\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT25\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PORT26\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XNFRE\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XNFWE\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NFALE\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NFCLE\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XNFWP\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XNFCE0\00", [25 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NANDRYBY0\00", [22 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ED0\00", [28 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ED1\00", [28 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ED2\00", [28 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ED3\00", [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ED4\00", [28 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ED5\00", [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ED6\00", [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ED7\00", [28 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ERXW\00", [27 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"XECS1\00", [26 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emmc\00", [27 x i8] zeroinitializer }, align 32
@emmc_pins = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27], [36 x i8] zeroinitializer }, align 32
@emmc_muxvals = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [36 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emmc_dat8\00", [22 x i8] zeroinitializer }, align 32
@emmc_dat8_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 28, i32 29, i32 30, i32 31], [16 x i8] zeroinitializer }, align 32
@emmc_dat8_muxvals = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 1, i32 1, i32 1], [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ether_mii\00", [22 x i8] zeroinitializer }, align 32
@ether_mii_pins = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142], [52 x i8] zeroinitializer }, align 32
@ether_mii_muxvals = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], [52 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ether_rmii\00", [21 x i8] zeroinitializer }, align 32
@ether_rmii_pins = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43], [48 x i8] zeroinitializer }, align 32
@ether_rmii_muxvals = internal constant { [12 x i32], [48 x i8] } zeroinitializer, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@i2c0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 102, i32 103], [24 x i8] zeroinitializer }, align 32
@i2c0_muxvals = internal constant { [2 x i32], [24 x i8] } zeroinitializer, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@i2c1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 104, i32 105], [24 x i8] zeroinitializer }, align 32
@i2c1_muxvals = internal constant { [2 x i32], [24 x i8] } zeroinitializer, align 32
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@i2c2_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 108, i32 109], [24 x i8] zeroinitializer }, align 32
@i2c2_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 2], [24 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@i2c3_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 108, i32 109], [24 x i8] zeroinitializer }, align 32
@i2c3_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 3], [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@nand_pins = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 158, i32 159, i32 160, i32 161, i32 162, i32 163, i32 164], [36 x i8] zeroinitializer }, align 32
@nand_muxvals = internal constant { [15 x i32], [36 x i8] } zeroinitializer, align 32
@.str.185 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nand_cs1\00", [23 x i8] zeroinitializer }, align 32
@nand_cs1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 22, i32 23], [24 x i8] zeroinitializer }, align 32
@nand_cs1_muxvals = internal constant { [2 x i32], [24 x i8] } zeroinitializer, align 32
@.str.186 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sd\00", [29 x i8] zeroinitializer }, align 32
@sd_pins = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52], [60 x i8] zeroinitializer }, align 32
@sd_muxvals = internal constant { [9 x i32], [60 x i8] } zeroinitializer, align 32
@.str.187 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi0\00", [27 x i8] zeroinitializer }, align 32
@spi0_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 135, i32 136, i32 137, i32 138], [16 x i8] zeroinitializer }, align 32
@spi0_muxvals = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 12, i32 12, i32 12], [16 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"system_bus\00", [21 x i8] zeroinitializer }, align 32
@system_bus_pins = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 16, i32 17, i32 18, i32 19, i32 20, i32 165, i32 166, i32 167, i32 168, i32 169, i32 170, i32 171, i32 172, i32 173], [40 x i8] zeroinitializer }, align 32
@system_bus_muxvals = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"system_bus_cs0\00", [17 x i8] zeroinitializer }, align 32
@system_bus_cs0_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 155], [28 x i8] zeroinitializer }, align 32
@system_bus_cs0_muxvals = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"system_bus_cs1\00", [17 x i8] zeroinitializer }, align 32
@system_bus_cs1_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 174], [28 x i8] zeroinitializer }, align 32
@system_bus_cs1_muxvals = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 -1], [28 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"system_bus_cs2\00", [17 x i8] zeroinitializer }, align 32
@system_bus_cs2_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 64], [28 x i8] zeroinitializer }, align 32
@system_bus_cs2_muxvals = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"system_bus_cs3\00", [17 x i8] zeroinitializer }, align 32
@system_bus_cs3_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 156], [28 x i8] zeroinitializer }, align 32
@system_bus_cs3_muxvals = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@uart0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 85, i32 88], [24 x i8] zeroinitializer }, align 32
@uart0_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart0_ctsrts\00", [19 x i8] zeroinitializer }, align 32
@uart0_ctsrts_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 86, i32 89], [24 x i8] zeroinitializer }, align 32
@uart0_ctsrts_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"uart0_modem\00", [20 x i8] zeroinitializer }, align 32
@uart0_modem_pins = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 87], [28 x i8] zeroinitializer }, align 32
@uart0_modem_muxvals = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@uart1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 155, i32 156], [24 x i8] zeroinitializer }, align 32
@uart1_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 13, i32 13], [24 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uart1b\00", [25 x i8] zeroinitializer }, align 32
@uart1b_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 69, i32 70], [24 x i8] zeroinitializer }, align 32
@uart1b_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 23, i32 23], [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@uart2_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 128, i32 129], [24 x i8] zeroinitializer }, align 32
@uart2_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 13, i32 13], [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@uart3_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 110, i32 111], [24 x i8] zeroinitializer }, align 32
@uart3_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb0\00", [27 x i8] zeroinitializer }, align 32
@usb0_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 53, i32 54], [24 x i8] zeroinitializer }, align 32
@usb0_muxvals = internal constant { [2 x i32], [24 x i8] } zeroinitializer, align 32
@.str.201 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb1\00", [27 x i8] zeroinitializer }, align 32
@usb1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 55, i32 56], [24 x i8] zeroinitializer }, align 32
@usb1_muxvals = internal constant { [2 x i32], [24 x i8] } zeroinitializer, align 32
@.str.202 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb2\00", [27 x i8] zeroinitializer }, align 32
@usb2_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 155, i32 156], [24 x i8] zeroinitializer }, align 32
@usb2_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 4], [24 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usb2b\00", [26 x i8] zeroinitializer }, align 32
@usb2b_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 67, i32 68], [24 x i8] zeroinitializer }, align 32
@usb2b_muxvals = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 23, i32 23], [24 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio_range\00", [21 x i8] zeroinitializer }, align 32
@gpio_range_pins = internal constant { [136 x i32], [128 x i8] } { [136 x i32] [i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143, i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156, i32 157, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 120, i32 121, i32 122, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 85, i32 84, i32 59, i32 82, i32 61, i32 64, i32 65, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 89, i32 86, i32 78, i32 79, i32 80, i32 81, i32 60, i32 83, i32 58, i32 57, i32 88, i32 87, i32 77, i32 76, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 6, i32 101, i32 114, i32 115, i32 116, i32 103, i32 108, i32 21, i32 22, i32 23, i32 117, i32 118, i32 119, i32 151, i32 123, i32 124, i32 125, i32 126, i32 127, i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 62, i32 7, i32 134, i32 63], [128 x i8] zeroinitializer }, align 32
@emmc_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.176, ptr @.str.177], [24 x i8] zeroinitializer }, align 32
@ether_mii_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.178], [28 x i8] zeroinitializer }, align 32
@ether_rmii_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.179], [28 x i8] zeroinitializer }, align 32
@i2c0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.180], [28 x i8] zeroinitializer }, align 32
@i2c1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.181], [28 x i8] zeroinitializer }, align 32
@i2c2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.182], [28 x i8] zeroinitializer }, align 32
@i2c3_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.183], [28 x i8] zeroinitializer }, align 32
@nand_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.184, ptr @.str.185], [24 x i8] zeroinitializer }, align 32
@sd_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.186], [28 x i8] zeroinitializer }, align 32
@spi0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.187], [28 x i8] zeroinitializer }, align 32
@system_bus_groups = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192], [44 x i8] zeroinitializer }, align 32
@uart0_groups = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.193, ptr @.str.194, ptr @.str.195], [20 x i8] zeroinitializer }, align 32
@uart1_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.196, ptr @.str.197], [24 x i8] zeroinitializer }, align 32
@uart2_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.198], [28 x i8] zeroinitializer }, align 32
@uart3_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.199], [28 x i8] zeroinitializer }, align 32
@usb0_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.200], [28 x i8] zeroinitializer }, align 32
@usb1_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.201], [28 x i8] zeroinitializer }, align 32
@usb2_groups = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.202, ptr @.str.203], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [40 x i64] [i64 38, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128, i64 129, i64 130, i64 131, i64 132, i64 134, i64 135]
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"uniphier_ld4_pinctrl_driver\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 741, i32 31 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 744, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant [27 x i8] c"uniphier_ld4_pinctrl_match\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 736, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant [21 x i8] c"uniphier_ld4_pindata\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 720, i32 46 }
@___asan_gen_.217 = private unnamed_addr constant [18 x i8] c"uniphier_ld4_pins\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 14, i32 38 }
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c"uniphier_ld4_groups\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 626, i32 44 }
@___asan_gen_.223 = private unnamed_addr constant [23 x i8] c"uniphier_ld4_functions\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 682, i32 46 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 15, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 18, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 21, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 24, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 27, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 30, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 33, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 36, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 39, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 42, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 45, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 48, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 51, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 54, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 57, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 60, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 63, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 66, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 69, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 72, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 75, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 78, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 81, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 84, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 87, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 90, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 93, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 96, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 99, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 102, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 105, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 108, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 111, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 114, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 117, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 120, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 123, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 126, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 129, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 132, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 135, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 138, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 141, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 144, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 147, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 150, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 153, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 156, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 159, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 162, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 165, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 168, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 171, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 174, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 177, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 180, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 183, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 186, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 189, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 192, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 195, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 198, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 201, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 204, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 207, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 210, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 213, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 216, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 219, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 222, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 225, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 228, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 231, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 234, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 237, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 240, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 243, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 246, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 249, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 252, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 255, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 258, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 261, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 264, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 267, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 270, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 273, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 276, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 279, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 282, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 285, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 288, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 291, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 294, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 297, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 300, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 303, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 306, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 309, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 312, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 315, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 318, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 321, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 324, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 327, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 330, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 333, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 336, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 339, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 342, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 345, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 348, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 351, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 354, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 357, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 360, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 363, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 366, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 369, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 372, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 375, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 378, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 381, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 384, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 387, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 390, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 393, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 396, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 399, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 402, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 405, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 408, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 411, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 414, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 417, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 420, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 423, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 426, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 429, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 432, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 435, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 438, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 441, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 444, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 447, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 450, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 453, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 456, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 459, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 462, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 465, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 468, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 471, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 474, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 477, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 480, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 483, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 486, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 489, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 492, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 495, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 498, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 501, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 504, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 507, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 511, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 514, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 517, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 520, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 523, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 526, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 529, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 532, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 535, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 538, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 627, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [10 x i8] c"emmc_pins\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 543, i32 23 }
@___asan_gen_.757 = private unnamed_addr constant [13 x i8] c"emmc_muxvals\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 544, i32 18 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 628, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [15 x i8] c"emmc_dat8_pins\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 545, i32 23 }
@___asan_gen_.766 = private unnamed_addr constant [18 x i8] c"emmc_dat8_muxvals\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 546, i32 18 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 629, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [15 x i8] c"ether_mii_pins\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 547, i32 23 }
@___asan_gen_.775 = private unnamed_addr constant [18 x i8] c"ether_mii_muxvals\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 550, i32 18 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 630, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [16 x i8] c"ether_rmii_pins\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 552, i32 23 }
@___asan_gen_.784 = private unnamed_addr constant [19 x i8] c"ether_rmii_muxvals\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 554, i32 18 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 631, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant [10 x i8] c"i2c0_pins\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 555, i32 23 }
@___asan_gen_.793 = private unnamed_addr constant [13 x i8] c"i2c0_muxvals\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 556, i32 18 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 632, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant [10 x i8] c"i2c1_pins\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 557, i32 23 }
@___asan_gen_.802 = private unnamed_addr constant [13 x i8] c"i2c1_muxvals\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 558, i32 18 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 633, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [10 x i8] c"i2c2_pins\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 559, i32 23 }
@___asan_gen_.811 = private unnamed_addr constant [13 x i8] c"i2c2_muxvals\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 560, i32 18 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 634, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant [10 x i8] c"i2c3_pins\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 561, i32 23 }
@___asan_gen_.820 = private unnamed_addr constant [13 x i8] c"i2c3_muxvals\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 562, i32 18 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 635, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant [10 x i8] c"nand_pins\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 563, i32 23 }
@___asan_gen_.829 = private unnamed_addr constant [13 x i8] c"nand_muxvals\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 565, i32 18 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 636, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [14 x i8] c"nand_cs1_pins\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 566, i32 23 }
@___asan_gen_.838 = private unnamed_addr constant [17 x i8] c"nand_cs1_muxvals\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 567, i32 18 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 637, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant [8 x i8] c"sd_pins\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 568, i32 23 }
@___asan_gen_.847 = private unnamed_addr constant [11 x i8] c"sd_muxvals\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 569, i32 18 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 638, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant [10 x i8] c"spi0_pins\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 570, i32 23 }
@___asan_gen_.856 = private unnamed_addr constant [13 x i8] c"spi0_muxvals\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 571, i32 18 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 639, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant [16 x i8] c"system_bus_pins\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 572, i32 23 }
@___asan_gen_.865 = private unnamed_addr constant [19 x i8] c"system_bus_muxvals\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 574, i32 18 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 640, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [20 x i8] c"system_bus_cs0_pins\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 576, i32 23 }
@___asan_gen_.874 = private unnamed_addr constant [23 x i8] c"system_bus_cs0_muxvals\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 577, i32 18 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 641, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant [20 x i8] c"system_bus_cs1_pins\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 578, i32 23 }
@___asan_gen_.883 = private unnamed_addr constant [23 x i8] c"system_bus_cs1_muxvals\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 579, i32 18 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 642, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant [20 x i8] c"system_bus_cs2_pins\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 580, i32 23 }
@___asan_gen_.892 = private unnamed_addr constant [23 x i8] c"system_bus_cs2_muxvals\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 581, i32 18 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 643, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant [20 x i8] c"system_bus_cs3_pins\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 582, i32 23 }
@___asan_gen_.901 = private unnamed_addr constant [23 x i8] c"system_bus_cs3_muxvals\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 583, i32 18 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 644, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [11 x i8] c"uart0_pins\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 584, i32 23 }
@___asan_gen_.910 = private unnamed_addr constant [14 x i8] c"uart0_muxvals\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 585, i32 18 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 645, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant [18 x i8] c"uart0_ctsrts_pins\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 586, i32 23 }
@___asan_gen_.919 = private unnamed_addr constant [21 x i8] c"uart0_ctsrts_muxvals\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 587, i32 18 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 646, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant [17 x i8] c"uart0_modem_pins\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 588, i32 23 }
@___asan_gen_.928 = private unnamed_addr constant [20 x i8] c"uart0_modem_muxvals\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 589, i32 18 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 647, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant [11 x i8] c"uart1_pins\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 590, i32 23 }
@___asan_gen_.937 = private unnamed_addr constant [14 x i8] c"uart1_muxvals\00", align 1
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 591, i32 18 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 648, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant [12 x i8] c"uart1b_pins\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 592, i32 23 }
@___asan_gen_.946 = private unnamed_addr constant [15 x i8] c"uart1b_muxvals\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 593, i32 18 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 649, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant [11 x i8] c"uart2_pins\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 594, i32 23 }
@___asan_gen_.955 = private unnamed_addr constant [14 x i8] c"uart2_muxvals\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 595, i32 18 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 650, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant [11 x i8] c"uart3_pins\00", align 1
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 596, i32 23 }
@___asan_gen_.964 = private unnamed_addr constant [14 x i8] c"uart3_muxvals\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 597, i32 18 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 651, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant [10 x i8] c"usb0_pins\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 598, i32 23 }
@___asan_gen_.973 = private unnamed_addr constant [13 x i8] c"usb0_muxvals\00", align 1
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 599, i32 18 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 652, i32 2 }
@___asan_gen_.979 = private unnamed_addr constant [10 x i8] c"usb1_pins\00", align 1
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 600, i32 23 }
@___asan_gen_.982 = private unnamed_addr constant [13 x i8] c"usb1_muxvals\00", align 1
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 601, i32 18 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 653, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant [10 x i8] c"usb2_pins\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 602, i32 23 }
@___asan_gen_.991 = private unnamed_addr constant [13 x i8] c"usb2_muxvals\00", align 1
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 603, i32 18 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 654, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant [11 x i8] c"usb2b_pins\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 604, i32 23 }
@___asan_gen_.1000 = private unnamed_addr constant [14 x i8] c"usb2b_muxvals\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 605, i32 18 }
@___asan_gen_.1003 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 655, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant [16 x i8] c"gpio_range_pins\00", align 1
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 606, i32 27 }
@___asan_gen_.1009 = private unnamed_addr constant [12 x i8] c"emmc_groups\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 658, i32 27 }
@___asan_gen_.1012 = private unnamed_addr constant [17 x i8] c"ether_mii_groups\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 659, i32 27 }
@___asan_gen_.1015 = private unnamed_addr constant [18 x i8] c"ether_rmii_groups\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 660, i32 27 }
@___asan_gen_.1018 = private unnamed_addr constant [12 x i8] c"i2c0_groups\00", align 1
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 661, i32 27 }
@___asan_gen_.1021 = private unnamed_addr constant [12 x i8] c"i2c1_groups\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 662, i32 27 }
@___asan_gen_.1024 = private unnamed_addr constant [12 x i8] c"i2c2_groups\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 663, i32 27 }
@___asan_gen_.1027 = private unnamed_addr constant [12 x i8] c"i2c3_groups\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 664, i32 27 }
@___asan_gen_.1030 = private unnamed_addr constant [12 x i8] c"nand_groups\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 665, i32 27 }
@___asan_gen_.1033 = private unnamed_addr constant [10 x i8] c"sd_groups\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 666, i32 27 }
@___asan_gen_.1036 = private unnamed_addr constant [12 x i8] c"spi0_groups\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 667, i32 27 }
@___asan_gen_.1039 = private unnamed_addr constant [18 x i8] c"system_bus_groups\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 668, i32 27 }
@___asan_gen_.1042 = private unnamed_addr constant [13 x i8] c"uart0_groups\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 673, i32 27 }
@___asan_gen_.1045 = private unnamed_addr constant [13 x i8] c"uart1_groups\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 675, i32 27 }
@___asan_gen_.1048 = private unnamed_addr constant [13 x i8] c"uart2_groups\00", align 1
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 676, i32 27 }
@___asan_gen_.1051 = private unnamed_addr constant [13 x i8] c"uart3_groups\00", align 1
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 677, i32 27 }
@___asan_gen_.1054 = private unnamed_addr constant [12 x i8] c"usb0_groups\00", align 1
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 678, i32 27 }
@___asan_gen_.1057 = private unnamed_addr constant [12 x i8] c"usb1_groups\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 679, i32 27 }
@___asan_gen_.1060 = private unnamed_addr constant [12 x i8] c"usb2_groups\00", align 1
@___asan_gen_.1061 = private constant [51 x i8] c"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c\00", align 1
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1061, i32 680, i32 27 }
@llvm.compiler.used = appending global [287 x ptr] [ptr @__initcall__kmod_pinctrl_uniphier_ld4__210_749_uniphier_ld4_pinctrl_driver_init6, ptr @uniphier_ld4_pinctrl_driver, ptr @.str, ptr @uniphier_ld4_pinctrl_match, ptr @uniphier_ld4_pindata, ptr @uniphier_ld4_pins, ptr @uniphier_ld4_groups, ptr @uniphier_ld4_functions, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @emmc_pins, ptr @emmc_muxvals, ptr @.str.177, ptr @emmc_dat8_pins, ptr @emmc_dat8_muxvals, ptr @.str.178, ptr @ether_mii_pins, ptr @ether_mii_muxvals, ptr @.str.179, ptr @ether_rmii_pins, ptr @ether_rmii_muxvals, ptr @.str.180, ptr @i2c0_pins, ptr @i2c0_muxvals, ptr @.str.181, ptr @i2c1_pins, ptr @i2c1_muxvals, ptr @.str.182, ptr @i2c2_pins, ptr @i2c2_muxvals, ptr @.str.183, ptr @i2c3_pins, ptr @i2c3_muxvals, ptr @.str.184, ptr @nand_pins, ptr @nand_muxvals, ptr @.str.185, ptr @nand_cs1_pins, ptr @nand_cs1_muxvals, ptr @.str.186, ptr @sd_pins, ptr @sd_muxvals, ptr @.str.187, ptr @spi0_pins, ptr @spi0_muxvals, ptr @.str.188, ptr @system_bus_pins, ptr @system_bus_muxvals, ptr @.str.189, ptr @system_bus_cs0_pins, ptr @system_bus_cs0_muxvals, ptr @.str.190, ptr @system_bus_cs1_pins, ptr @system_bus_cs1_muxvals, ptr @.str.191, ptr @system_bus_cs2_pins, ptr @system_bus_cs2_muxvals, ptr @.str.192, ptr @system_bus_cs3_pins, ptr @system_bus_cs3_muxvals, ptr @.str.193, ptr @uart0_pins, ptr @uart0_muxvals, ptr @.str.194, ptr @uart0_ctsrts_pins, ptr @uart0_ctsrts_muxvals, ptr @.str.195, ptr @uart0_modem_pins, ptr @uart0_modem_muxvals, ptr @.str.196, ptr @uart1_pins, ptr @uart1_muxvals, ptr @.str.197, ptr @uart1b_pins, ptr @uart1b_muxvals, ptr @.str.198, ptr @uart2_pins, ptr @uart2_muxvals, ptr @.str.199, ptr @uart3_pins, ptr @uart3_muxvals, ptr @.str.200, ptr @usb0_pins, ptr @usb0_muxvals, ptr @.str.201, ptr @usb1_pins, ptr @usb1_muxvals, ptr @.str.202, ptr @usb2_pins, ptr @usb2_muxvals, ptr @.str.203, ptr @usb2b_pins, ptr @usb2b_muxvals, ptr @.str.204, ptr @gpio_range_pins, ptr @emmc_groups, ptr @ether_mii_groups, ptr @ether_rmii_groups, ptr @i2c0_groups, ptr @i2c1_groups, ptr @i2c2_groups, ptr @i2c3_groups, ptr @nand_groups, ptr @sd_groups, ptr @spi0_groups, ptr @system_bus_groups, ptr @uart0_groups, ptr @uart1_groups, ptr @uart2_groups, ptr @uart3_groups, ptr @usb0_groups, ptr @usb1_groups, ptr @usb2_groups], section "llvm.metadata"
@0 = internal global [286 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_pinctrl_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_pindata to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_pins to i32), i32 2100, i32 2624, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_groups to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_functions to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_pins to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_muxvals to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_dat8_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_dat8_muxvals to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_mii_pins to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_mii_muxvals to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_rmii_pins to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_rmii_muxvals to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c0_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c2_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c3_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c3_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_pins to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_muxvals to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_cs1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_cs1_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pins to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_muxvals to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_muxvals to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_pins to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_muxvals to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_cs0_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_cs0_muxvals to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_cs1_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_cs1_muxvals to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_cs2_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_cs2_muxvals to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_cs3_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_cs3_muxvals to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_ctsrts_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_ctsrts_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_modem_pins to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_modem_muxvals to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1b_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1b_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb0_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb0_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb1_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2b_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2b_muxvals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_range_pins to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_mii_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_rmii_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c3_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_bus_groups to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart0_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart1_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart2_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart3_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb0_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb1_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ld4_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_ld4_pinctrl_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_ld4_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @uniphier_pinctrl_probe(ptr noundef %pdev, ptr noundef nonnull @uniphier_ld4_pindata) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uniphier_pinctrl_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uniphier_ld4_get_gpio_muxval(i32 noundef %pin, i32 noundef %gpio_offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %gpio_offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %gpio_offset, label %sw.default [
    i32 134, label %entry.return_crit_edge
    i32 121, label %entry.return_crit_edge4
    i32 122, label %entry.return_crit_edge5
    i32 123, label %entry.return_crit_edge6
    i32 124, label %entry.return_crit_edge7
    i32 125, label %entry.return_crit_edge8
    i32 126, label %entry.return_crit_edge9
    i32 127, label %entry.return_crit_edge10
    i32 128, label %entry.return_crit_edge11
    i32 129, label %entry.return_crit_edge12
    i32 130, label %entry.return_crit_edge13
    i32 131, label %entry.return_crit_edge14
    i32 0, label %entry.return_crit_edge15
    i32 1, label %entry.return_crit_edge16
    i32 2, label %entry.return_crit_edge17
    i32 3, label %entry.return_crit_edge18
    i32 4, label %entry.return_crit_edge19
    i32 5, label %entry.return_crit_edge20
    i32 6, label %entry.return_crit_edge21
    i32 7, label %entry.return_crit_edge22
    i32 8, label %entry.return_crit_edge23
    i32 9, label %entry.return_crit_edge24
    i32 10, label %entry.return_crit_edge25
    i32 11, label %entry.return_crit_edge26
    i32 12, label %entry.return_crit_edge27
    i32 13, label %entry.return_crit_edge28
    i32 14, label %entry.return_crit_edge29
    i32 15, label %entry.return_crit_edge30
    i32 16, label %entry.return_crit_edge31
    i32 17, label %entry.return_crit_edge32
    i32 18, label %entry.return_crit_edge33
    i32 19, label %entry.return_crit_edge34
    i32 20, label %entry.return_crit_edge35
    i32 21, label %entry.return_crit_edge36
    i32 22, label %entry.return_crit_edge37
    i32 120, label %entry.sw.bb3_crit_edge
    i32 132, label %entry.sw.bb3_crit_edge38
    i32 135, label %entry.sw.bb3_crit_edge39
  ]

entry.sw.bb3_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge38, %entry.sw.bb3_crit_edge39
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37
  %retval.0 = phi i32 [ 15, %sw.default ], [ 14, %sw.bb3 ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge4 ], [ 0, %entry.return_crit_edge5 ], [ 0, %entry.return_crit_edge6 ], [ 0, %entry.return_crit_edge7 ], [ 0, %entry.return_crit_edge8 ], [ 0, %entry.return_crit_edge9 ], [ 0, %entry.return_crit_edge10 ], [ 0, %entry.return_crit_edge11 ], [ 0, %entry.return_crit_edge12 ], [ 0, %entry.return_crit_edge13 ], [ 0, %entry.return_crit_edge14 ], [ 0, %entry.return_crit_edge15 ], [ 0, %entry.return_crit_edge16 ], [ 0, %entry.return_crit_edge17 ], [ 0, %entry.return_crit_edge18 ], [ 0, %entry.return_crit_edge19 ], [ 0, %entry.return_crit_edge20 ], [ 0, %entry.return_crit_edge21 ], [ 0, %entry.return_crit_edge22 ], [ 0, %entry.return_crit_edge23 ], [ 0, %entry.return_crit_edge24 ], [ 0, %entry.return_crit_edge25 ], [ 0, %entry.return_crit_edge26 ], [ 0, %entry.return_crit_edge27 ], [ 0, %entry.return_crit_edge28 ], [ 0, %entry.return_crit_edge29 ], [ 0, %entry.return_crit_edge30 ], [ 0, %entry.return_crit_edge31 ], [ 0, %entry.return_crit_edge32 ], [ 0, %entry.return_crit_edge33 ], [ 0, %entry.return_crit_edge34 ], [ 0, %entry.return_crit_edge35 ], [ 0, %entry.return_crit_edge36 ], [ 0, %entry.return_crit_edge37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 286)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 286)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572}
!llvm.module.flags = !{!574, !575, !576, !577, !578, !579, !580, !581}
!llvm.ident = !{!582}

!0 = !{ptr @__initcall__kmod_pinctrl_uniphier_ld4__210_749_uniphier_ld4_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_uniphier_ld4__210_749_uniphier_ld4_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 749, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 744, i32 11}
!4 = !{ptr @uniphier_ld4_pinctrl_driver, !5, !"uniphier_ld4_pinctrl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 741, i32 31}
!6 = !{ptr @uniphier_ld4_pindata, !7, !"uniphier_ld4_pindata", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 720, i32 46}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 15, i32 2}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 18, i32 2}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 21, i32 2}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 24, i32 2}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 27, i32 2}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 30, i32 2}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 33, i32 2}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 36, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 39, i32 2}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 42, i32 2}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 45, i32 2}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 48, i32 2}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 51, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 54, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 57, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 60, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 63, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 66, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 69, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 72, i32 2}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 75, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 78, i32 2}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 81, i32 2}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 84, i32 2}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 87, i32 2}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 90, i32 2}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 93, i32 2}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 96, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 99, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 102, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 105, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 108, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 111, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 114, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 117, i32 2}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 120, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 123, i32 2}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 126, i32 2}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 129, i32 2}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 132, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 135, i32 2}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 138, i32 2}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 141, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 144, i32 2}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 147, i32 2}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 150, i32 2}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 153, i32 2}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 156, i32 2}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 159, i32 2}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 162, i32 2}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 165, i32 2}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 168, i32 2}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 171, i32 2}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 174, i32 2}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 177, i32 2}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 180, i32 2}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 183, i32 2}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 186, i32 2}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 189, i32 2}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 192, i32 2}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 195, i32 2}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 198, i32 2}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 201, i32 2}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 204, i32 2}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 207, i32 2}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 210, i32 2}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 213, i32 2}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 216, i32 2}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 219, i32 2}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 222, i32 2}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 225, i32 2}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 228, i32 2}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 231, i32 2}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 234, i32 2}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 237, i32 2}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 240, i32 2}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 243, i32 2}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 246, i32 2}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 249, i32 2}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 252, i32 2}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 255, i32 2}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 258, i32 2}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 261, i32 2}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 264, i32 2}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 267, i32 2}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 270, i32 2}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 273, i32 2}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 276, i32 2}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 279, i32 2}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 282, i32 2}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 285, i32 2}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 288, i32 2}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 291, i32 2}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 294, i32 2}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 297, i32 2}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 300, i32 2}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 303, i32 2}
!202 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 306, i32 2}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 309, i32 2}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 312, i32 2}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 315, i32 2}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 318, i32 2}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 321, i32 2}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 324, i32 2}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 327, i32 2}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 330, i32 2}
!220 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 333, i32 2}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 336, i32 2}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 339, i32 2}
!226 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 342, i32 2}
!228 = !{ptr @.str.111, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 345, i32 2}
!230 = !{ptr @.str.112, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 348, i32 2}
!232 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 351, i32 2}
!234 = !{ptr @.str.114, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 354, i32 2}
!236 = !{ptr @.str.115, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 357, i32 2}
!238 = !{ptr @.str.116, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 360, i32 2}
!240 = !{ptr @.str.117, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 363, i32 2}
!242 = !{ptr @.str.118, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 366, i32 2}
!244 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 369, i32 2}
!246 = !{ptr @.str.120, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 372, i32 2}
!248 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 375, i32 2}
!250 = !{ptr @.str.122, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 378, i32 2}
!252 = !{ptr @.str.123, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 381, i32 2}
!254 = !{ptr @.str.124, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 384, i32 2}
!256 = !{ptr @.str.125, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 387, i32 2}
!258 = !{ptr @.str.126, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 390, i32 2}
!260 = !{ptr @.str.127, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 393, i32 2}
!262 = !{ptr @.str.128, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 396, i32 2}
!264 = !{ptr @.str.129, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 399, i32 2}
!266 = !{ptr @.str.130, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 402, i32 2}
!268 = !{ptr @.str.131, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 405, i32 2}
!270 = !{ptr @.str.132, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 408, i32 2}
!272 = !{ptr @.str.133, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 411, i32 2}
!274 = !{ptr @.str.134, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 414, i32 2}
!276 = !{ptr @.str.135, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 417, i32 2}
!278 = !{ptr @.str.136, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 420, i32 2}
!280 = !{ptr @.str.137, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 423, i32 2}
!282 = !{ptr @.str.138, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 426, i32 2}
!284 = !{ptr @.str.139, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 429, i32 2}
!286 = !{ptr @.str.140, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 432, i32 2}
!288 = !{ptr @.str.141, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 435, i32 2}
!290 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 438, i32 2}
!292 = !{ptr @.str.143, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 441, i32 2}
!294 = !{ptr @.str.144, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 444, i32 2}
!296 = !{ptr @.str.145, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 447, i32 2}
!298 = !{ptr @.str.146, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 450, i32 2}
!300 = !{ptr @.str.147, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 453, i32 2}
!302 = !{ptr @.str.148, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 456, i32 2}
!304 = !{ptr @.str.149, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 459, i32 2}
!306 = !{ptr @.str.150, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 462, i32 2}
!308 = !{ptr @.str.151, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 465, i32 2}
!310 = !{ptr @.str.152, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 468, i32 2}
!312 = !{ptr @.str.153, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 471, i32 2}
!314 = !{ptr @.str.154, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 474, i32 2}
!316 = !{ptr @.str.155, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 477, i32 2}
!318 = !{ptr @.str.156, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 480, i32 2}
!320 = !{ptr @.str.157, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 483, i32 2}
!322 = !{ptr @.str.158, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 486, i32 2}
!324 = !{ptr @.str.159, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 489, i32 2}
!326 = !{ptr @.str.160, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 492, i32 2}
!328 = !{ptr @.str.161, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 495, i32 2}
!330 = !{ptr @.str.162, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 498, i32 2}
!332 = !{ptr @.str.163, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 501, i32 2}
!334 = !{ptr @.str.164, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 504, i32 2}
!336 = !{ptr @.str.165, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 507, i32 2}
!338 = !{ptr @.str.166, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 511, i32 2}
!340 = !{ptr @.str.167, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 514, i32 2}
!342 = !{ptr @.str.168, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 517, i32 2}
!344 = !{ptr @.str.169, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 520, i32 2}
!346 = !{ptr @.str.170, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 523, i32 2}
!348 = !{ptr @.str.171, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 526, i32 2}
!350 = !{ptr @.str.172, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 529, i32 2}
!352 = !{ptr @.str.173, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 532, i32 2}
!354 = !{ptr @.str.174, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 535, i32 2}
!356 = !{ptr @.str.175, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 538, i32 2}
!358 = !{ptr @uniphier_ld4_pins, !359, !"uniphier_ld4_pins", i1 false, i1 false}
!359 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 14, i32 38}
!360 = !{ptr @.str.176, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 627, i32 2}
!362 = !{ptr @.str.177, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 628, i32 2}
!364 = !{ptr @.str.178, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 629, i32 2}
!366 = !{ptr @.str.179, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 630, i32 2}
!368 = !{ptr @.str.180, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 631, i32 2}
!370 = !{ptr @.str.181, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 632, i32 2}
!372 = !{ptr @.str.182, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 633, i32 2}
!374 = !{ptr @.str.183, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 634, i32 2}
!376 = !{ptr @.str.184, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 635, i32 2}
!378 = !{ptr @.str.185, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 636, i32 2}
!380 = !{ptr @.str.186, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 637, i32 2}
!382 = !{ptr @.str.187, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 638, i32 2}
!384 = !{ptr @.str.188, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 639, i32 2}
!386 = !{ptr @.str.189, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 640, i32 2}
!388 = !{ptr @.str.190, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 641, i32 2}
!390 = !{ptr @.str.191, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 642, i32 2}
!392 = !{ptr @.str.192, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 643, i32 2}
!394 = !{ptr @.str.193, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 644, i32 2}
!396 = !{ptr @.str.194, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 645, i32 2}
!398 = !{ptr @.str.195, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 646, i32 2}
!400 = !{ptr @.str.196, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 647, i32 2}
!402 = !{ptr @.str.197, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 648, i32 2}
!404 = !{ptr @.str.198, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 649, i32 2}
!406 = !{ptr @.str.199, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 650, i32 2}
!408 = !{ptr @.str.200, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 651, i32 2}
!410 = !{ptr @.str.201, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 652, i32 2}
!412 = !{ptr @.str.202, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 653, i32 2}
!414 = !{ptr @.str.203, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 654, i32 2}
!416 = !{ptr @.str.204, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 655, i32 2}
!418 = !{ptr @uniphier_ld4_groups, !419, !"uniphier_ld4_groups", i1 false, i1 false}
!419 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 626, i32 44}
!420 = !{ptr @emmc_pins, !421, !"emmc_pins", i1 false, i1 false}
!421 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 543, i32 23}
!422 = !{ptr @emmc_muxvals, !423, !"emmc_muxvals", i1 false, i1 false}
!423 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 544, i32 18}
!424 = !{ptr @emmc_dat8_pins, !425, !"emmc_dat8_pins", i1 false, i1 false}
!425 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 545, i32 23}
!426 = !{ptr @emmc_dat8_muxvals, !427, !"emmc_dat8_muxvals", i1 false, i1 false}
!427 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 546, i32 18}
!428 = !{ptr @ether_mii_pins, !429, !"ether_mii_pins", i1 false, i1 false}
!429 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 547, i32 23}
!430 = !{ptr @ether_mii_muxvals, !431, !"ether_mii_muxvals", i1 false, i1 false}
!431 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 550, i32 18}
!432 = !{ptr @ether_rmii_pins, !433, !"ether_rmii_pins", i1 false, i1 false}
!433 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 552, i32 23}
!434 = !{ptr @ether_rmii_muxvals, !435, !"ether_rmii_muxvals", i1 false, i1 false}
!435 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 554, i32 18}
!436 = !{ptr @i2c0_pins, !437, !"i2c0_pins", i1 false, i1 false}
!437 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 555, i32 23}
!438 = !{ptr @i2c0_muxvals, !439, !"i2c0_muxvals", i1 false, i1 false}
!439 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 556, i32 18}
!440 = !{ptr @i2c1_pins, !441, !"i2c1_pins", i1 false, i1 false}
!441 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 557, i32 23}
!442 = !{ptr @i2c1_muxvals, !443, !"i2c1_muxvals", i1 false, i1 false}
!443 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 558, i32 18}
!444 = !{ptr @i2c2_pins, !445, !"i2c2_pins", i1 false, i1 false}
!445 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 559, i32 23}
!446 = !{ptr @i2c2_muxvals, !447, !"i2c2_muxvals", i1 false, i1 false}
!447 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 560, i32 18}
!448 = !{ptr @i2c3_pins, !449, !"i2c3_pins", i1 false, i1 false}
!449 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 561, i32 23}
!450 = !{ptr @i2c3_muxvals, !451, !"i2c3_muxvals", i1 false, i1 false}
!451 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 562, i32 18}
!452 = !{ptr @nand_pins, !453, !"nand_pins", i1 false, i1 false}
!453 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 563, i32 23}
!454 = !{ptr @nand_muxvals, !455, !"nand_muxvals", i1 false, i1 false}
!455 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 565, i32 18}
!456 = !{ptr @nand_cs1_pins, !457, !"nand_cs1_pins", i1 false, i1 false}
!457 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 566, i32 23}
!458 = !{ptr @nand_cs1_muxvals, !459, !"nand_cs1_muxvals", i1 false, i1 false}
!459 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 567, i32 18}
!460 = !{ptr @sd_pins, !461, !"sd_pins", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 568, i32 23}
!462 = !{ptr @sd_muxvals, !463, !"sd_muxvals", i1 false, i1 false}
!463 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 569, i32 18}
!464 = !{ptr @spi0_pins, !465, !"spi0_pins", i1 false, i1 false}
!465 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 570, i32 23}
!466 = !{ptr @spi0_muxvals, !467, !"spi0_muxvals", i1 false, i1 false}
!467 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 571, i32 18}
!468 = !{ptr @system_bus_pins, !469, !"system_bus_pins", i1 false, i1 false}
!469 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 572, i32 23}
!470 = !{ptr @system_bus_muxvals, !471, !"system_bus_muxvals", i1 false, i1 false}
!471 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 574, i32 18}
!472 = !{ptr @system_bus_cs0_pins, !473, !"system_bus_cs0_pins", i1 false, i1 false}
!473 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 576, i32 23}
!474 = !{ptr @system_bus_cs0_muxvals, !475, !"system_bus_cs0_muxvals", i1 false, i1 false}
!475 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 577, i32 18}
!476 = !{ptr @system_bus_cs1_pins, !477, !"system_bus_cs1_pins", i1 false, i1 false}
!477 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 578, i32 23}
!478 = !{ptr @system_bus_cs1_muxvals, !479, !"system_bus_cs1_muxvals", i1 false, i1 false}
!479 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 579, i32 18}
!480 = !{ptr @system_bus_cs2_pins, !481, !"system_bus_cs2_pins", i1 false, i1 false}
!481 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 580, i32 23}
!482 = !{ptr @system_bus_cs2_muxvals, !483, !"system_bus_cs2_muxvals", i1 false, i1 false}
!483 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 581, i32 18}
!484 = !{ptr @system_bus_cs3_pins, !485, !"system_bus_cs3_pins", i1 false, i1 false}
!485 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 582, i32 23}
!486 = !{ptr @system_bus_cs3_muxvals, !487, !"system_bus_cs3_muxvals", i1 false, i1 false}
!487 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 583, i32 18}
!488 = !{ptr @uart0_pins, !489, !"uart0_pins", i1 false, i1 false}
!489 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 584, i32 23}
!490 = !{ptr @uart0_muxvals, !491, !"uart0_muxvals", i1 false, i1 false}
!491 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 585, i32 18}
!492 = !{ptr @uart0_ctsrts_pins, !493, !"uart0_ctsrts_pins", i1 false, i1 false}
!493 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 586, i32 23}
!494 = !{ptr @uart0_ctsrts_muxvals, !495, !"uart0_ctsrts_muxvals", i1 false, i1 false}
!495 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 587, i32 18}
!496 = !{ptr @uart0_modem_pins, !497, !"uart0_modem_pins", i1 false, i1 false}
!497 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 588, i32 23}
!498 = !{ptr @uart0_modem_muxvals, !499, !"uart0_modem_muxvals", i1 false, i1 false}
!499 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 589, i32 18}
!500 = !{ptr @uart1_pins, !501, !"uart1_pins", i1 false, i1 false}
!501 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 590, i32 23}
!502 = !{ptr @uart1_muxvals, !503, !"uart1_muxvals", i1 false, i1 false}
!503 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 591, i32 18}
!504 = !{ptr @uart1b_pins, !505, !"uart1b_pins", i1 false, i1 false}
!505 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 592, i32 23}
!506 = !{ptr @uart1b_muxvals, !507, !"uart1b_muxvals", i1 false, i1 false}
!507 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 593, i32 18}
!508 = !{ptr @uart2_pins, !509, !"uart2_pins", i1 false, i1 false}
!509 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 594, i32 23}
!510 = !{ptr @uart2_muxvals, !511, !"uart2_muxvals", i1 false, i1 false}
!511 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 595, i32 18}
!512 = !{ptr @uart3_pins, !513, !"uart3_pins", i1 false, i1 false}
!513 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 596, i32 23}
!514 = !{ptr @uart3_muxvals, !515, !"uart3_muxvals", i1 false, i1 false}
!515 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 597, i32 18}
!516 = !{ptr @usb0_pins, !517, !"usb0_pins", i1 false, i1 false}
!517 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 598, i32 23}
!518 = !{ptr @usb0_muxvals, !519, !"usb0_muxvals", i1 false, i1 false}
!519 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 599, i32 18}
!520 = !{ptr @usb1_pins, !521, !"usb1_pins", i1 false, i1 false}
!521 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 600, i32 23}
!522 = !{ptr @usb1_muxvals, !523, !"usb1_muxvals", i1 false, i1 false}
!523 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 601, i32 18}
!524 = !{ptr @usb2_pins, !525, !"usb2_pins", i1 false, i1 false}
!525 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 602, i32 23}
!526 = !{ptr @usb2_muxvals, !527, !"usb2_muxvals", i1 false, i1 false}
!527 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 603, i32 18}
!528 = !{ptr @usb2b_pins, !529, !"usb2b_pins", i1 false, i1 false}
!529 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 604, i32 23}
!530 = !{ptr @usb2b_muxvals, !531, !"usb2b_muxvals", i1 false, i1 false}
!531 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 605, i32 18}
!532 = !{ptr @gpio_range_pins, !533, !"gpio_range_pins", i1 false, i1 false}
!533 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 606, i32 27}
!534 = !{ptr @uniphier_ld4_functions, !535, !"uniphier_ld4_functions", i1 false, i1 false}
!535 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 682, i32 46}
!536 = !{ptr @emmc_groups, !537, !"emmc_groups", i1 false, i1 false}
!537 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 658, i32 27}
!538 = !{ptr @ether_mii_groups, !539, !"ether_mii_groups", i1 false, i1 false}
!539 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 659, i32 27}
!540 = !{ptr @ether_rmii_groups, !541, !"ether_rmii_groups", i1 false, i1 false}
!541 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 660, i32 27}
!542 = !{ptr @i2c0_groups, !543, !"i2c0_groups", i1 false, i1 false}
!543 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 661, i32 27}
!544 = !{ptr @i2c1_groups, !545, !"i2c1_groups", i1 false, i1 false}
!545 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 662, i32 27}
!546 = !{ptr @i2c2_groups, !547, !"i2c2_groups", i1 false, i1 false}
!547 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 663, i32 27}
!548 = !{ptr @i2c3_groups, !549, !"i2c3_groups", i1 false, i1 false}
!549 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 664, i32 27}
!550 = !{ptr @nand_groups, !551, !"nand_groups", i1 false, i1 false}
!551 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 665, i32 27}
!552 = !{ptr @sd_groups, !553, !"sd_groups", i1 false, i1 false}
!553 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 666, i32 27}
!554 = !{ptr @spi0_groups, !555, !"spi0_groups", i1 false, i1 false}
!555 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 667, i32 27}
!556 = !{ptr @system_bus_groups, !557, !"system_bus_groups", i1 false, i1 false}
!557 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 668, i32 27}
!558 = !{ptr @uart0_groups, !559, !"uart0_groups", i1 false, i1 false}
!559 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 673, i32 27}
!560 = !{ptr @uart1_groups, !561, !"uart1_groups", i1 false, i1 false}
!561 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 675, i32 27}
!562 = !{ptr @uart2_groups, !563, !"uart2_groups", i1 false, i1 false}
!563 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 676, i32 27}
!564 = !{ptr @uart3_groups, !565, !"uart3_groups", i1 false, i1 false}
!565 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 677, i32 27}
!566 = !{ptr @usb0_groups, !567, !"usb0_groups", i1 false, i1 false}
!567 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 678, i32 27}
!568 = !{ptr @usb1_groups, !569, !"usb1_groups", i1 false, i1 false}
!569 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 679, i32 27}
!570 = !{ptr @usb2_groups, !571, !"usb2_groups", i1 false, i1 false}
!571 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 680, i32 27}
!572 = !{ptr @uniphier_ld4_pinctrl_match, !573, !"uniphier_ld4_pinctrl_match", i1 false, i1 false}
!573 = !{!"../drivers/pinctrl/uniphier/pinctrl-uniphier-ld4.c", i32 736, i32 34}
!574 = !{i32 1, !"wchar_size", i32 2}
!575 = !{i32 1, !"min_enum_size", i32 4}
!576 = !{i32 8, !"branch-target-enforcement", i32 0}
!577 = !{i32 8, !"sign-return-address", i32 0}
!578 = !{i32 8, !"sign-return-address-all", i32 0}
!579 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!580 = !{i32 7, !"uwtable", i32 1}
!581 = !{i32 7, !"frame-pointer", i32 2}
!582 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
