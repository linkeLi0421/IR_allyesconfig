; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/delta.c_pt.bc'
source_filename = "../sound/pci/ice1712/delta.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_i2c_ops = type { ptr, ptr, ptr }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_ak4xxx_private = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.snd_akm4xxx_ops }
%struct.snd_akm4xxx_ops = type { ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.87, i32 }
%union.anon.87 = type { ptr }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_i2c_bus = type { ptr, [32 x i8], %struct.mutex, ptr, %struct.list_head, %struct.list_head, %union.anon.86, ptr, i32, ptr, ptr }
%union.anon.86 = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_i2c_device = type { %struct.list_head, ptr, [32 x i8], i16, i16, i32, ptr, ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"M Audio Delta 1010\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"delta1010\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"M Audio Delta DiO 2496\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dio2496\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"M Audio Delta 66\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"delta66\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"M Audio Delta 44\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"delta44\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"M Audio Audiophile 24/96\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audiophile\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"M Audio Delta 410\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"delta410\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"M Audio Delta 1010LT\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"delta1010lt\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Digigram VX442\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vx442\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Lionstracs Mediastation\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediastation\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Edirol DA2496\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da2496\00", [25 x i8] zeroinitializer }, align 32
@snd_ice1712_delta_cards = dso_local global { [11 x %struct.snd_ice1712_card_info], [152 x i8] } { [11 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 303313110, ptr @.str, ptr @.str.1, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 303313366, ptr @.str.2, ptr @.str.3, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 -128, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 303313622, ptr @.str.4, ptr @.str.5, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 -128, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 303313878, ptr @.str.6, ptr @.str.7, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 -128, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 303314134, ptr @.str.8, ptr @.str.9, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 303315158, ptr @.str.10, ptr @.str.11, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 303315926, ptr @.str.12, ptr @.str.13, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 303316182, ptr @.str.14, ptr @.str.15, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 -128, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 1766588672, ptr @.str.16, ptr @.str.17, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 -837402608, ptr @.str.18, ptr @.str.19, ptr null, ptr @snd_ice1712_delta_init, ptr null, ptr @snd_ice1712_delta_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info zeroinitializer], [152 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ICE1712 GPIO 1\00", [17 x i8] zeroinitializer }, align 32
@snd_ice1712_delta_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 681, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to create I2C bus\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_ice1712_delta_init\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/ice1712/delta.c\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ice1712_delta_init._entry_ptr = internal global ptr @snd_ice1712_delta_init._entry, section ".printk_index", align 4
@ap_cs8427_i2c_ops = internal constant { %struct.snd_i2c_ops, [20 x i8] } { %struct.snd_i2c_ops { ptr @ap_cs8427_sendbytes, ptr @ap_cs8427_readbytes, ptr @ap_cs8427_probeaddr }, [20 x i8] zeroinitializer }, align 32
@akm_audiophile = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 2, i32 2, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 1, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr null, ptr null, ptr null, ptr @delta_ak4524_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_audiophile_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 2, i32 8, i32 2, i32 32, i32 32, i32 0, i32 16, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_delta410 = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 2, i32 8, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 2, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr null, ptr null, ptr null, ptr @delta_ak4524_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_delta410_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 0, i32 8, i32 2, i32 32, i32 32, i32 0, i32 16, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_delta1010lt = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 8, i32 8, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 0, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr @delta1010lt_ak4524_lock, ptr null, ptr null, ptr @delta_ak4524_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_delta1010lt_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 2, i32 8, i32 2, i32 0, i32 0, i32 80, i32 0, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_delta44 = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 4, i32 4, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 0, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr @delta_ak4524_lock, ptr null, ptr null, ptr @delta_ak4524_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_delta44_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 2, i32 16, i32 32, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_vx442 = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 4, i32 4, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 0, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr @vx442_ak4524_lock, ptr null, ptr null, ptr @vx442_ak4524_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_vx442_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 2, i32 8, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_delta66e = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 4, i32 4, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 0, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr @delta66e_ak4524_lock, ptr null, ptr null, ptr @delta_ak4524_set_rate_val }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_delta66e_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 0, i8 2, i32 8, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_ice1712_delta1010_wordclock_select = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_gpio_get, ptr @snd_ice1712_gpio_put, %union.anon.87 zeroinitializer, i32 16777232 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_delta1010_wordclock_status = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 5, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_gpio_get, ptr @snd_ice1712_gpio_put, %union.anon.87 zeroinitializer, i32 16777248 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_deltadio2496_spdif_in_select = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_gpio_get, ptr @snd_ice1712_gpio_put, %union.anon.87 zeroinitializer, i32 16 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_delta1010lt_wordclock_select = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_gpio_get, ptr @snd_ice1712_gpio_put, %union.anon.87 zeroinitializer, i32 128 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_delta1010lt_wordclock_status = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 1, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_delta1010lt_wordclock_status_get, ptr null, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_delta_spdif_in_status = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 5, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_gpio_get, ptr @snd_ice1712_gpio_put, %union.anon.87 zeroinitializer, i32 16777218 }, [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Word Clock Sync\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Word Clock Status\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Input Optical\00", [43 x i8] zeroinitializer }, align 32
@snd_ice1712_delta1010lt_wordclock_status_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.23, i32 415, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"unable to send register 0x%x byte to CS8427\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"snd_ice1712_delta1010lt_wordclock_status_get\00", [51 x i8] zeroinitializer }, align 32
@snd_ice1712_delta1010lt_wordclock_status_get._entry_ptr = internal global ptr @snd_ice1712_delta1010lt_wordclock_status_get._entry, section ".printk_index", align 4
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Delta IEC958 Input Status\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 303313110, i64 303313366, i64 303313622, i64 303313878, i64 303314134, i64 303315158, i64 303315926, i64 303316182, i64 1766588672, i64 3457564688, i64 4279513302, i64 4279513814]
@__sancov_gen_cov_switch_values.33 = internal global [12 x i64] [i64 10, i64 32, i64 303313110, i64 303313366, i64 303313622, i64 303314134, i64 303315158, i64 303315926, i64 303316182, i64 1766588672, i64 4279513302, i64 4279513814]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 303313110, i64 303313366, i64 1766588672, i64 4279513302]
@__sancov_gen_cov_switch_values.35 = internal global [10 x i64] [i64 8, i64 32, i64 303313622, i64 303313878, i64 303314134, i64 303315158, i64 303315926, i64 303316182, i64 3457564688, i64 4279513814]
@__sancov_gen_cov_switch_values.36 = internal global [7 x i64] [i64 5, i64 32, i64 303313110, i64 303313366, i64 303315926, i64 1766588672, i64 4279513302]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 303313110, i64 303313366, i64 303313622, i64 1766588672]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 303313110, i64 303313366, i64 303313622, i64 1766588672]
@__sancov_gen_cov_switch_values.39 = internal global [10 x i64] [i64 8, i64 32, i64 303313622, i64 303313878, i64 303314134, i64 303315158, i64 303315926, i64 303316182, i64 3457564688, i64 4279513814]
@__sancov_gen_cov_switch_values.40 = internal global [10 x i64] [i64 8, i64 32, i64 303313366, i64 303313622, i64 303314134, i64 303315158, i64 303315926, i64 303316182, i64 4279513302, i64 4279513814]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 303314134, i64 303315158, i64 303315926, i64 303316182, i64 4279513302, i64 4279513814]
@__sancov_gen_cov_switch_values.43 = internal global [8 x i64] [i64 6, i64 32, i64 303314134, i64 303315158, i64 303315926, i64 303316182, i64 4279513302, i64 4279513814]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 849, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 850, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 856, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 857, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 864, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 865, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 872, i32 11 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 873, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 880, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 881, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 887, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 888, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 894, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 895, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 901, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 902, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 909, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 910, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 916, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 917, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"snd_ice1712_delta_cards\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 846, i32 30 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 679, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 681, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"ap_cs8427_i2c_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 163, i32 33 }
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"akm_audiophile\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 434, i32 33 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"akm_audiophile_priv\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 443, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"akm_delta410\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 455, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"akm_delta410_priv\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 464, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"akm_delta1010lt\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 476, i32 33 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"akm_delta1010lt_priv\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 486, i32 40 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"akm_delta44\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 521, i32 33 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"akm_delta44_priv\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 531, i32 40 }
@___asan_gen_.163 = private unnamed_addr constant [10 x i8] c"akm_vx442\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 543, i32 33 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"akm_vx442_priv\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 553, i32 40 }
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"akm_delta66e\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 498, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"akm_delta66e_priv\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 508, i32 40 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 746, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [39 x i8] c"snd_ice1712_delta1010_wordclock_select\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 758, i32 38 }
@___asan_gen_.181 = private unnamed_addr constant [39 x i8] c"snd_ice1712_delta1010_wordclock_status\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 762, i32 38 }
@___asan_gen_.184 = private unnamed_addr constant [41 x i8] c"snd_ice1712_deltadio2496_spdif_in_select\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 764, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant [41 x i8] c"snd_ice1712_delta1010lt_wordclock_select\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 760, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant [41 x i8] c"snd_ice1712_delta1010lt_wordclock_status\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 421, i32 38 }
@___asan_gen_.193 = private unnamed_addr constant [34 x i8] c"snd_ice1712_delta_spdif_in_status\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 766, i32 38 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 759, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 763, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 765, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 414, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.215 = private constant [29 x i8] c"../sound/pci/ice1712/delta.c\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 767, i32 1 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @snd_ice1712_delta1010lt_wordclock_status_get._entry, ptr @snd_ice1712_delta1010lt_wordclock_status_get._entry_ptr, ptr @snd_ice1712_delta_init._entry, ptr @snd_ice1712_delta_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @snd_ice1712_delta_cards, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @ap_cs8427_i2c_ops, ptr @akm_audiophile, ptr @akm_audiophile_priv, ptr @akm_delta410, ptr @akm_delta410_priv, ptr @akm_delta1010lt, ptr @akm_delta1010lt_priv, ptr @akm_delta44, ptr @akm_delta44_priv, ptr @akm_vx442, ptr @akm_vx442_priv, ptr @akm_delta66e, ptr @akm_delta66e_priv, ptr @.str.26, ptr @snd_ice1712_delta1010_wordclock_select, ptr @snd_ice1712_delta1010_wordclock_status, ptr @snd_ice1712_deltadio2496_spdif_in_select, ptr @snd_ice1712_delta1010lt_wordclock_select, ptr @snd_ice1712_delta1010lt_wordclock_status, ptr @snd_ice1712_delta_spdif_in_status, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_delta_cards to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_delta_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_cs8427_i2c_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_audiophile to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_audiophile_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_delta410 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_delta410_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_delta1010lt to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_delta1010lt_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_delta44 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_delta44_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_vx442 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_vx442_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_delta66e to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_delta66e_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_delta1010_wordclock_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_delta1010_wordclock_status to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_deltadio2496_spdif_in_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_delta1010lt_wordclock_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_delta1010lt_wordclock_status to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_delta_spdif_in_status to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_delta1010lt_wordclock_status_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_delta_init(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 303313110, i32 %1)
  %cmp = icmp eq i32 %1, 303313110
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gpiodir = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 6
  %2 = ptrtoint ptr %gpiodir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpiodir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %3)
  %cmp2 = icmp eq i32 %3, 123
  br i1 %cmp2, label %if.end15.thread, label %if.endthread-pre-split

