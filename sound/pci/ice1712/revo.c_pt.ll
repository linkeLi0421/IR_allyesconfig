; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/revo.c_pt.bc'
source_filename = "../sound/pci/ice1712/revo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_ak4xxx_private = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.snd_akm4xxx_ops }
%struct.snd_akm4xxx_ops = type { ptr }
%struct.snd_pt2258 = type { ptr, ptr, ptr, [6 x i8], i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_akm4xxx_dac_channel = type { ptr, i32, ptr }
%struct.snd_akm4xxx_adc_channel = type { ptr, ptr, i32, ptr, ptr }
%struct.snd_i2c_bit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ice1712 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], ptr, ptr, ptr, i32, i32, [6 x i32], [6 x i32], i32, i32, ptr, [2 x ptr], %struct.spinlock, ptr, %struct.snd_ice1712_eeprom, ptr, [20 x i32], i16, i32, i32, i32, %struct.mutex, [4 x ptr], ptr, i32, ptr, %struct.snd_ice1712_spdif, %struct.mutex, ptr, ptr, i32, %struct.ice1712_gpio, %struct.mutex, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i8, i32, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_ice1712_eeprom = type { i32, i8, i8, [32 x i8], i32, i32, i32 }
%struct.snd_ice1712_spdif = type { i8, i8, ptr, %struct.snd_ice1712_spdif_ops }
%struct.snd_ice1712_spdif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ice1712_gpio = type { i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.snd_i2c_bus = type { ptr, [32 x i8], %struct.mutex, ptr, %struct.list_head, %struct.list_head, %union.anon.86, ptr, i32, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.revo51_spec = type { ptr, ptr, ptr }
%struct.ak4114 = type { ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.mutex, %struct.spinlock, [6 x i8], [5 x i8], [15 x ptr], ptr, ptr, [4 x i32], i8, i8, %struct.delayed_work, i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_oss = type { i32, i32 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"M Audio Revolution-7.1\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"revo71\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"M Audio Revolution-5.1\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"revo51\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"M Audio Audiophile192\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ap192\00", [26 x i8] zeroinitializer }, align 32
@snd_vt1724_revo_cards = dso_local global { [4 x %struct.snd_ice1712_card_info], [32 x i8] } { [4 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 303312950, ptr @.str, ptr @.str.1, ptr null, ptr @revo_init, ptr null, ptr @revo_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 303313206, ptr @.str.2, ptr @.str.3, ptr null, ptr @revo_init, ptr null, ptr @revo_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 303313462, ptr @.str.4, ptr @.str.5, ptr null, ptr @revo_init, ptr null, ptr @revo_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/pci/ice1712/revo.c\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@akm_revo_front = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 0, i32 2, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 5, ptr @revo71_front, ptr null, %struct.snd_ak4xxx_ops { ptr null, ptr null, ptr null, ptr @revo_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_revo_front_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 1, i32 8, i32 2, i32 112, i32 80, i32 112, i32 2, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_revo_surround = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 0, i32 6, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 1, i32 3, ptr @revo71_surround, ptr null, %struct.snd_ak4xxx_ops { ptr null, ptr null, ptr null, ptr @revo_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_revo_surround_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 3, i32 8, i32 2, i32 112, i32 48, i32 112, i32 2, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_revo51 = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 0, i32 8, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 4, ptr @revo51_dac, ptr null, %struct.snd_ak4xxx_ops { ptr null, ptr null, ptr null, ptr @revo_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_revo51_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 2, i32 8, i32 2, i32 48, i32 32, i32 48, i32 2, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_revo51_adc = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 2, i32 0, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 6, ptr null, ptr @revo51_adc, %struct.snd_ak4xxx_ops zeroinitializer, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_revo51_adc_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 2, i32 8, i32 2, i32 48, i32 16, i32 48, i32 2, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@ptc_revo51_volume = internal global { %struct.snd_pt2258, [40 x i8] } zeroinitializer, align 32
@akm_ap192 = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 0, i32 2, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 4, ptr @ap192_dac, ptr null, %struct.snd_ak4xxx_ops { ptr null, ptr null, ptr null, ptr @ap192_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_ap192_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 2, i32 8, i32 2, i32 144, i32 128, i32 144, i32 2, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@revo71_front = internal constant { [1 x %struct.snd_akm4xxx_dac_channel], [20 x i8] } { [1 x %struct.snd_akm4xxx_dac_channel] [%struct.snd_akm4xxx_dac_channel { ptr @.str.8, i32 2, ptr @.str.9 }], [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@revo71_surround = internal constant { [4 x %struct.snd_akm4xxx_dac_channel], [48 x i8] } { [4 x %struct.snd_akm4xxx_dac_channel] [%struct.snd_akm4xxx_dac_channel { ptr @.str.10, i32 1, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.11, i32 1, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.12, i32 2, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.13, i32 2, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCM Center Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCM LFE Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM Side Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCM Rear Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@revo51_dac = internal constant { [5 x %struct.snd_akm4xxx_dac_channel], [36 x i8] } { [5 x %struct.snd_akm4xxx_dac_channel] [%struct.snd_akm4xxx_dac_channel { ptr @.str.8, i32 2, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.10, i32 1, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.11, i32 1, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.13, i32 2, ptr null }, %struct.snd_akm4xxx_dac_channel { ptr @.str.14, i32 2, ptr null }], [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PCM Headphone Volume\00", [43 x i8] zeroinitializer }, align 32
@revo51_adc = internal constant { [1 x %struct.snd_akm4xxx_adc_channel], [44 x i8] } { [1 x %struct.snd_akm4xxx_adc_channel] [%struct.snd_akm4xxx_adc_channel { ptr @.str.15, ptr @.str.16, i32 2, ptr null, ptr @revo51_adc_input_names }], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@revo51_adc_input_names = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ICE1724 GPIO6\00", [18 x i8] zeroinitializer }, align 32
@revo51_bit_ops = internal global { %struct.snd_i2c_bit_ops, [40 x i8] } { %struct.snd_i2c_bit_ops { ptr @revo_i2c_start, ptr @revo_i2c_stop, ptr @revo_i2c_direction, ptr @revo_i2c_setlines, ptr null, ptr @revo_i2c_getdata }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PT2258\00", [25 x i8] zeroinitializer }, align 32
@ap192_dac = internal constant { [1 x %struct.snd_akm4xxx_dac_channel], [20 x i8] } { [1 x %struct.snd_akm4xxx_dac_channel] [%struct.snd_akm4xxx_dac_channel { ptr @.str.8, i32 2, ptr null }], [20 x i8] zeroinitializer }, align 32
@ap192_ak4114_init.ak4114_init_vals = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\07p\80H\00\00", [26 x i8] zeroinitializer }, align 32
@ap192_ak4114_init.ak4114_init_txcsb = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A\02,\00\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 303312950, i64 303313206, i64 303313462]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 303312950, i64 303313206, i64 303313462]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 303312950, i64 303313206, i64 303313462]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 611, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 612, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 618, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 619, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 625, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 626, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"snd_vt1724_revo_cards\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 608, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 513, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"akm_revo_front\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 224, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"akm_revo_front_priv\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 233, i32 40 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"akm_revo_surround\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 245, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"akm_revo_surround_priv\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 255, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"akm_revo51\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 267, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"akm_revo51_priv\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 276, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"akm_revo51_adc\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 288, i32 33 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"akm_revo51_adc_priv\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 294, i32 40 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"ptc_revo51_volume\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 306, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"akm_ap192\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 335, i32 33 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"akm_ap192_priv\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 344, i32 40 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"revo71_front\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 184, i32 45 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 186, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 189, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"revo71_surround\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 193, i32 45 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 194, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 195, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 196, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 197, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"revo51_dac\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 200, i32 45 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 205, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"revo51_adc\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 215, i32 45 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 217, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 218, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"revo51_adc_input_names\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 208, i32 20 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 209, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 210, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 211, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 156, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"revo51_bit_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 136, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 164, i32 40 }
@___asan_gen_.144 = private unnamed_addr constant [10 x i8] c"ap192_dac\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 331, i32 45 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"ak4114_init_vals\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 459, i32 29 }
@___asan_gen_.150 = private unnamed_addr constant [18 x i8] c"ak4114_init_txcsb\00", align 1
@___asan_gen_.151 = private constant [28 x i8] c"../sound/pci/ice1712/revo.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 467, i32 29 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @snd_vt1724_revo_cards, ptr @.str.6, ptr @.str.7, ptr @akm_revo_front, ptr @akm_revo_front_priv, ptr @akm_revo_surround, ptr @akm_revo_surround_priv, ptr @akm_revo51, ptr @akm_revo51_priv, ptr @akm_revo51_adc, ptr @akm_revo51_adc_priv, ptr @ptc_revo51_volume, ptr @akm_ap192, ptr @akm_ap192_priv, ptr @revo71_front, ptr @.str.8, ptr @.str.9, ptr @revo71_surround, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @revo51_dac, ptr @.str.14, ptr @revo51_adc, ptr @.str.15, ptr @.str.16, ptr @revo51_adc_input_names, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @revo51_bit_ops, ptr @.str.21, ptr @ap192_dac, ptr @ap192_ak4114_init.ak4114_init_vals, ptr @ap192_ak4114_init.ak4114_init_txcsb], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_vt1724_revo_cards to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_revo_front to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_revo_front_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_revo_surround to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_revo_surround_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_revo51 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_revo51_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_revo51_adc to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_revo51_adc_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptc_revo51_volume to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_ap192 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_ap192_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revo71_front to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revo71_surround to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revo51_dac to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revo51_adc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revo51_adc_input_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revo51_bit_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap192_dac to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap192_ak4114_init.ak4114_init_vals to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap192_ak4114_init.ak4114_init_txcsb to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revo_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 303312950, label %sw.bb
    i32 303313206, label %sw.bb1
    i32 303313462, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %3 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 8, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %4 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %num_total_adcs, align 4
  %i2s_mclk_changed = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 10
  %5 = ptrtoint ptr %i2s_mclk_changed to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @revo_i2s_mclk_changed, ptr %i2s_mclk_changed, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %num_total_dacs2 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %6 = ptrtoint ptr %num_total_dacs2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %num_total_dacs2, align 4
  %num_total_adcs3 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %7 = ptrtoint ptr %num_total_adcs3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %num_total_adcs3, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %num_total_dacs5 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %8 = ptrtoint ptr %num_total_dacs5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %num_total_dacs5, align 4
  %num_total_adcs6 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %9 = ptrtoint ptr %num_total_adcs6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %num_total_adcs6, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 513, i32 noundef 9, ptr noundef nonnull @.str.7) #3
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 432) #6
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %11 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %akm, align 4
  %tobool21.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool21.not, label %sw.epilog.cleanup_crit_edge, label %if.end23

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23:                                         ; preds = %sw.epilog
  %12 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eeprom, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %13, label %if.end23.cleanup_crit_edge [
    i32 303312950, label %sw.bb26
    i32 303313206, label %sw.bb34
    i32 303313462, label %sw.bb49
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb26:                                          ; preds = %if.end23
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %15 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %akm_codecs, align 4
  %call27 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @akm_revo_front, ptr noundef nonnull @akm_revo_front_priv, ptr noundef %ice) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %sw.bb26.cleanup_crit_edge, label %if.end29

sw.bb26.cleanup_crit_edge:                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end29:                                         ; preds = %sw.bb26
  %add.ptr = getelementptr %struct.snd_akm4xxx, ptr %call7.i.i.i, i32 1
  %call30 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef %add.ptr, ptr noundef nonnull @akm_revo_surround, ptr noundef nonnull @akm_revo_surround_priv, ptr noundef %ice) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %16 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio.i, align 4
  %or.i = or i32 %17, 4194304
  store i32 %or.i, ptr %gpio.i, align 4
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %18 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %19(ptr noundef %ice, i32 noundef %or.i) #3
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %20 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %21(ptr noundef %ice) #3
  %or4.i = or i32 %call.i.i, 4194304
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %22 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data.i.i, align 4
  tail call void %23(ptr noundef %ice, i32 noundef %or4.i) #3
  br label %cleanup

sw.bb34:                                          ; preds = %if.end23
  %akm_codecs35 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %24 = ptrtoint ptr %akm_codecs35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %akm_codecs35, align 4
  %call36 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @akm_revo51, ptr noundef nonnull @akm_revo51_priv, ptr noundef %ice) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %sw.bb34.cleanup_crit_edge, label %if.end39

sw.bb34.cleanup_crit_edge:                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end39:                                         ; preds = %sw.bb34
  %add.ptr40 = getelementptr %struct.snd_akm4xxx, ptr %call7.i.i.i, i32 1
  %call41 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef %add.ptr40, ptr noundef nonnull @akm_revo51_adc, ptr noundef nonnull @akm_revo51_adc_priv, ptr noundef %ice) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end39.cleanup_crit_edge, label %if.end44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i102 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 12) #6
  %tobool.not.i = icmp eq ptr %call7.i.i.i102, null
  br i1 %tobool.not.i, label %if.end44.cleanup_crit_edge, label %if.end.i

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end44
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %26 = ptrtoint ptr %spec1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i102, ptr %spec1.i, align 4
  %card.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %27 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card.i, align 4
  %i2c.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 43
  %call2.i = tail call i32 @snd_i2c_bus_create(ptr noundef %28, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef %i2c.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %29 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ice, ptr %private_data.i, align 4
  %32 = load ptr, ptr %i2c.i, align 4
  %hw_ops.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %hw_ops.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @revo51_bit_ops, ptr %hw_ops.i, align 4
  %34 = load ptr, ptr %i2c.i, align 4
  %call8.i = tail call i32 @snd_i2c_device_create(ptr noundef %34, ptr noundef nonnull @.str.21, i8 noundef zeroext 64, ptr noundef nonnull %call7.i.i.i102) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end4.i.cleanup_crit_edge, label %if.end48

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end48:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card.i, align 4
  store ptr %36, ptr @ptc_revo51_volume, align 4
  %37 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c.i, align 4
  store ptr %38, ptr getelementptr inbounds (%struct.snd_pt2258, ptr @ptc_revo51_volume, i32 0, i32 1), align 4
  %39 = ptrtoint ptr %call7.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i.i102, align 8
  store ptr %40, ptr getelementptr inbounds (%struct.snd_pt2258, ptr @ptc_revo51_volume, i32 0, i32 2), align 4
  %pt2258.i = getelementptr inbounds %struct.revo51_spec, ptr %call7.i.i.i102, i32 0, i32 1
  %41 = ptrtoint ptr %pt2258.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ptc_revo51_volume, ptr %pt2258.i, align 4
  %call16.i = tail call i32 @snd_pt2258_reset(ptr noundef nonnull @ptc_revo51_volume) #3
  %gpio.i103 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %42 = ptrtoint ptr %gpio.i103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gpio.i103, align 4
  %or.i104 = or i32 %43, 4194304
  store i32 %or.i104, ptr %gpio.i103, align 4
  %set_dir.i.i105 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %44 = ptrtoint ptr %set_dir.i.i105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_dir.i.i105, align 4
  tail call void %45(ptr noundef %ice, i32 noundef %or.i104) #3
  %get_data.i.i106 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %46 = ptrtoint ptr %get_data.i.i106 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %get_data.i.i106, align 4
  %call.i.i107 = tail call i32 %47(ptr noundef %ice) #3
  %or4.i109 = or i32 %call.i.i107, 4194304
  %set_data.i.i110 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %48 = ptrtoint ptr %set_data.i.i110 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %set_data.i.i110, align 4
  tail call void %49(ptr noundef %ice, i32 noundef %or4.i109) #3
  br label %cleanup

sw.bb49:                                          ; preds = %if.end23
  %akm_codecs50 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %50 = ptrtoint ptr %akm_codecs50 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %akm_codecs50, align 4
  %call51 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @akm_ap192, ptr noundef nonnull @akm_ap192_priv, ptr noundef %ice) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %sw.bb49.cleanup_crit_edge, label %if.end54

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end54:                                         ; preds = %sw.bb49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i111 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 12) #6
  %tobool.not.i112 = icmp eq ptr %call7.i.i.i111, null
  br i1 %tobool.not.i112, label %if.end54.cleanup_crit_edge, label %if.end.i117

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i117:                                      ; preds = %if.end54
  %spec1.i113 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %52 = ptrtoint ptr %spec1.i113 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i111, ptr %spec1.i113, align 4
  %card.i114 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %53 = ptrtoint ptr %card.i114 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %card.i114, align 4
  %ak4114.i = getelementptr inbounds %struct.revo51_spec, ptr %call7.i.i.i111, i32 0, i32 2
  %call2.i115 = tail call i32 @snd_ak4114_create(ptr noundef %54, ptr noundef nonnull @ap192_ak4114_read, ptr noundef nonnull @ap192_ak4114_write, ptr noundef nonnull @ap192_ak4114_init.ak4114_init_vals, ptr noundef nonnull @ap192_ak4114_init.ak4114_init_txcsb, ptr noundef %ice, ptr noundef %ak4114.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i115)
  %cmp.i116 = icmp slt i32 %call2.i115, 0
  br i1 %cmp.i116, label %if.end.i117.cleanup_crit_edge, label %if.end58

if.end.i117.cleanup_crit_edge:                    ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end58:                                         ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %ak4114.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ak4114.i, align 8
  %check_flags.i = getelementptr inbounds %struct.ak4114, ptr %56, i32 0, i32 16
  %57 = ptrtoint ptr %check_flags.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %check_flags.i, align 4
  %gpio.i120 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46
  %58 = ptrtoint ptr %gpio.i120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %gpio.i120, align 4
  %or.i121 = or i32 %59, 4194304
  store i32 %or.i121, ptr %gpio.i120, align 4
  %set_dir.i.i122 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 5
  %60 = ptrtoint ptr %set_dir.i.i122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_dir.i.i122, align 4
  tail call void %61(ptr noundef %ice, i32 noundef %or.i121) #3
  %get_data.i.i123 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 8
  %62 = ptrtoint ptr %get_data.i.i123 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %get_data.i.i123, align 4
  %call.i.i124 = tail call i32 %63(ptr noundef %ice) #3
  %or4.i126 = or i32 %call.i.i124, 4194304
  %set_data.i.i127 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 7
  %64 = ptrtoint ptr %set_data.i.i127 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_data.i.i127, align 4
  tail call void %65(ptr noundef %ice, i32 noundef %or4.i126) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end.i117.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %sw.bb49.cleanup_crit_edge, %if.end48, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %sw.bb34.cleanup_crit_edge, %if.end33, %if.end29.cleanup_crit_edge, %sw.bb26.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %sw.epilog.cleanup_crit_edge ], [ %call27, %sw.bb26.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call36, %sw.bb34.cleanup_crit_edge ], [ %call41, %if.end39.cleanup_crit_edge ], [ %call51, %sw.bb49.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %if.end58 ], [ 0, %if.end48 ], [ 0, %if.end33 ], [ %call8.i, %if.end4.i.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ -12, %if.end44.cleanup_crit_edge ], [ %call2.i115, %if.end.i117.cleanup_crit_edge ], [ -12, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revo_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eeprom, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 303312950, label %sw.bb
    i32 303313206, label %sw.bb2
    i32 303313462, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef %ice) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %call3 = tail call i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef %ice) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %sw.bb2.cleanup_crit_edge, label %if.end6

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  %5 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec1, align 4
  %pt2258 = getelementptr inbounds %struct.revo51_spec, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pt2258 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pt2258, align 4
  %call8 = tail call i32 @snd_pt2258_build_controls(ptr noundef %8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end6.sw.epilog_crit_edge

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %call13 = tail call i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef %ice) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %sw.bb12.cleanup_crit_edge, label %if.end16

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %sw.bb12
  %ak4114 = getelementptr inbounds %struct.revo51_spec, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ak4114 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ak4114, align 4
  %pcm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 11
  %11 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcm, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %12, i32 0, i32 8, i32 1, i32 4
  %13 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %substream, align 8
  %call17 = tail call i32 @snd_ak4114_build(ptr noundef %10, ptr noundef null, ptr noundef %14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog:                                        ; preds = %if.end16.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end16.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ %call13, %sw.bb12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @revo_i2s_mclk_changed(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !94
  tail call void @arm_heavy_mb() #3
  %profi_port = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 8
  %0 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %profi_port, align 4
  %add = add i32 %1, 5
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #3, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !96
  %4 = or i8 %3, -128
  %5 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %profi_port, align 4
  %add5 = add i32 %6, 5
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %7 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #3, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !98
  tail call void @arm_heavy_mb() #3
  %13 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %profi_port, align 4
  %add13 = add i32 %14, 5
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %15 = inttoptr i32 %add15 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #3, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !99
  %17 = and i8 %16, 127
  %18 = ptrtoint ptr %profi_port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %profi_port, align 4
  %add23 = add i32 %19, 5
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %20 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %17) #3, !srcloc !97
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @revo_set_rate_val(ptr noundef %ak, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp1 = icmp ugt i32 %rate, 96000
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp3 = icmp ugt i32 %rate, 48000
  %. = zext i1 %cmp3 to i32
  %dfs.0 = select i1 %cmp1, i32 2, i32 %.
  %type = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, i32 2, i32 1
  %spec.select54 = select i1 %switch, i32 4, i32 3
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %spec.select
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %conv, %spec.select54
  %conv14 = and i32 %shr, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %dfs.0)
  %cmp17 = icmp eq i32 %conv14, %dfs.0
  br i1 %cmp17, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 1) #3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %shl = shl nuw nsw i32 3, %spec.select54
  %6 = trunc i32 %shl to i8
  %7 = xor i8 %6, -1
  %conv26 = and i8 %5, %7
  %shl28 = shl nuw nsw i32 %dfs.0, %spec.select54
  %8 = trunc i32 %shl28 to i8
  %conv30 = or i8 %conv26, %8
  store i8 %conv30, ptr %arrayidx, align 1
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_akm4xxx_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_bus_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_device_create(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pt2258_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @revo_i2c_start(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #3
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %4 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %5 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx5.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @revo_i2c_stop(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %2 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_dir.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %4 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saved.i, align 4
  tail call void %3(ptr noundef %1, i32 noundef %5) #3
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %6 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef %9) #3
  %10 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %saved.i, align 4
  %12 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %gpio.i, align 4
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %15 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %write_mask.i, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @revo_i2c_direction(ptr nocapture noundef readonly %bus, i32 noundef %clock, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool1.not = icmp eq i32 %data, 0
  %or3 = or i32 %spec.select, 64
  %val.1 = select i1 %tobool1.not, i32 %spec.select, i32 %or3
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio, align 4
  %and = and i32 %3, -193
  %or7 = or i32 %and, %val.1
  store i32 %or7, ptr %gpio, align 4
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %4 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_dir.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef %or7) #3
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %6 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mask.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef -193) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @revo_i2c_setlines(ptr nocapture noundef readonly %bus, i32 noundef %clk, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk)
  %tobool.not = icmp eq i32 %clk, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool1.not = icmp eq i32 %data, 0
  %or3 = or i32 %spec.select, 64
  %val.1 = select i1 %tobool1.not, i32 %spec.select, i32 %or3
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio.i, align 4
  %or.i = or i32 %3, 192
  store i32 %or.i, ptr %gpio.i, align 4
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %4 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %5(ptr noundef %1, i32 noundef %or.i) #3
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #3
  %and.i = and i32 %call.i.i, -193
  %or4.i = or i32 %and.i, %val.1
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef %or4.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revo_i2c_getdata(ptr nocapture noundef readonly %bus, i32 noundef %ack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ack)
  %tobool.not = icmp eq i32 %ack, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 1073740) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio.i, align 4
  %and.i = and i32 %4, -65
  store i32 %and.i, ptr %gpio.i, align 4
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %5 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %6(ptr noundef %1, i32 noundef %and.i) #3
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %7 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %1) #3
  %and3.i = lshr i32 %call.i.i, 6
  %and3.i.lobit = and i32 %and3.i, 1
  ret i32 %and3.i.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ap192_set_rate_val(ptr noundef %ak, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp.i = icmp eq i32 %rate, 0
  br i1 %cmp.i, label %entry.revo_set_rate_val.exit_crit_edge, label %if.end.i

entry.revo_set_rate_val.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %revo_set_rate_val.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp1.i = icmp ugt i32 %rate, 96000
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp3.i = icmp ugt i32 %rate, 48000
  %..i = zext i1 %cmp3.i to i32
  %dfs.0.i = select i1 %cmp1.i, i32 2, i32 %..i
  %type.i = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 8
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %spec.select.i = select i1 %switch.i, i32 2, i32 1
  %spec.select54.i = select i1 %switch.i, i32 4, i32 3
  %arrayidx.i = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 %spec.select.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %shr.i = lshr i32 %conv.i, %spec.select54.i
  %conv14.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14.i, i32 %dfs.0.i)
  %cmp17.i = icmp eq i32 %conv14.i, %dfs.0.i
  br i1 %cmp17.i, label %if.end.i.revo_set_rate_val.exit_crit_edge, label %if.end20.i

if.end.i.revo_set_rate_val.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %revo_set_rate_val.exit

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 1) #3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %shl.i = shl nuw nsw i32 3, %spec.select54.i
  %8 = trunc i32 %shl.i to i8
  %9 = xor i8 %8, -1
  %conv26.i = and i8 %7, %9
  %shl28.i = shl nuw nsw i32 %dfs.0.i, %spec.select54.i
  %10 = trunc i32 %shl28.i to i8
  %conv30.i = or i8 %conv26.i, %10
  store i8 %conv30.i, ptr %arrayidx.i, align 1
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 0) #3
  br label %revo_set_rate_val.exit

revo_set_rate_val.exit:                           ; preds = %if.end20.i, %if.end.i.revo_set_rate_val.exit_crit_edge, %entry.revo_set_rate_val.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 96000
  %cond = select i1 %cmp, i32 256, i32 0
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %11 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio.i, align 4
  %or.i = or i32 %12, 256
  store i32 %or.i, ptr %gpio.i, align 4
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %13 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %14(ptr noundef %1, i32 noundef %or.i) #3
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %15 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %1) #3
  %and.i = and i32 %call.i.i, -257
  %or4.i = or i32 %and.i, %cond
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %17 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_data.i.i, align 4
  tail call void %18(ptr noundef %1, i32 noundef %or4.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp2 = icmp ugt i32 %rate, 48000
  %. = select i1 %cmp2, i32 512, i32 0
  %dfs.0 = select i1 %cmp, i32 1024, i32 %.
  %19 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio.i, align 4
  %or.i14 = or i32 %20, 1536
  store i32 %or.i14, ptr %gpio.i, align 4
  %21 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %22(ptr noundef %1, i32 noundef %or.i14) #3
  %23 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i17 = tail call i32 %24(ptr noundef %1) #3
  %and.i18 = and i32 %call.i.i17, -1537
  %or4.i19 = or i32 %and.i18, %dfs.0
  %25 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_data.i.i, align 4
  tail call void %26(ptr noundef %1, i32 noundef %or4.i19) #3
  %27 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gpio.i, align 4
  %or.i22 = or i32 %28, 2048
  store i32 %or.i22, ptr %gpio.i, align 4
  %29 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %30(ptr noundef %1, i32 noundef %or.i22) #3
  %31 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i25 = tail call i32 %32(ptr noundef %1) #3
  %and.i26 = and i32 %call.i.i25, -2049
  %33 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_data.i.i, align 4
  tail call void %34(ptr noundef %1, i32 noundef %and.i26) #3
  %35 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gpio.i, align 4
  %or.i29 = or i32 %36, 2048
  store i32 %or.i29, ptr %gpio.i, align 4
  %37 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %38(ptr noundef %1, i32 noundef %or.i29) #3
  %39 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i32 = tail call i32 %40(ptr noundef %1) #3
  %or4.i34 = or i32 %call.i.i32, 2048
  %41 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_data.i.i, align 4
  tail call void %42(ptr noundef %1, i32 noundef %or4.i34) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4114_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ap192_ak4114_read(ptr noundef %private_data, i8 noundef zeroext %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #3
  %gpio.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46
  %0 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio.i.i, align 4
  %saved.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 2
  %2 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %saved.i.i, align 4
  %write_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %write_mask.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx5.i.i, align 4
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %private_data) #3
  %or1.i = and i32 %call.i.i, -147
  %and.i = or i32 %or1.i, 18
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i.i, align 4
  tail call void %9(ptr noundef %private_data, i32 noundef %and.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #3
  %11 = and i8 %addr, 31
  %and = zext i8 %11 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %idx.addr.018.i = phi i32 [ 7, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %gpio.addr.017.i = phi i32 [ %and.i, %entry ], [ %or3.i, %for.body.i.for.body.i_crit_edge ]
  %and.i8 = and i32 %gpio.addr.017.i, -3
  %12 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_data.i.i, align 4
  tail call void %13(ptr noundef %private_data, i32 noundef %and.i8) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #3
  %shl.i = shl nuw i32 1, %idx.addr.018.i
  %and1.i = and i32 %shl.i, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %or.i = or i32 %and.i8, 8
  %and2.i = and i32 %gpio.addr.017.i, -11
  %gpio.addr.1.i = select i1 %tobool.not.i, i32 %and2.i, i32 %or.i
  %15 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_data.i.i, align 4
  tail call void %16(ptr noundef %private_data, i32 noundef %gpio.addr.1.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #3
  %or3.i = or i32 %gpio.addr.1.i, 2
  %18 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_data.i.i, align 4
  tail call void %19(ptr noundef %private_data, i32 noundef %or3.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #3
  %dec.i = add nsw i32 %idx.addr.018.i, -1
  %cmp.not.i = icmp eq i32 %idx.addr.018.i, 0
  br i1 %cmp.not.i, label %write_data.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

write_data.exit:                                  ; preds = %for.body.i
  %and.peel.i = or i32 %or1.i, 16
  %21 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_data.i.i, align 4
  tail call void %22(ptr noundef %private_data, i32 noundef %and.peel.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #3
  %24 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_data.i.i, align 4
  %call.i.peel.i = tail call i32 %25(ptr noundef %private_data) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #3
  %27 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_data.i.i, align 4
  tail call void %28(ptr noundef %private_data, i32 noundef %and.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #3
  %30 = trunc i32 %call.i.peel.i to i8
  %31 = shl i8 %30, 5
  %32 = and i8 %31, -128
  br label %for.body.i18

for.body.i18:                                     ; preds = %for.body.i18.for.body.i18_crit_edge, %write_data.exit
  %data.04.i = phi i8 [ %32, %write_data.exit ], [ %data.1.i, %for.body.i18.for.body.i18_crit_edge ]
  %idx.addr.03.i = phi i32 [ 6, %write_data.exit ], [ %dec.i16, %for.body.i18.for.body.i18_crit_edge ]
  %33 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_data.i.i, align 4
  tail call void %34(ptr noundef %private_data, i32 noundef %and.peel.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #3
  %36 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i12 = tail call i32 %37(ptr noundef %private_data) #3
  %and1.i13 = and i32 %call.i.i12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i13)
  %tobool.not.i14 = icmp eq i32 %and1.i13, 0
  %shl.i15 = shl nuw i32 1, %idx.addr.03.i
  %38 = trunc i32 %shl.i15 to i8
  %conv2.i = select i1 %tobool.not.i14, i8 0, i8 %38
  %data.1.i = or i8 %conv2.i, %data.04.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #3
  %40 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_data.i.i, align 4
  tail call void %41(ptr noundef %private_data, i32 noundef %and.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #3
  %dec.i16 = add nsw i32 %idx.addr.03.i, -1
  %cmp.not.i17 = icmp eq i32 %idx.addr.03.i, 0
  br i1 %cmp.not.i17, label %read_data.exit, label %for.body.i18.for.body.i18_crit_edge, !llvm.loop !100

for.body.i18.for.body.i18_crit_edge:              ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i18

read_data.exit:                                   ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #5
  %or1.i19 = or i32 %call.i.i, 146
  %43 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %set_data.i.i, align 4
  tail call void %44(ptr noundef %private_data, i32 noundef %or1.i19) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #3
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 5
  %46 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_dir.i.i, align 4
  %48 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %saved.i.i, align 4
  tail call void %47(ptr noundef %private_data, i32 noundef %49) #3
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 3
  %50 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %set_mask.i.i, align 4
  %52 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx5.i.i, align 4
  tail call void %51(ptr noundef %private_data, i32 noundef %53) #3
  %54 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %saved.i.i, align 4
  %56 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %gpio.i.i, align 4
  %57 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx5.i.i, align 4
  %59 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %write_mask.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #3
  ret i8 %data.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ap192_ak4114_write(ptr noundef %private_data, i8 noundef zeroext %addr, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_mutex.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i.i, i32 noundef 0) #3
  %gpio.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46
  %0 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio.i.i, align 4
  %saved.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 2
  %2 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %saved.i.i, align 4
  %write_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %write_mask.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx5.i.i, align 4
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 8
  %6 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %private_data) #3
  %or1.i = and i32 %call.i.i, -147
  %and.i = or i32 %or1.i, 18
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 7
  %8 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_data.i.i, align 4
  tail call void %9(ptr noundef %private_data, i32 noundef %and.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #3
  %11 = and i8 %addr, 31
  %12 = or i8 %11, 32
  %or = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %or, 8
  %conv1 = zext i8 %data to i32
  %or2 = or i32 %shl, %conv1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %idx.addr.018.i = phi i32 [ 15, %entry ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %gpio.addr.017.i = phi i32 [ %and.i, %entry ], [ %or3.i, %for.body.i.for.body.i_crit_edge ]
  %and.i8 = and i32 %gpio.addr.017.i, -3
  %13 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_data.i.i, align 4
  tail call void %14(ptr noundef %private_data, i32 noundef %and.i8) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #3
  %shl.i = shl nuw i32 1, %idx.addr.018.i
  %and1.i = and i32 %shl.i, %or2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %or.i = or i32 %and.i8, 8
  %and2.i = and i32 %gpio.addr.017.i, -11
  %gpio.addr.1.i = select i1 %tobool.not.i, i32 %and2.i, i32 %or.i
  %16 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_data.i.i, align 4
  tail call void %17(ptr noundef %private_data, i32 noundef %gpio.addr.1.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #3
  %or3.i = or i32 %gpio.addr.1.i, 2
  %19 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_data.i.i, align 4
  tail call void %20(ptr noundef %private_data, i32 noundef %or3.i) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #3
  %dec.i = add nsw i32 %idx.addr.018.i, -1
  %cmp.not.i = icmp eq i32 %idx.addr.018.i, 0
  br i1 %cmp.not.i, label %write_data.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

write_data.exit:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %or1.i9 = or i32 %call.i.i, 146
  %22 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_data.i.i, align 4
  tail call void %23(ptr noundef %private_data, i32 noundef %or1.i9) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #3
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 5
  %25 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_dir.i.i, align 4
  %27 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saved.i.i, align 4
  tail call void %26(ptr noundef %private_data, i32 noundef %28) #3
  %set_mask.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %private_data, i32 0, i32 46, i32 3
  %29 = ptrtoint ptr %set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_mask.i.i, align 4
  %31 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx5.i.i, align 4
  tail call void %30(ptr noundef %private_data, i32 noundef %32) #3
  %33 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saved.i.i, align 4
  %35 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %gpio.i.i, align 4
  %36 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.i.i, align 4
  %38 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %write_mask.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i.i) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pt2258_build_controls(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ak4114_build(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/revo.c", i32 611, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/revo.c", i32 612, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/revo.c", i32 618, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/revo.c", i32 619, i32 12}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/revo.c", i32 625, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/revo.c", i32 626, i32 12}
!12 = !{ptr @snd_vt1724_revo_cards, !13, !"snd_vt1724_revo_cards", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/revo.c", i32 608, i32 30}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/revo.c", i32 513, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @akm_revo_front, !18, !"akm_revo_front", i1 false, i1 false}
!18 = !{!"../sound/pci/ice1712/revo.c", i32 224, i32 33}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/ice1712/revo.c", i32 186, i32 11}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/ice1712/revo.c", i32 189, i32 18}
!23 = !{ptr @revo71_front, !24, !"revo71_front", i1 false, i1 false}
!24 = !{!"../sound/pci/ice1712/revo.c", i32 184, i32 45}
!25 = !{ptr @akm_revo_front_priv, !26, !"akm_revo_front_priv", i1 false, i1 false}
!26 = !{!"../sound/pci/ice1712/revo.c", i32 233, i32 40}
!27 = !{ptr @akm_revo_surround, !28, !"akm_revo_surround", i1 false, i1 false}
!28 = !{!"../sound/pci/ice1712/revo.c", i32 245, i32 33}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/ice1712/revo.c", i32 194, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/ice1712/revo.c", i32 195, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/ice1712/revo.c", i32 196, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/ice1712/revo.c", i32 197, i32 2}
!37 = !{ptr @revo71_surround, !38, !"revo71_surround", i1 false, i1 false}
!38 = !{!"../sound/pci/ice1712/revo.c", i32 193, i32 45}
!39 = !{ptr @akm_revo_surround_priv, !40, !"akm_revo_surround_priv", i1 false, i1 false}
!40 = !{!"../sound/pci/ice1712/revo.c", i32 255, i32 40}
!41 = !{ptr @akm_revo51, !42, !"akm_revo51", i1 false, i1 false}
!42 = !{!"../sound/pci/ice1712/revo.c", i32 267, i32 33}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/ice1712/revo.c", i32 205, i32 2}
!45 = !{ptr @revo51_dac, !46, !"revo51_dac", i1 false, i1 false}
!46 = !{!"../sound/pci/ice1712/revo.c", i32 200, i32 45}
!47 = !{ptr @akm_revo51_priv, !48, !"akm_revo51_priv", i1 false, i1 false}
!48 = !{!"../sound/pci/ice1712/revo.c", i32 276, i32 40}
!49 = !{ptr @akm_revo51_adc, !50, !"akm_revo51_adc", i1 false, i1 false}
!50 = !{!"../sound/pci/ice1712/revo.c", i32 288, i32 33}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/ice1712/revo.c", i32 217, i32 11}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/ice1712/revo.c", i32 218, i32 18}
!55 = !{ptr @revo51_adc, !56, !"revo51_adc", i1 false, i1 false}
!56 = !{!"../sound/pci/ice1712/revo.c", i32 215, i32 45}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/ice1712/revo.c", i32 209, i32 2}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/ice1712/revo.c", i32 210, i32 2}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/ice1712/revo.c", i32 211, i32 2}
!63 = !{ptr @revo51_adc_input_names, !64, !"revo51_adc_input_names", i1 false, i1 false}
!64 = !{!"../sound/pci/ice1712/revo.c", i32 208, i32 20}
!65 = !{ptr @akm_revo51_adc_priv, !66, !"akm_revo51_adc_priv", i1 false, i1 false}
!66 = !{!"../sound/pci/ice1712/revo.c", i32 294, i32 40}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/ice1712/revo.c", i32 156, i32 38}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/ice1712/revo.c", i32 164, i32 40}
!71 = !{ptr @revo51_bit_ops, !72, !"revo51_bit_ops", i1 false, i1 false}
!72 = !{!"../sound/pci/ice1712/revo.c", i32 136, i32 31}
!73 = !{ptr @ptc_revo51_volume, !74, !"ptc_revo51_volume", i1 false, i1 false}
!74 = !{!"../sound/pci/ice1712/revo.c", i32 306, i32 26}
!75 = !{ptr @akm_ap192, !76, !"akm_ap192", i1 false, i1 false}
!76 = !{!"../sound/pci/ice1712/revo.c", i32 335, i32 33}
!77 = !{ptr @ap192_dac, !78, !"ap192_dac", i1 false, i1 false}
!78 = !{!"../sound/pci/ice1712/revo.c", i32 331, i32 45}
!79 = !{ptr @akm_ap192_priv, !80, !"akm_ap192_priv", i1 false, i1 false}
!80 = !{!"../sound/pci/ice1712/revo.c", i32 344, i32 40}
!81 = !{ptr @ap192_ak4114_init.ak4114_init_vals, !82, !"ak4114_init_vals", i1 false, i1 false}
!82 = !{!"../sound/pci/ice1712/revo.c", i32 459, i32 29}
!83 = !{ptr @ap192_ak4114_init.ak4114_init_txcsb, !84, !"ak4114_init_txcsb", i1 false, i1 false}
!84 = !{!"../sound/pci/ice1712/revo.c", i32 467, i32 29}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2154369824}
!95 = !{i64 4219301}
!96 = !{i64 2154369550}
!97 = !{i64 4218906}
!98 = !{i64 2154372170}
!99 = !{i64 2154371895}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.peeled.count", i32 1}