if.end15.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -15453994, ptr %eeprom, align 4
  br label %sw.bb30

if.endthread-pre-split:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %eeprom, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %6 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 303313622, i32 %6)
  %cmp7 = icmp eq i32 %6, 303313622
  br i1 %cmp7, label %land.lhs.true8, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true8:                                   ; preds = %if.end
  %gpiodir10 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29, i32 6
  %7 = ptrtoint ptr %gpiodir10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpiodir10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %8)
  %cmp11 = icmp eq i32 %8, 251
  br i1 %cmp11, label %if.end15.thread191, label %land.lhs.true8.if.end15_crit_edge

land.lhs.true8.if.end15_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15.thread191:                               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %eeprom to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -15453482, ptr %eeprom, align 4
  br label %sw.bb35

if.end15:                                         ; preds = %land.lhs.true8.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %10 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr190 = load i32, ptr %eeprom, align 4
  %11 = zext i32 %.pr190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr190, label %if.end15.sw.epilog_crit_edge [
    i32 303314134, label %sw.bb
    i32 303315158, label %sw.bb18
    i32 303313878, label %if.end15.sw.bb21_crit_edge
    i32 303313622, label %if.end15.sw.bb21_crit_edge193
    i32 303313110, label %if.end15.sw.bb30_crit_edge
    i32 -15453994, label %if.end15.sw.bb30_crit_edge194
    i32 303315926, label %if.end15.sw.bb30_crit_edge195
    i32 1766588672, label %if.end15.sw.bb30_crit_edge196
    i32 -837402608, label %if.end15.sw.bb30_crit_edge197
    i32 303313366, label %sw.bb33
    i32 303316182, label %if.end15.sw.bb35_crit_edge
    i32 -15453482, label %if.end15.sw.bb35_crit_edge198
  ]

if.end15.sw.bb35_crit_edge198:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35

if.end15.sw.bb35_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35

if.end15.sw.bb30_crit_edge197:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.end15.sw.bb30_crit_edge196:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.end15.sw.bb30_crit_edge195:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.end15.sw.bb30_crit_edge194:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.end15.sw.bb30_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

if.end15.sw.bb21_crit_edge193:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

if.end15.sw.bb21_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %num_total_dacs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %12 = ptrtoint ptr %num_total_dacs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %num_total_dacs, align 4
  %num_total_adcs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %13 = ptrtoint ptr %num_total_adcs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %num_total_adcs, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %num_total_dacs19 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %14 = ptrtoint ptr %num_total_dacs19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %num_total_dacs19, align 4
  %num_total_adcs20 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %15 = ptrtoint ptr %num_total_adcs20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %num_total_adcs20, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end15.sw.bb21_crit_edge, %if.end15.sw.bb21_crit_edge193
  %omni = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 32
  %16 = ptrtoint ptr %omni to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %omni, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  %cond = select i1 %tobool.not, i32 4, i32 8
  %num_total_dacs22 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %17 = ptrtoint ptr %num_total_dacs22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %num_total_dacs22, align 4
  %num_total_adcs29 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %18 = ptrtoint ptr %num_total_adcs29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %num_total_adcs29, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end15.sw.bb30_crit_edge, %if.end15.sw.bb30_crit_edge194, %if.end15.sw.bb30_crit_edge195, %if.end15.sw.bb30_crit_edge196, %if.end15.sw.bb30_crit_edge197, %if.end15.thread
  %num_total_dacs31 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %19 = ptrtoint ptr %num_total_dacs31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %num_total_dacs31, align 4
  %num_total_adcs32 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %20 = ptrtoint ptr %num_total_adcs32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %num_total_adcs32, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %num_total_dacs34 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %21 = ptrtoint ptr %num_total_dacs34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %num_total_dacs34, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end15.sw.bb35_crit_edge, %if.end15.sw.bb35_crit_edge198, %if.end15.thread191
  %num_total_dacs36 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %22 = ptrtoint ptr %num_total_dacs36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %num_total_dacs36, align 4
  %num_total_adcs37 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %23 = ptrtoint ptr %num_total_adcs37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %num_total_adcs37, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb33, %sw.bb30, %sw.bb21, %sw.bb18, %sw.bb, %if.end15.sw.epilog_crit_edge
  %pm_resume = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 60
  %24 = ptrtoint ptr %pm_resume to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @snd_ice1712_delta_resume, ptr %pm_resume, align 4
  %pm_suspend = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 59
  %25 = ptrtoint ptr %pm_suspend to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @snd_ice1712_delta_suspend, ptr %pm_suspend, align 4
  %pm_suspend_enabled = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 61
  %26 = ptrtoint ptr %pm_suspend_enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load38 = load i8, ptr %pm_suspend_enabled, align 4
  %bf.set = or i8 %bf.load38, -128
  store i8 %bf.set, ptr %pm_suspend_enabled, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 4
  %add.i = add i32 %28, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %29 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 32) #8, !srcloc !115
  %30 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %31, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %32 = inttoptr i32 %add5.i to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %34 = or i8 %33, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i, align 4
  %add.i185 = add i32 %36, 3
  %and.i186 = and i32 %add.i185, 1048575
  %add1.i187 = or i32 %and.i186, -18874368
  %37 = inttoptr i32 %add1.i187 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i, align 4
  %add5.i188 = add i32 %39, 4
  %and6.i = and i32 %add5.i188, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %40 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %34) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 1073740) #8
  %42 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %eeprom, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %43, label %sw.epilog.sw.epilog73_crit_edge [
    i32 303314134, label %sw.epilog.sw.bb42_crit_edge
    i32 303315158, label %sw.epilog.sw.bb42_crit_edge199
    i32 -15453994, label %sw.epilog.sw.bb42_crit_edge200
    i32 303315926, label %sw.epilog.sw.bb42_crit_edge201
    i32 303316182, label %sw.epilog.sw.bb42_crit_edge202
    i32 -15453482, label %sw.epilog.sw.bb42_crit_edge203
    i32 303313110, label %sw.epilog.sw.bb56_crit_edge
    i32 1766588672, label %sw.epilog.sw.bb56_crit_edge204
    i32 303313366, label %sw.bb57
    i32 303313622, label %sw.epilog.sw.bb60_crit_edge
  ]

sw.epilog.sw.bb60_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb60

sw.epilog.sw.bb56_crit_edge204:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56

sw.epilog.sw.bb56_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb56

sw.epilog.sw.bb42_crit_edge203:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

sw.epilog.sw.bb42_crit_edge202:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

sw.epilog.sw.bb42_crit_edge201:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

sw.epilog.sw.bb42_crit_edge200:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

sw.epilog.sw.bb42_crit_edge199:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

sw.epilog.sw.bb42_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

sw.epilog.sw.epilog73_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog73

sw.bb42:                                          ; preds = %sw.epilog.sw.bb42_crit_edge, %sw.epilog.sw.bb42_crit_edge199, %sw.epilog.sw.bb42_crit_edge200, %sw.epilog.sw.bb42_crit_edge201, %sw.epilog.sw.bb42_crit_edge202, %sw.epilog.sw.bb42_crit_edge203
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %45 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card, align 4
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 43
  %call43 = tail call i32 @snd_i2c_bus_create(ptr noundef %46, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef %i2c) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end, label %if.end48

do.end:                                           ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end48:                                         ; preds = %sw.bb42
  %51 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c, align 4
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %ice, ptr %private_data, align 4
  %54 = load ptr, ptr %i2c, align 4
  %ops = getelementptr inbounds %struct.snd_i2c_bus, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @ap_cs8427_i2c_ops, ptr %ops, align 4
  %call51 = tail call i32 @snd_ice1712_init_cs8427(ptr noundef %ice, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end48.cleanup_crit_edge, label %if.end48.sw.epilog73thread-pre-split_crit_edge

if.end48.sw.epilog73thread-pre-split_crit_edge:   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog73thread-pre-split

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb56:                                          ; preds = %sw.epilog.sw.bb56_crit_edge, %sw.epilog.sw.bb56_crit_edge204
  %set_pro_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 9
  %56 = ptrtoint ptr %set_pro_rate to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @delta_1010_set_rate_val, ptr %set_pro_rate, align 4
  br label %sw.epilog73thread-pre-split

sw.bb57:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %set_pro_rate59 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 46, i32 9
  %57 = ptrtoint ptr %set_pro_rate59 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @delta_1010_set_rate_val, ptr %set_pro_rate59, align 4
  br label %sw.bb60

sw.bb60:                                          ; preds = %sw.bb57, %sw.epilog.sw.bb60_crit_edge
  %spdif = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41
  %ops61 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3
  %58 = ptrtoint ptr %ops61 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @delta_open_spdif, ptr %ops61, align 4
  %setup_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 1
  %59 = ptrtoint ptr %setup_rate to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @delta_setup_spdif, ptr %setup_rate, align 4
  %default_get = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 3
  %60 = ptrtoint ptr %default_get to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @delta_spdif_default_get, ptr %default_get, align 4
  %default_put = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 4
  %61 = ptrtoint ptr %default_put to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @delta_spdif_default_put, ptr %default_put, align 4
  %stream_get = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 5
  %62 = ptrtoint ptr %stream_get to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @delta_spdif_stream_get, ptr %stream_get, align 4
  %stream_put = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 6
  %63 = ptrtoint ptr %stream_put to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @delta_spdif_stream_put, ptr %stream_put, align 4
  %64 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %spdif, align 4
  tail call fastcc void @snd_ice1712_delta_cs8403_spdif_write(ptr noundef %ice, i8 noundef zeroext %65)
  br label %sw.epilog73thread-pre-split

sw.epilog73thread-pre-split:                      ; preds = %sw.bb60, %sw.bb56, %if.end48.sw.epilog73thread-pre-split_crit_edge
  %66 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr192 = load i32, ptr %eeprom, align 4
  br label %sw.epilog73

sw.epilog73:                                      ; preds = %sw.epilog73thread-pre-split, %sw.epilog.sw.epilog73_crit_edge
  %67 = phi i32 [ %.pr192, %sw.epilog73thread-pre-split ], [ %43, %sw.epilog.sw.epilog73_crit_edge ]
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %67, label %sw.epilog77 [
    i32 303313110, label %sw.epilog73.cleanup_crit_edge
    i32 -15453994, label %sw.epilog73.cleanup_crit_edge205
    i32 303313366, label %sw.epilog73.cleanup_crit_edge206
    i32 1766588672, label %sw.epilog73.cleanup_crit_edge207
  ]

sw.epilog73.cleanup_crit_edge207:                 ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog73.cleanup_crit_edge206:                 ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog73.cleanup_crit_edge205:                 ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog73.cleanup_crit_edge:                    ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog77:                                      ; preds = %sw.epilog73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3264, i32 noundef 216) #12
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %70 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i, ptr %akm, align 4
  %tobool79.not = icmp eq ptr %call7.i, null
  br i1 %tobool79.not, label %sw.epilog77.cleanup_crit_edge, label %if.end81

sw.epilog77.cleanup_crit_edge:                    ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end81:                                         ; preds = %sw.epilog77
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %71 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %akm_codecs, align 4
  %72 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %eeprom, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %73, label %do.end103 [
    i32 303314134, label %sw.bb84
    i32 303315158, label %sw.bb86
    i32 303315926, label %if.end81.sw.bb88_crit_edge
    i32 -837402608, label %if.end81.sw.bb88_crit_edge208
    i32 303313622, label %if.end81.sw.bb90_crit_edge
    i32 303313878, label %if.end81.sw.bb90_crit_edge209
    i32 303316182, label %sw.bb92
    i32 -15453482, label %sw.bb94
  ]

if.end81.sw.bb90_crit_edge209:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end81.sw.bb90_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.end81.sw.bb88_crit_edge208:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb88

if.end81.sw.bb88_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb88

sw.bb84:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %call85 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @akm_audiophile, ptr noundef nonnull @akm_audiophile_priv, ptr noundef %ice) #8
  br label %cleanup

sw.bb86:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @akm_delta410, ptr noundef nonnull @akm_delta410_priv, ptr noundef %ice) #8
  br label %cleanup

sw.bb88:                                          ; preds = %if.end81.sw.bb88_crit_edge, %if.end81.sw.bb88_crit_edge208
  %call89 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @akm_delta1010lt, ptr noundef nonnull @akm_delta1010lt_priv, ptr noundef %ice) #8
  br label %cleanup

sw.bb90:                                          ; preds = %if.end81.sw.bb90_crit_edge, %if.end81.sw.bb90_crit_edge209
  %call91 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @akm_delta44, ptr noundef nonnull @akm_delta44_priv, ptr noundef %ice) #8
  br label %cleanup

sw.bb92:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %call93 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @akm_vx442, ptr noundef nonnull @akm_vx442_priv, ptr noundef %ice) #8
  br label %cleanup

sw.bb94:                                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %call95 = tail call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i, ptr noundef nonnull @akm_delta66e, ptr noundef nonnull @akm_delta66e_priv, ptr noundef %ice) #8
  br label %cleanup

do.end103:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 746, i32 noundef 9, ptr noundef nonnull @.str.26) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %sw.bb94, %sw.bb92, %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb84, %sw.epilog77.cleanup_crit_edge, %sw.epilog73.cleanup_crit_edge, %sw.epilog73.cleanup_crit_edge205, %sw.epilog73.cleanup_crit_edge206, %sw.epilog73.cleanup_crit_edge207, %if.end48.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end103 ], [ %call43, %do.end ], [ %call51, %if.end48.cleanup_crit_edge ], [ 0, %sw.epilog73.cleanup_crit_edge ], [ 0, %sw.epilog73.cleanup_crit_edge205 ], [ 0, %sw.epilog73.cleanup_crit_edge206 ], [ 0, %sw.epilog73.cleanup_crit_edge207 ], [ -12, %sw.epilog77.cleanup_crit_edge ], [ %call95, %sw.bb94 ], [ %call93, %sw.bb92 ], [ %call91, %sw.bb90 ], [ %call89, %sw.bb88 ], [ %call87, %sw.bb86 ], [ %call85, %sw.bb84 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_delta_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 303313110, label %entry.sw.bb_crit_edge
    i32 1766588672, label %entry.sw.bb_crit_edge87
    i32 303313366, label %sw.bb8
    i32 -15453994, label %entry.sw.bb15_crit_edge
    i32 303315926, label %entry.sw.bb15_crit_edge88
  ]

entry.sw.bb15_crit_edge88:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb15

entry.sw.bb_crit_edge87:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge87
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_delta1010_wordclock_select, ptr noundef %ice) #8
  %call1 = tail call i32 @snd_ctl_add(ptr noundef %4, ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %call3 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_delta1010_wordclock_status, ptr noundef %ice) #8
  %call4 = tail call i32 @snd_ctl_add(ptr noundef %6, ptr noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end.sw.epilogthread-pre-split_crit_edge

if.end.sw.epilogthread-pre-split_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %card9 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %7 = ptrtoint ptr %card9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card9, align 4
  %call10 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_deltadio2496_spdif_in_select, ptr noundef %ice) #8
  %call11 = tail call i32 @snd_ctl_add(ptr noundef %8, ptr noundef %call10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %sw.bb8.cleanup_crit_edge, label %sw.bb8.sw.epilogthread-pre-split_crit_edge

sw.bb8.sw.epilogthread-pre-split_crit_edge:       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb15:                                          ; preds = %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge88
  %card16 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %9 = ptrtoint ptr %card16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card16, align 4
  %call17 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_delta1010lt_wordclock_select, ptr noundef %ice) #8
  %call18 = tail call i32 @snd_ctl_add(ptr noundef %10, ptr noundef %call17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %sw.bb15.cleanup_crit_edge, label %if.end21

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %sw.bb15
  %11 = ptrtoint ptr %card16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card16, align 4
  %call23 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_delta1010lt_wordclock_status, ptr noundef %ice) #8
  %call24 = tail call i32 @snd_ctl_add(ptr noundef %12, ptr noundef %call23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end21.cleanup_crit_edge, label %if.end21.sw.epilogthread-pre-split_crit_edge

if.end21.sw.epilogthread-pre-split_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilogthread-pre-split:                        ; preds = %if.end21.sw.epilogthread-pre-split_crit_edge, %sw.bb8.sw.epilogthread-pre-split_crit_edge, %if.end.sw.epilogthread-pre-split_crit_edge
  %13 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %eeprom, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %entry.sw.epilog_crit_edge
  %14 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %1, %entry.sw.epilog_crit_edge ]
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %14, label %sw.epilog.sw.epilog35_crit_edge [
    i32 303313110, label %sw.epilog.sw.bb30_crit_edge
    i32 303313366, label %sw.epilog.sw.bb30_crit_edge89
    i32 303313622, label %sw.epilog.sw.bb30_crit_edge90
    i32 1766588672, label %sw.epilog.sw.bb30_crit_edge91
  ]

sw.epilog.sw.bb30_crit_edge91:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

sw.epilog.sw.bb30_crit_edge90:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

sw.epilog.sw.bb30_crit_edge89:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

sw.epilog.sw.bb30_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30

sw.epilog.sw.epilog35_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog35

sw.bb30:                                          ; preds = %sw.epilog.sw.bb30_crit_edge, %sw.epilog.sw.bb30_crit_edge89, %sw.epilog.sw.bb30_crit_edge90, %sw.epilog.sw.bb30_crit_edge91
  %call31 = tail call i32 @snd_ice1712_spdif_build_controls(ptr noundef %ice) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %sw.bb30.cleanup_crit_edge, label %sw.bb30.sw.epilog35_crit_edge

sw.bb30.sw.epilog35_crit_edge:                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog35

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog35:                                      ; preds = %sw.bb30.sw.epilog35_crit_edge, %sw.epilog.sw.epilog35_crit_edge
  %16 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eeprom, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %17, label %sw.epilog35.sw.epilog45_crit_edge [
    i32 303313110, label %sw.epilog35.sw.bb38_crit_edge
    i32 303313366, label %sw.epilog35.sw.bb38_crit_edge92
    i32 303313622, label %sw.epilog35.sw.bb38_crit_edge93
    i32 1766588672, label %sw.epilog35.sw.bb38_crit_edge94
  ]

sw.epilog35.sw.bb38_crit_edge94:                  ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

sw.epilog35.sw.bb38_crit_edge93:                  ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

sw.epilog35.sw.bb38_crit_edge92:                  ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

sw.epilog35.sw.bb38_crit_edge:                    ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38

sw.epilog35.sw.epilog45_crit_edge:                ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog45

sw.bb38:                                          ; preds = %sw.epilog35.sw.bb38_crit_edge, %sw.epilog35.sw.bb38_crit_edge92, %sw.epilog35.sw.bb38_crit_edge93, %sw.epilog35.sw.bb38_crit_edge94
  %card39 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %19 = ptrtoint ptr %card39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card39, align 4
  %call40 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_delta_spdif_in_status, ptr noundef %ice) #8
  %call41 = tail call i32 @snd_ctl_add(ptr noundef %20, ptr noundef %call40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %sw.bb38.cleanup_crit_edge, label %sw.epilog45thread-pre-split

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog45thread-pre-split:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr86 = load i32, ptr %eeprom, align 4
  br label %sw.epilog45

sw.epilog45:                                      ; preds = %sw.epilog45thread-pre-split, %sw.epilog35.sw.epilog45_crit_edge
  %22 = phi i32 [ %.pr86, %sw.epilog45thread-pre-split ], [ %17, %sw.epilog35.sw.epilog45_crit_edge ]
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %22, label %sw.epilog45.sw.epilog53_crit_edge [
    i32 303315926, label %sw.epilog45.sw.bb48_crit_edge
    i32 303314134, label %sw.epilog45.sw.bb48_crit_edge95
    i32 303315158, label %sw.epilog45.sw.bb48_crit_edge96
    i32 303313878, label %sw.epilog45.sw.bb48_crit_edge97
    i32 303313622, label %sw.epilog45.sw.bb48_crit_edge98
    i32 303316182, label %sw.epilog45.sw.bb48_crit_edge99
    i32 -15453482, label %sw.epilog45.sw.bb48_crit_edge100
    i32 -837402608, label %sw.epilog45.sw.bb48_crit_edge101
  ]

sw.epilog45.sw.bb48_crit_edge101:                 ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

sw.epilog45.sw.bb48_crit_edge100:                 ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

sw.epilog45.sw.bb48_crit_edge99:                  ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

sw.epilog45.sw.bb48_crit_edge98:                  ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

sw.epilog45.sw.bb48_crit_edge97:                  ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

sw.epilog45.sw.bb48_crit_edge96:                  ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

sw.epilog45.sw.bb48_crit_edge95:                  ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

sw.epilog45.sw.bb48_crit_edge:                    ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb48

sw.epilog45.sw.epilog53_crit_edge:                ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog53

sw.bb48:                                          ; preds = %sw.epilog45.sw.bb48_crit_edge, %sw.epilog45.sw.bb48_crit_edge95, %sw.epilog45.sw.bb48_crit_edge96, %sw.epilog45.sw.bb48_crit_edge97, %sw.epilog45.sw.bb48_crit_edge98, %sw.epilog45.sw.bb48_crit_edge99, %sw.epilog45.sw.bb48_crit_edge100, %sw.epilog45.sw.bb48_crit_edge101
  %call49 = tail call i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef %ice) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %sw.bb48.cleanup_crit_edge, label %sw.bb48.sw.epilog53_crit_edge

sw.bb48.sw.epilog53_crit_edge:                    ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog53

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog53:                                      ; preds = %sw.bb48.sw.epilog53_crit_edge, %sw.epilog45.sw.epilog53_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog53, %sw.bb48.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog53 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call11, %sw.bb8.cleanup_crit_edge ], [ %call18, %sw.bb15.cleanup_crit_edge ], [ %call24, %if.end21.cleanup_crit_edge ], [ %call31, %sw.bb30.cleanup_crit_edge ], [ %call41, %sw.bb38.cleanup_crit_edge ], [ %call49, %sw.bb48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_delta_resume(ptr noundef %ice) #0 align 64 {
entry:
  %akm_img_bak = alloca [64 x i8], align 1
  %akm_vol_bak = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %akm_img_bak)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %akm_vol_bak)
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 303314134, label %entry.sw.bb_crit_edge
    i32 303315158, label %entry.sw.bb_crit_edge28
    i32 -15453994, label %entry.sw.bb_crit_edge29
    i32 303315926, label %entry.sw.bb_crit_edge30
    i32 303316182, label %entry.sw.bb_crit_edge31
    i32 -15453482, label %entry.sw.bb_crit_edge32
    i32 303313622, label %entry.sw.bb2_crit_edge
    i32 303313366, label %entry.sw.bb2_crit_edge33
  ]

entry.sw.bb2_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge31:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge28:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge28, %entry.sw.bb_crit_edge29, %entry.sw.bb_crit_edge30, %entry.sw.bb_crit_edge31, %entry.sw.bb_crit_edge32
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 43
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 4
  %cs8427 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 44
  %5 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cs8427, align 4
  %call = tail call i32 @snd_cs8427_init(ptr noundef %4, ptr noundef %6) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge33
  %spdif = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41
  %7 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %spdif, align 4
  tail call fastcc void @snd_ice1712_delta_cs8403_spdif_write(ptr noundef %ice, i8 noundef zeroext %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %9 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %akm_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %11 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %akm, align 4
  %images = getelementptr inbounds %struct.snd_akm4xxx, ptr %12, i32 0, i32 3
  %13 = call ptr @memcpy(ptr %akm_img_bak, ptr %images, i32 64)
  %volumes = getelementptr inbounds %struct.snd_akm4xxx, ptr %12, i32 0, i32 4
  %14 = call ptr @memcpy(ptr %akm_vol_bak, ptr %volumes, i32 64)
  tail call void @snd_akm4xxx_init(ptr noundef %12) #8
  %15 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %akm, align 4
  %images9 = getelementptr inbounds %struct.snd_akm4xxx, ptr %16, i32 0, i32 3
  %17 = call ptr @memcpy(ptr %images9, ptr %akm_img_bak, i32 64)
  %18 = load ptr, ptr %akm, align 4
  %volumes13 = getelementptr inbounds %struct.snd_akm4xxx, ptr %18, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %volumes13, ptr %akm_vol_bak, i32 64)
  %20 = load ptr, ptr %akm, align 4
  tail call void @snd_akm4xxx_reset(ptr noundef %20, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %akm_vol_bak)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %akm_img_bak)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_delta_suspend(ptr nocapture noundef readonly %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %0 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %akm_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %2 = ptrtoint ptr %akm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %akm, align 4
  tail call void @snd_akm4xxx_reset(ptr noundef %3, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_bus_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_init_cs8427(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_1010_set_rate_val(ptr noundef %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 32) #8, !srcloc !115
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %4, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %5 = inttoptr i32 %add5.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %and = and i8 %6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp2 = icmp ugt i32 %rate, 48000
  %masksel = zext i1 %cmp2 to i8
  %spec.select = or i8 %and, %masksel
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %spec.select)
  %cmp10.not = icmp eq i8 %6, %spec.select
  br i1 %cmp10.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add.i24 = add i32 %8, 3
  %and.i25 = and i32 %add.i24, 1048575
  %add1.i26 = or i32 %and.i25, -18874368
  %9 = inttoptr i32 %add1.i26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add5.i27 = add i32 %11, 4
  %and6.i = and i32 %add5.i27, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %12 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %spec.select) #8, !srcloc !115
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @delta_open_spdif(ptr nocapture noundef %ice, ptr nocapture noundef readnone %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spdif = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41
  %0 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spdif, align 4
  %cs8403_stream_bits = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 1
  %2 = ptrtoint ptr %cs8403_stream_bits to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %cs8403_stream_bits, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_setup_spdif(ptr noundef %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 27
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #8
  %cs8403_stream_bits = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 1
  %0 = ptrtoint ptr %cs8403_stream_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs8403_stream_bits, align 1
  %conv6 = zext i8 %1 to i32
  %and = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and9 = and i32 %conv6, 249
  %spec.select = select i1 %tobool.not, i32 %conv6, i32 %and9
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %rate, label %sw.default [
    i32 32000, label %sw.bb
    i32 44100, label %sw.bb13
    i32 48000, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and10 = shl nuw nsw i32 %spec.select, 2
  %3 = and i32 %and10, 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = shl nuw nsw i32 %spec.select, 4
  %4 = and i32 %and14, 16
  %5 = xor i32 %4, 16
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and19 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond21 = select i1 %tobool20.not, i32 8, i32 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and23 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %cond25 = select i1 %tobool24.not, i32 24, i32 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb13, %sw.bb
  %cond25.pn = phi i32 [ %cond25, %sw.default ], [ %cond21, %sw.bb18 ], [ %5, %sw.bb13 ], [ %3, %sw.bb ]
  %tmp.1 = or i32 %cond25.pn, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.1, i32 %conv6)
  %cmp30.not = icmp eq i32 %tmp.1, %conv6
  %conv32 = trunc i32 %tmp.1 to i8
  %6 = ptrtoint ptr %cs8403_stream_bits to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv32, ptr %cs8403_stream_bits, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #8
  br i1 %cmp30.not, label %sw.epilog.if.end39_crit_edge, label %if.then37

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then37:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %stream_ctl = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 2
  %9 = ptrtoint ptr %stream_ctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %10, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %8, i32 noundef 1, ptr noundef %id) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %sw.epilog.if.end39_crit_edge
  tail call fastcc void @snd_ice1712_delta_cs8403_spdif_write(ptr noundef %ice, i8 noundef zeroext %conv32)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @delta_spdif_default_get(ptr nocapture noundef readonly %ice, ptr noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %spdif = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41
  %0 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spdif, align 4
  tail call fastcc void @snd_cs8403_decode_spdif_bits(ptr noundef %value, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_spdif_default_put(ptr noundef %ice, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call = tail call fastcc zeroext i8 @snd_cs8403_encode_spdif_bits(ptr noundef %value)
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %spdif = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41
  %0 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spdif, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %call)
  %cmp = icmp ne i8 %1, %call
  %2 = ptrtoint ptr %spdif to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call, ptr %spdif, align 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 17
  %3 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %playback_pro_substream, align 4
  %cmp6 = icmp eq ptr %4, null
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  tail call fastcc void @snd_ice1712_delta_cs8403_spdif_write(ptr noundef %ice, i8 noundef zeroext %call)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @delta_spdif_stream_get(ptr nocapture noundef readonly %ice, ptr noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %cs8403_stream_bits = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 1
  %0 = ptrtoint ptr %cs8403_stream_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs8403_stream_bits, align 1
  tail call fastcc void @snd_cs8403_decode_spdif_bits(ptr noundef %value, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_spdif_stream_put(ptr noundef %ice, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call = tail call fastcc zeroext i8 @snd_cs8403_encode_spdif_bits(ptr noundef %value)
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #8
  %cs8403_stream_bits = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 1
  %0 = ptrtoint ptr %cs8403_stream_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs8403_stream_bits, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %call)
  %cmp = icmp ne i8 %1, %call
  %2 = ptrtoint ptr %cs8403_stream_bits to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call, ptr %cs8403_stream_bits, align 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 17
  %3 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %playback_pro_substream, align 4
  %cmp6.not = icmp eq ptr %4, null
  br i1 %cmp6.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  tail call fastcc void @snd_ice1712_delta_cs8403_spdif_write(ptr noundef %ice, i8 noundef zeroext %call)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ice1712_delta_cs8403_spdif_write(ptr noundef %ice, i8 noundef zeroext %bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 32) #8, !srcloc !115
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %4, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %5 = inttoptr i32 %add5.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %conv4 = zext i8 %bits to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.056 = phi i32 [ 7, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %tmp.055 = phi i8 [ %6, %entry ], [ %16, %for.body.for.body_crit_edge ]
  %7 = and i8 %tmp.055, -13
  %shl = shl nuw i32 1, %idx.056
  %and5 = and i32 %shl, %conv4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  %8 = or i8 %7, 8
  %spec.select = select i1 %tobool.not, i8 %7, i8 %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i37 = add i32 %10, 3
  %and.i38 = and i32 %add.i37, 1048575
  %add1.i39 = or i32 %and.i38, -18874368
  %11 = inttoptr i32 %add1.i39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add5.i40 = add i32 %13, 4
  %and6.i = and i32 %add5.i40, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %14 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %spec.select) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 21474800) #8
  %16 = or i8 %spec.select, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %add.i42 = add i32 %18, 3
  %and.i43 = and i32 %add.i42, 1048575
  %add1.i44 = or i32 %and.i43, -18874368
  %19 = inttoptr i32 %add1.i44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add5.i45 = add i32 %21, 4
  %and6.i46 = and i32 %add5.i45, 1048575
  %add7.i47 = or i32 %and6.i46, -18874368
  %22 = inttoptr i32 %add7.i47 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %16) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 21474800) #8
  %dec = add nsw i32 %idx.056, -1
  %cmp.not = icmp eq i32 %idx.056, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add.i49 = add i32 %25, 3
  %and.i50 = and i32 %add.i49, 1048575
  %add1.i51 = or i32 %and.i50, -18874368
  %26 = inttoptr i32 %add1.i51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 4
  %add5.i52 = add i32 %28, 4
  %and6.i53 = and i32 %add5.i52, 1048575
  %add7.i54 = or i32 %and6.i53, -18874368
  %29 = inttoptr i32 %add7.i54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %spec.select) #8, !srcloc !115
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs8427_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_akm4xxx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_akm4xxx_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_cs8427_sendbytes(ptr nocapture noundef readonly %device, ptr nocapture noundef readonly %bytes, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %call = tail call fastcc zeroext i8 @ap_cs8427_codec_select(ptr noundef %3)
  %addr = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %conv = trunc i16 %5 to i8
  %shl = shl i8 %conv, 1
  tail call fastcc void @ap_cs8427_write_byte(ptr noundef %3, i8 noundef zeroext %shl, i8 noundef zeroext %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp13 = icmp sgt i32 %count, 0
  br i1 %cmp13, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %count.addr.015 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %bytes.addr.014 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %bytes, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %count.addr.015, -1
  %incdec.ptr = getelementptr i8, ptr %bytes.addr.014, i32 1
  %6 = ptrtoint ptr %bytes.addr.014 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bytes.addr.014, align 1
  tail call fastcc void @ap_cs8427_write_byte(ptr noundef %3, i8 noundef zeroext %7, i8 noundef zeroext %call)
  %cmp = icmp ugt i32 %count.addr.015, 1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call fastcc void @ap_cs8427_codec_deassert(ptr noundef %3, i8 noundef zeroext %call)
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap_cs8427_readbytes(ptr nocapture noundef readonly %device, ptr nocapture noundef writeonly %bytes, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  %call = tail call fastcc zeroext i8 @ap_cs8427_codec_select(ptr noundef %3)
  %addr = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %conv = trunc i16 %5 to i8
  %shl = shl i8 %conv, 1
  %or = or i8 %shl, 1
  tail call fastcc void @ap_cs8427_write_byte(ptr noundef %3, i8 noundef zeroext %or, i8 noundef zeroext %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp14 = icmp sgt i32 %count, 0
  br i1 %cmp14, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %port.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 5
  %6 = or i8 %call, 2
  %7 = and i8 %call, -3
  br label %while.body

while.body:                                       ; preds = %ap_cs8427_read_byte.exit.while.body_crit_edge, %while.body.lr.ph
  %count.addr.016 = phi i32 [ %count, %while.body.lr.ph ], [ %dec, %ap_cs8427_read_byte.exit.while.body_crit_edge ]
  %bytes.addr.015 = phi ptr [ %bytes, %while.body.lr.ph ], [ %incdec.ptr, %ap_cs8427_read_byte.exit.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i.i, align 4
  %add.i.peel.i = add i32 %9, 3
  %and.i.peel.i = and i32 %add.i.peel.i, 1048575
  %add1.i.peel.i = or i32 %and.i.peel.i, -18874368
  %10 = inttoptr i32 %add1.i.peel.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i.i, align 4
  %add5.i.peel.i = add i32 %12, 4
  %and6.i.peel.i = and i32 %add5.i.peel.i, 1048575
  %add7.i.peel.i = or i32 %and6.i.peel.i, -18874368
  %13 = inttoptr i32 %add7.i.peel.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %7) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i.i, align 4
  %add.i18.peel.i = add i32 %16, 3
  %and.i19.peel.i = and i32 %add.i18.peel.i, 1048575
  %add1.i20.peel.i = or i32 %and.i19.peel.i, -18874368
  %17 = inttoptr i32 %add1.i20.peel.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 32) #8, !srcloc !115
  %18 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i.i, align 4
  %add3.i.peel.i = add i32 %19, 4
  %and4.i.peel.i = and i32 %add3.i.peel.i, 1048575
  %add5.i21.peel.i = or i32 %and4.i.peel.i, -18874368
  %20 = inttoptr i32 %add5.i21.peel.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i.i, align 4
  %add.i23.peel.i = add i32 %23, 3
  %and.i24.peel.i = and i32 %add.i23.peel.i, 1048575
  %add1.i25.peel.i = or i32 %and.i24.peel.i, -18874368
  %24 = inttoptr i32 %add1.i25.peel.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i.i, align 4
  %add5.i26.peel.i = add i32 %26, 4
  %and6.i27.peel.i = and i32 %add5.i26.peel.i, 1048575
  %add7.i28.peel.i = or i32 %and6.i27.peel.i, -18874368
  %27 = inttoptr i32 %add7.i28.peel.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %6) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 1073740) #8
  %29 = shl i8 %21, 5
  %30 = and i8 %29, -128
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body
  %idx.031.i = phi i32 [ 6, %while.body ], [ %dec.i, %for.body.i.for.body.i_crit_edge ]
  %data.030.i = phi i8 [ %30, %while.body ], [ %data.1.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i.i, align 4
  %add.i.i = add i32 %32, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %33 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %port.i.i, align 4
  %add5.i.i = add i32 %35, 4
  %and6.i.i = and i32 %add5.i.i, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %36 = inttoptr i32 %add7.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %7) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i.i, align 4
  %add.i18.i = add i32 %39, 3
  %and.i19.i = and i32 %add.i18.i, 1048575
  %add1.i20.i = or i32 %and.i19.i, -18874368
  %40 = inttoptr i32 %add1.i20.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 32) #8, !srcloc !115
  %41 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port.i.i, align 4
  %add3.i.i = add i32 %42, 4
  %and4.i.i = and i32 %add3.i.i, 1048575
  %add5.i21.i = or i32 %and4.i.i, -18874368
  %43 = inttoptr i32 %add5.i21.i to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %45 = and i8 %44, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i = icmp eq i8 %45, 0
  %shl.i = shl nuw i32 1, %idx.031.i
  %46 = trunc i32 %shl.i to i8
  %conv5.i = select i1 %tobool.not.i, i8 0, i8 %46
  %data.1.i = or i8 %conv5.i, %data.030.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port.i.i, align 4
  %add.i23.i = add i32 %48, 3
  %and.i24.i = and i32 %add.i23.i, 1048575
  %add1.i25.i = or i32 %and.i24.i, -18874368
  %49 = inttoptr i32 %add1.i25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %port.i.i, align 4
  %add5.i26.i = add i32 %51, 4
  %and6.i27.i = and i32 %add5.i26.i, 1048575
  %add7.i28.i = or i32 %and6.i27.i, -18874368
  %52 = inttoptr i32 %add7.i28.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %6) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 1073740) #8
  %dec.i = add nsw i32 %idx.031.i, -1
  %cmp.not.i = icmp eq i32 %idx.031.i, 0
  br i1 %cmp.not.i, label %ap_cs8427_read_byte.exit, label %for.body.i.for.body.i_crit_edge, !llvm.loop !120

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ap_cs8427_read_byte.exit:                         ; preds = %for.body.i
  %dec = add nsw i32 %count.addr.016, -1
  %incdec.ptr = getelementptr i8, ptr %bytes.addr.015, i32 1
  %54 = ptrtoint ptr %bytes.addr.015 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %data.1.i, ptr %bytes.addr.015, align 1
  %cmp = icmp sgt i32 %count.addr.016, 1
  br i1 %cmp, label %ap_cs8427_read_byte.exit.while.body_crit_edge, label %ap_cs8427_read_byte.exit.while.end_crit_edge

ap_cs8427_read_byte.exit.while.end_crit_edge:     ; preds = %ap_cs8427_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

ap_cs8427_read_byte.exit.while.body_crit_edge:    ; preds = %ap_cs8427_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %ap_cs8427_read_byte.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call fastcc void @ap_cs8427_codec_deassert(ptr noundef %3, i8 noundef zeroext %call)
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  ret i32 %count
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ap_cs8427_probeaddr(ptr nocapture noundef readnone %bus, i16 noundef zeroext %addr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %addr)
  %cmp = icmp eq i16 %addr, 16
  %. = select i1 %cmp, i32 1, i32 -2
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @ap_cs8427_codec_select(ptr nocapture noundef readonly %ice) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %0 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port.i, align 4
  %add.i = add i32 %1, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 32) #8, !srcloc !115
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %4, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %5 = inttoptr i32 %add5.i to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %7 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eeprom, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %8, label %entry.sw.epilog_crit_edge [
    i32 -15453994, label %entry.sw.bb_crit_edge
    i32 303315926, label %entry.sw.bb_crit_edge41
    i32 303314134, label %entry.sw.bb4_crit_edge
    i32 303315158, label %entry.sw.bb4_crit_edge42
    i32 -15453482, label %sw.bb11
    i32 303316182, label %sw.bb18
  ]

entry.sw.bb4_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge41
  %10 = and i8 %6, -115
  %11 = or i8 %10, 66
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge42
  %12 = and i8 %6, -51
  %13 = or i8 %12, 34
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = and i8 %6, -115
  %15 = or i8 %14, 98
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %16 = and i8 %6, -115
  %17 = or i8 %16, 98
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb11, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %tmp.0 = phi i8 [ %6, %entry.sw.epilog_crit_edge ], [ %17, %sw.bb18 ], [ %15, %sw.bb11 ], [ %13, %sw.bb4 ], [ %11, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add.i37 = add i32 %19, 3
  %and.i38 = and i32 %add.i37, 1048575
  %add1.i39 = or i32 %and.i38, -18874368
  %20 = inttoptr i32 %add1.i39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i, align 4
  %add5.i40 = add i32 %22, 4
  %and6.i = and i32 %add5.i40, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %23 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %tmp.0) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #8
  ret i8 %tmp.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ap_cs8427_write_byte(ptr nocapture noundef readonly %ice, i8 noundef zeroext %data, i8 noundef zeroext %tmp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv2 = zext i8 %data to i32
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %idx.024 = phi i32 [ 7, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %tmp.addr.023 = phi i8 [ %tmp, %entry ], [ %9, %for.body.for.body_crit_edge ]
  %0 = and i8 %tmp.addr.023, -11
  %shl = shl nuw i32 1, %idx.024
  %and3 = and i32 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %1 = or i8 %0, 8
  %spec.select = select i1 %tobool.not, i8 %0, i8 %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %6, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %7 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %spec.select) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 1073740) #8
  %9 = or i8 %spec.select, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add.i17 = add i32 %11, 3
  %and.i18 = and i32 %add.i17, 1048575
  %add1.i19 = or i32 %and.i18, -18874368
  %12 = inttoptr i32 %add1.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add5.i20 = add i32 %14, 4
  %and6.i21 = and i32 %add5.i20, 1048575
  %add7.i22 = or i32 %and6.i21, -18874368
  %15 = inttoptr i32 %add7.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %9) #8, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 1073740) #8
  %dec = add nsw i32 %idx.024, -1
  %cmp.not = icmp eq i32 %idx.024, 0
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ap_cs8427_codec_deassert(ptr nocapture noundef readonly %ice, i8 noundef zeroext %tmp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 -15453994, label %entry.sw.bb_crit_edge
    i32 303315926, label %entry.sw.bb_crit_edge22
    i32 303314134, label %entry.sw.bb4_crit_edge
    i32 303315158, label %entry.sw.bb4_crit_edge23
    i32 -15453482, label %sw.bb8
    i32 303316182, label %sw.bb12
  ]

entry.sw.bb4_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb_crit_edge22:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge22
  %3 = and i8 %tmp, -113
  %4 = or i8 %3, 80
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge23
  %5 = or i8 %tmp, 16
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = or i8 %tmp, 16
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = or i8 %tmp, 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %tmp.addr.0 = phi i8 [ %tmp, %entry.sw.epilog_crit_edge ], [ %7, %sw.bb12 ], [ %6, %sw.bb8 ], [ %5, %sw.bb4 ], [ %4, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 5
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add.i = add i32 %9, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %12, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %13 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %tmp.addr.0) #8, !srcloc !115
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @snd_cs8403_decode_spdif_bits(ptr noundef %diga, i8 noundef zeroext %bits) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %bits to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %diga to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %diga, align 1
  %2 = or i8 %1, 2
  store i8 %2, ptr %diga, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %and8 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %diga to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %diga, align 1
  %5 = or i8 %4, 4
  store i8 %5, ptr %diga, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end.if.end16_crit_edge
  %and18 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %switch.not = icmp eq i32 %and18, 0
  br i1 %switch.not, label %sw.bb24, label %if.end16.sw.epilog_crit_edge

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %diga to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %diga, align 1
  %8 = or i8 %7, 8
  store i8 %8, ptr %diga, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %if.end16.sw.epilog_crit_edge
  %and31 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then33, label %sw.epilog.if.end39_crit_edge

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then33:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx35 = getelementptr [24 x i8], ptr %diga, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx35, align 1
  %11 = or i8 %10, -128
  store i8 %11, ptr %arrayidx35, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %sw.epilog.if.end39_crit_edge
  %and41 = lshr i32 %conv, 5
  %12 = and i32 %and41, 3
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %12, label %if.end39.unreachabledefault [
    i32 0, label %if.end39.sw.epilog66.sink.split_crit_edge
    i32 1, label %sw.bb48
    i32 2, label %sw.bb54
    i32 3, label %if.end39.sw.epilog66_crit_edge
  ]

if.end39.sw.epilog66_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog66

if.end39.sw.epilog66.sink.split_crit_edge:        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog66.sink.split

sw.bb48:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog66.sink.split

sw.bb54:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog66.sink.split

if.end39.unreachabledefault:                      ; preds = %if.end39
  unreachable

sw.epilog66.sink.split:                           ; preds = %sw.bb54, %sw.bb48, %if.end39.sw.epilog66.sink.split_crit_edge
  %.sink187 = phi i8 [ 1, %sw.bb54 ], [ 2, %sw.bb48 ], [ 3, %if.end39.sw.epilog66.sink.split_crit_edge ]
  %arrayidx44 = getelementptr [24 x i8], ptr %diga, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx44, align 1
  %16 = or i8 %15, %.sink187
  store i8 %16, ptr %arrayidx44, align 1
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %sw.epilog66.sink.split, %if.end39.sw.epilog66_crit_edge
  %and68 = and i32 %conv, 6
  %17 = zext i32 %and68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %and68, label %sw.epilog66.if.end154_crit_edge [
    i32 4, label %sw.bb81
    i32 2, label %sw.epilog66.if.end154.sink.split_crit_edge
  ]

sw.epilog66.if.end154.sink.split_crit_edge:       ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154.sink.split

sw.epilog66.if.end154_crit_edge:                  ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

sw.bb81:                                          ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154.sink.split

if.else:                                          ; preds = %entry
  %and91 = lshr i8 %bits, 3
  %18 = and i8 %and91, 3
  %switch.idx.mult = mul i8 %18, -64
  %switch.offset = add i8 %switch.idx.mult, -63
  %19 = ptrtoint ptr %diga to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %switch.offset, ptr %diga, align 1
  %and118 = lshr i32 %conv, 5
  %20 = and i32 %and118, 3
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %20, label %sw.epilog116.unreachabledefault [
    i32 1, label %if.else.sw.epilog143.sink.split_crit_edge
    i32 2, label %sw.bb125
    i32 0, label %sw.bb131
    i32 3, label %if.else.sw.epilog143_crit_edge
  ]

if.else.sw.epilog143_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog143

if.else.sw.epilog143.sink.split_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog143.sink.split

sw.bb125:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog143.sink.split

sw.bb131:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog143.sink.split

sw.epilog116.unreachabledefault:                  ; preds = %if.else
  unreachable

sw.epilog143.sink.split:                          ; preds = %sw.bb131, %sw.bb125, %if.else.sw.epilog143.sink.split_crit_edge
  %.sink191 = phi i8 [ 28, %sw.bb131 ], [ 12, %sw.bb125 ], [ 4, %if.else.sw.epilog143.sink.split_crit_edge ]
  %22 = ptrtoint ptr %diga to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %diga, align 1
  %24 = or i8 %23, %.sink191
  store i8 %24, ptr %diga, align 1
  br label %sw.epilog143

sw.epilog143:                                     ; preds = %sw.epilog143.sink.split, %if.else.sw.epilog143_crit_edge
  %and145 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %sw.epilog143.if.end154_crit_edge, label %sw.epilog143.if.end154.sink.split_crit_edge

sw.epilog143.if.end154.sink.split_crit_edge:      ; preds = %sw.epilog143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154.sink.split

sw.epilog143.if.end154_crit_edge:                 ; preds = %sw.epilog143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.end154.sink.split:                             ; preds = %sw.epilog143.if.end154.sink.split_crit_edge, %sw.bb81, %sw.epilog66.if.end154.sink.split_crit_edge
  %.sink196 = phi i32 [ 3, %sw.bb81 ], [ 3, %sw.epilog66.if.end154.sink.split_crit_edge ], [ 1, %sw.epilog143.if.end154.sink.split_crit_edge ]
  %.sink194 = phi i8 [ 3, %sw.bb81 ], [ 2, %sw.epilog66.if.end154.sink.split_crit_edge ], [ 2, %sw.epilog143.if.end154.sink.split_crit_edge ]
  %arrayidx83 = getelementptr [24 x i8], ptr %diga, i32 0, i32 %.sink196
  %25 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx83, align 1
  %27 = or i8 %26, %.sink194
  store i8 %27, ptr %arrayidx83, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.end154.sink.split, %sw.epilog143.if.end154_crit_edge, %sw.epilog66.if.end154_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @snd_cs8403_encode_spdif_bits(ptr nocapture noundef readonly %diga) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %diga to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %diga, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else98

if.then:                                          ; preds = %entry
  %and4 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %. = select i1 %tobool5.not, i8 3, i8 1
  %2 = shl i8 %1, 1
  %3 = and i8 %2, 8
  %4 = or i8 %., %3
  %5 = xor i8 %4, 8
  %6 = and i8 %1, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cond = icmp eq i8 %6, 8
  %7 = or i8 %5, 16
  %bits.2 = select i1 %cond, i8 %5, i8 %7
  %arrayidx38 = getelementptr [24 x i8], ptr %diga, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx38, align 1
  %10 = or i8 %bits.2, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool41.not210 = icmp slt i8 %9, 0
  %bits.3 = select i1 %tobool41.not210, i8 %bits.2, i8 %10
  %conv53 = zext i8 %9 to i32
  %and54 = and i32 %conv53, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp = icmp eq i32 %and54, 0
  br i1 %cmp, label %if.then56, label %if.else60

if.then56:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = or i8 %bits.3, 96
  br label %if.end79

if.else60:                                        ; preds = %if.then
  %and64 = and i32 %conv53, 7
  %12 = zext i32 %and64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %and64, label %sw.bb74 [
    i32 3, label %if.else60.if.end79_crit_edge
    i32 2, label %sw.bb69
  ]

if.else60.if.end79_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

sw.bb69:                                          ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  %13 = or i8 %bits.3, 32
  br label %if.end79

sw.bb74:                                          ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #10
  %14 = or i8 %bits.3, 64
  br label %if.end79

if.end79:                                         ; preds = %sw.bb74, %sw.bb69, %if.else60.if.end79_crit_edge, %if.then56
  %bits.4 = phi i8 [ %11, %if.then56 ], [ %14, %sw.bb74 ], [ %13, %sw.bb69 ], [ %bits.3, %if.else60.if.end79_crit_edge ]
  %arrayidx81 = getelementptr [24 x i8], ptr %diga, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx81, align 1
  %17 = and i8 %16, 15
  %and83 = zext i8 %17 to i32
  %18 = zext i32 %and83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and83, label %if.end79.if.end170_crit_edge [
    i32 3, label %sw.bb93
    i32 2, label %sw.bb89
  ]

if.end79.if.end170_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

sw.bb89:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %19 = or i8 %bits.4, 2
  br label %if.end170

sw.bb93:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %20 = or i8 %bits.4, 4
  br label %if.end170

if.else98:                                        ; preds = %entry
  %and102 = and i8 %1, 2
  %21 = xor i8 %and102, 2
  %22 = lshr i8 %1, 6
  %23 = zext i8 %22 to i32
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %23, label %if.end112.unreachabledefault [
    i32 3, label %if.else98.sw.epilog134_crit_edge
    i32 1, label %sw.bb121
    i32 2, label %sw.bb125
    i32 0, label %sw.bb130
  ]

if.else98.sw.epilog134_crit_edge:                 ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog134

sw.bb121:                                         ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  %25 = or i8 %21, 16
  br label %sw.epilog134

sw.bb125:                                         ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  %26 = or i8 %21, 8
  br label %sw.epilog134

if.end112.unreachabledefault:                     ; preds = %if.else98
  unreachable

sw.bb130:                                         ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #10
  %27 = or i8 %21, 24
  br label %sw.epilog134

sw.epilog134:                                     ; preds = %sw.bb130, %sw.bb125, %sw.bb121, %if.else98.sw.epilog134_crit_edge
  %bits.6 = phi i8 [ %27, %sw.bb130 ], [ %26, %sw.bb125 ], [ %25, %sw.bb121 ], [ %21, %if.else98.sw.epilog134_crit_edge ]
  %28 = lshr i8 %1, 2
  %29 = and i8 %28, 7
  %30 = zext i8 %29 to i32
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %30, label %sw.bb152 [
    i32 1, label %sw.bb139
    i32 3, label %sw.bb143
    i32 7, label %sw.epilog134.sw.epilog156_crit_edge
  ]

sw.epilog134.sw.epilog156_crit_edge:              ; preds = %sw.epilog134
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog156

sw.bb139:                                         ; preds = %sw.epilog134
  call void @__sanitizer_cov_trace_pc() #10
  %32 = or i8 %bits.6, 32
  br label %sw.epilog156

sw.bb143:                                         ; preds = %sw.epilog134
  call void @__sanitizer_cov_trace_pc() #10
  %33 = or i8 %bits.6, 64
  br label %sw.epilog156

sw.bb152:                                         ; preds = %sw.epilog134
  call void @__sanitizer_cov_trace_pc() #10
  %34 = or i8 %bits.6, 96
  br label %sw.epilog156

sw.epilog156:                                     ; preds = %sw.bb152, %sw.bb143, %sw.bb139, %sw.epilog134.sw.epilog156_crit_edge
  %bits.7 = phi i8 [ %34, %sw.bb152 ], [ %33, %sw.bb143 ], [ %32, %sw.bb139 ], [ %bits.6, %sw.epilog134.sw.epilog156_crit_edge ]
  %arrayidx158 = getelementptr [24 x i8], ptr %diga, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx158, align 1
  %37 = and i8 %36, 15
  %and160 = zext i8 %37 to i32
  %38 = zext i32 %and160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and160, label %sw.default165 [
    i32 8, label %sw.epilog156.if.end170_crit_edge
    i32 2, label %sw.epilog156.if.end170_crit_edge211
  ]

sw.epilog156.if.end170_crit_edge211:              ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

sw.epilog156.if.end170_crit_edge:                 ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

sw.default165:                                    ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #10
  %39 = or i8 %bits.7, -128
  br label %if.end170

if.end170:                                        ; preds = %sw.default165, %sw.epilog156.if.end170_crit_edge, %sw.epilog156.if.end170_crit_edge211, %sw.bb93, %sw.bb89, %if.end79.if.end170_crit_edge
  %bits.8 = phi i8 [ %39, %sw.default165 ], [ %19, %sw.bb89 ], [ %20, %sw.bb93 ], [ %bits.4, %if.end79.if.end170_crit_edge ], [ %bits.7, %sw.epilog156.if.end170_crit_edge ], [ %bits.7, %sw.epilog156.if.end170_crit_edge211 ]
  ret i8 %bits.8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_ak4524_set_rate_val(ptr noundef %ak, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #8, !srcloc !115
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %6, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %7 = inttoptr i32 %add5.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  %and = and i8 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp3 = icmp ugt i32 %rate, 48000
  %masksel = zext i1 %cmp3 to i8
  %spec.select = or i8 %and, %masksel
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %spec.select)
  %cmp11 = icmp eq i8 %8, %spec.select
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 1) #8
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i46 = add i32 %10, 3
  %and.i47 = and i32 %add.i46, 1048575
  %add1.i48 = or i32 %and.i47, -18874368
  %11 = inttoptr i32 %add1.i48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 32) #8, !srcloc !115
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add3.i49 = add i32 %13, 4
  %and4.i50 = and i32 %add3.i49, 1048575
  %add5.i51 = or i32 %and4.i50, -18874368
  %14 = inttoptr i32 %add5.i51 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %16 = and i8 %15, -2
  %spec.select44 = or i8 %16, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %add.i53 = add i32 %18, 3
  %and.i54 = and i32 %add.i53, 1048575
  %add1.i55 = or i32 %and.i54, -18874368
  %19 = inttoptr i32 %add1.i55 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 32) #8, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add5.i56 = add i32 %21, 4
  %and6.i = and i32 %add5.i56, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %22 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %spec.select44) #8, !srcloc !115
  tail call void @mutex_unlock(ptr noundef %gpio_mutex) #8
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta1010lt_ak4524_lock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 5
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 2
  %7 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 1
  %8 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx5.i, align 4
  %cs_mask = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 4
  %11 = ptrtoint ptr %cs_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 112, ptr %cs_mask, align 4
  %shl = shl i32 %chip, 4
  %cs_addr = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %cs_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl, ptr %cs_addr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta_ak4524_lock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 5
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 2
  %7 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 1
  %8 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip)
  %cmp = icmp eq i32 %chip, 0
  %cond = select i1 %cmp, i32 64, i32 128
  %cs_addr = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %cs_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %cs_addr, align 4
  %cs_mask = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %cs_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %cs_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx442_ak4524_lock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 5
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 2
  %7 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 1
  %8 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip)
  %cmp = icmp eq i32 %chip, 0
  %cond = select i1 %cmp, i32 32, i32 64
  %cs_addr = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %cs_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %cs_addr, align 4
  %cs_mask = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %cs_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %cs_mask, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx442_ak4524_set_rate_val(ptr noundef %ak, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 48000
  %conv = select i1 %cmp, i8 101, i8 96
  %arrayidx = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %conv)
  %cmp3.not = icmp eq i8 %1, %conv
  br i1 %cmp3.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx6 = getelementptr %struct.snd_akm4xxx, ptr %ak, i32 0, i32 3, i32 18
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %conv)
  %cmp9.not = icmp eq i8 %3, %conv
  br i1 %cmp9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 1) #8
  tail call void @snd_akm4xxx_write(ptr noundef %ak, i32 noundef 0, i8 noundef zeroext 2, i8 noundef zeroext %conv) #8
  tail call void @snd_akm4xxx_write(ptr noundef %ak, i32 noundef 1, i8 noundef zeroext 2, i8 noundef zeroext %conv) #8
  tail call void @snd_akm4xxx_reset(ptr noundef %ak, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_akm4xxx_write(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delta66e_ak4524_lock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 5
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #8
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46
  %5 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 2
  %7 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 1
  %8 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %4, i32 0, i32 46, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chip)
  %cmp = icmp eq i32 %chip, 0
  %cond = select i1 %cmp, i32 32, i32 64
  %cs_addr = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %cs_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %cs_addr, align 4
  %cs_mask = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %cs_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %cs_mask, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_spdif_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_gpio_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_gpio_put(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_delta1010lt_wordclock_status_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 16, ptr %reg, align 1
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %cs8427 = getelementptr inbounds %struct.snd_ice1712, ptr %2, i32 0, i32 44
  %3 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cs8427, align 4
  %call = call i32 @snd_i2c_sendbytes(ptr noundef %4, ptr noundef nonnull %reg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %2, i32 0, i32 10
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg, align 1
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef %conv) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cs8427, align 4
  %call2 = call i32 @snd_i2c_readbytes(ptr noundef %12, ptr noundef nonnull %reg, i32 noundef 1) #8
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg, align 1
  %15 = lshr i8 %14, 4
  %.lobit = and i8 %15, 1
  %16 = zext i8 %.lobit to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %value, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_sendbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_readbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/delta.c", i32 849, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/delta.c", i32 850, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/delta.c", i32 856, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/delta.c", i32 857, i32 12}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/delta.c", i32 864, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/delta.c", i32 865, i32 12}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/delta.c", i32 872, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/delta.c", i32 873, i32 12}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ice1712/delta.c", i32 880, i32 11}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ice1712/delta.c", i32 881, i32 12}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/delta.c", i32 887, i32 11}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/delta.c", i32 888, i32 12}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/delta.c", i32 894, i32 11}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/delta.c", i32 895, i32 12}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/delta.c", i32 901, i32 11}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/delta.c", i32 902, i32 12}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/delta.c", i32 909, i32 11}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/ice1712/delta.c", i32 910, i32 12}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/ice1712/delta.c", i32 916, i32 11}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/ice1712/delta.c", i32 917, i32 12}
!40 = !{ptr @snd_ice1712_delta_cards, !41, !"snd_ice1712_delta_cards", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/delta.c", i32 846, i32 30}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/delta.c", i32 679, i32 39}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/ice1712/delta.c", i32 681, i32 4}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @snd_ice1712_delta_init._entry, !45, !"_entry", i1 false, i1 false}
!51 = !{ptr @snd_ice1712_delta_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ice1712/delta.c", i32 746, i32 3}
!54 = !{ptr @ap_cs8427_i2c_ops, !55, !"ap_cs8427_i2c_ops", i1 false, i1 false}
!55 = !{!"../sound/pci/ice1712/delta.c", i32 163, i32 33}
!56 = !{ptr @akm_audiophile, !57, !"akm_audiophile", i1 false, i1 false}
!57 = !{!"../sound/pci/ice1712/delta.c", i32 434, i32 33}
!58 = !{ptr @akm_audiophile_priv, !59, !"akm_audiophile_priv", i1 false, i1 false}
!59 = !{!"../sound/pci/ice1712/delta.c", i32 443, i32 40}
!60 = !{ptr @akm_delta410, !61, !"akm_delta410", i1 false, i1 false}
!61 = !{!"../sound/pci/ice1712/delta.c", i32 455, i32 33}
!62 = !{ptr @akm_delta410_priv, !63, !"akm_delta410_priv", i1 false, i1 false}
!63 = !{!"../sound/pci/ice1712/delta.c", i32 464, i32 40}
!64 = !{ptr @akm_delta1010lt, !65, !"akm_delta1010lt", i1 false, i1 false}
!65 = !{!"../sound/pci/ice1712/delta.c", i32 476, i32 33}
!66 = !{ptr @akm_delta1010lt_priv, !67, !"akm_delta1010lt_priv", i1 false, i1 false}
!67 = !{!"../sound/pci/ice1712/delta.c", i32 486, i32 40}
!68 = !{ptr @akm_delta44, !69, !"akm_delta44", i1 false, i1 false}
!69 = !{!"../sound/pci/ice1712/delta.c", i32 521, i32 33}
!70 = !{ptr @akm_delta44_priv, !71, !"akm_delta44_priv", i1 false, i1 false}
!71 = !{!"../sound/pci/ice1712/delta.c", i32 531, i32 40}
!72 = !{ptr @akm_vx442, !73, !"akm_vx442", i1 false, i1 false}
!73 = !{!"../sound/pci/ice1712/delta.c", i32 543, i32 33}
!74 = !{ptr @akm_vx442_priv, !75, !"akm_vx442_priv", i1 false, i1 false}
!75 = !{!"../sound/pci/ice1712/delta.c", i32 553, i32 40}
!76 = !{ptr @akm_delta66e, !77, !"akm_delta66e", i1 false, i1 false}
!77 = !{!"../sound/pci/ice1712/delta.c", i32 498, i32 33}
!78 = !{ptr @akm_delta66e_priv, !79, !"akm_delta66e_priv", i1 false, i1 false}
!79 = !{!"../sound/pci/ice1712/delta.c", i32 508, i32 40}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ice1712/delta.c", i32 759, i32 1}
!82 = !{ptr @snd_ice1712_delta1010_wordclock_select, !83, !"snd_ice1712_delta1010_wordclock_select", i1 false, i1 false}
!83 = !{!"../sound/pci/ice1712/delta.c", i32 758, i32 38}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ice1712/delta.c", i32 763, i32 1}
!86 = !{ptr @snd_ice1712_delta1010_wordclock_status, !87, !"snd_ice1712_delta1010_wordclock_status", i1 false, i1 false}
!87 = !{!"../sound/pci/ice1712/delta.c", i32 762, i32 38}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/ice1712/delta.c", i32 765, i32 1}
!90 = !{ptr @snd_ice1712_deltadio2496_spdif_in_select, !91, !"snd_ice1712_deltadio2496_spdif_in_select", i1 false, i1 false}
!91 = !{!"../sound/pci/ice1712/delta.c", i32 764, i32 38}
!92 = !{ptr @snd_ice1712_delta1010lt_wordclock_select, !93, !"snd_ice1712_delta1010lt_wordclock_select", i1 false, i1 false}
!93 = !{!"../sound/pci/ice1712/delta.c", i32 760, i32 38}
!94 = !{ptr @snd_ice1712_delta1010lt_wordclock_status, !95, !"snd_ice1712_delta1010lt_wordclock_status", i1 false, i1 false}
!95 = !{!"../sound/pci/ice1712/delta.c", i32 421, i32 38}
!96 = !{ptr @.str.30, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ice1712/delta.c", i32 414, i32 3}
!98 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @snd_ice1712_delta1010lt_wordclock_status_get._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @snd_ice1712_delta1010lt_wordclock_status_get._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/ice1712/delta.c", i32 767, i32 1}
!103 = !{ptr @snd_ice1712_delta_spdif_in_status, !104, !"snd_ice1712_delta_spdif_in_status", i1 false, i1 false}
!104 = !{!"../sound/pci/ice1712/delta.c", i32 766, i32 38}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 2154395427}
!115 = !{i64 4229562}
!116 = !{i64 4229957}
!117 = !{i64 2154395929}
!118 = !{i64 2154394416}
!119 = !{i64 2154394836}
!120 = distinct !{!120, !121}
!121 = !{!"llvm.loop.peeled.count", i32 1}
