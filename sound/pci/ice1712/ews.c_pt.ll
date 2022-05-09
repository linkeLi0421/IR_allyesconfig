; ModuleID = '/llk/IR_all_yes/sound/pci/ice1712/ews.c_pt.bc'
source_filename = "../sound/pci/ice1712/ews.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ice1712_card_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_i2c_bit_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_akm4xxx = type { ptr, i32, i32, [64 x i8], [64 x i8], [4 x i32], [4 x ptr], i32, i32, ptr, ptr, %struct.snd_ak4xxx_ops, i32, i32, ptr }
%struct.snd_ak4xxx_ops = type { ptr, ptr, ptr, ptr }
%struct.snd_ak4xxx_private = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.snd_akm4xxx_ops }
%struct.snd_akm4xxx_ops = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TerraTec EWX24/96\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ewx2496\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TerraTec EWS88MT\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ews88mt\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ews88mt_new\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TerraTec Phase88\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"phase88\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"terrasoniq TS88\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TerraTec EWS88D\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ews88d\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TerraTec DMX6Fire\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmx6fire\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MIDI-Front DMX6fire\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wavetable DMX6fire\00", [45 x i8] zeroinitializer }, align 32
@snd_ice1712_ews_cards = dso_local global { [8 x %struct.snd_ice1712_card_info], [96 x i8] } { [8 x %struct.snd_ice1712_card_info] [%struct.snd_ice1712_card_info { i32 991244305, ptr @.str, ptr @.str.1, ptr null, ptr @snd_ice1712_ews_init, ptr null, ptr @snd_ice1712_ews_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 991237393, ptr @.str.2, ptr @.str.3, ptr null, ptr @snd_ice1712_ews_init, ptr null, ptr @snd_ice1712_ews_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 991241489, ptr @.str.2, ptr @.str.4, ptr null, ptr @snd_ice1712_ews_init, ptr null, ptr @snd_ice1712_ews_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 991252753, ptr @.str.5, ptr @.str.6, ptr null, ptr @snd_ice1712_ews_init, ptr null, ptr @snd_ice1712_ews_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 991263761, ptr @.str.7, ptr @.str.6, ptr null, ptr @snd_ice1712_ews_init, ptr null, ptr @snd_ice1712_ews_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 991243025, ptr @.str.8, ptr @.str.9, ptr null, ptr @snd_ice1712_ews_init, ptr null, ptr @snd_ice1712_ews_add_controls, i8 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null }, %struct.snd_ice1712_card_info { i32 991246353, ptr @.str.10, ptr @.str.11, ptr null, ptr @snd_ice1712_ews_init, ptr null, ptr @snd_ice1712_ews_add_controls, i8 0, i32 0, i32 2, ptr @.str.12, ptr @.str.13, i32 0, ptr null }, %struct.snd_ice1712_card_info zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ICE1712 GPIO 1\00", [17 x i8] zeroinitializer }, align 32
@snd_ice1712_ews_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 447, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to create I2C bus\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_ice1712_ews_init\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/pci/ice1712/ews.c\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_ice1712_ews_init._entry_ptr = internal global ptr @snd_ice1712_ews_init._entry, section ".printk_index", align 4
@snd_ice1712_ewx_cs8427_bit_ops = internal global { %struct.snd_i2c_bit_ops, [40 x i8] } { %struct.snd_i2c_bit_ops { ptr @ewx_i2c_start, ptr @ewx_i2c_stop, ptr @ewx_i2c_direction, ptr @ewx_i2c_setlines, ptr @ewx_i2c_getclock, ptr @ewx_i2c_getdata }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCF9554\00", [24 x i8] zeroinitializer }, align 32
@snd_ice1712_ews_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.17, i32 461, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PCF9554 initialization failed\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_ice1712_ews_init._entry_ptr.23 = internal global ptr @snd_ice1712_ews_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS8404\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCF8574 (1st)\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCF8574 (2nd)\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCF8575\00", [24 x i8] zeroinitializer }, align 32
@akm_ews88mt = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 8, i32 8, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 0, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr @ews88mt_ak4524_lock, ptr @ews88mt_ak4524_unlock, ptr null, ptr null }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_ews88mt_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 -128, i8 2, i32 16, i32 32, i32 0, i32 0, i32 0, i32 8, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_ewx2496 = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 2, i32 2, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 0, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr @ewx2496_ak4524_lock, ptr null, ptr null, ptr null }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_ewx2496_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 -128, i8 2, i32 16, i32 32, i32 1, i32 1, i32 0, i32 8, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@akm_6fire = internal constant { %struct.snd_akm4xxx, [40 x i8] } { %struct.snd_akm4xxx { ptr null, i32 6, i32 6, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, i32 0, ptr null, ptr null, %struct.snd_ak4xxx_ops { ptr @dmx6fire_ak4524_lock, ptr null, ptr null, ptr null }, i32 0, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@akm_6fire_priv = internal constant { %struct.snd_ak4xxx_private, [60 x i8] } { %struct.snd_ak4xxx_private { i8 -128, i8 2, i32 16, i32 32, i32 0, i32 0, i32 0, i32 8, i32 0, %struct.snd_akm4xxx_ops zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_ice1712_ews88mt_chip_select._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.17, i32 153, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"AK4524 chip select failed, check cable to the front module\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_ice1712_ews88mt_chip_select\00", [32 x i8] zeroinitializer }, align 32
@snd_ice1712_ews88mt_chip_select._entry_ptr = internal global ptr @snd_ice1712_ews88mt_chip_select._entry, section ".printk_index", align 4
@ews88mt_ak4524_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.17, i32 164, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fatal error (ews88mt chip select)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ews88mt_ak4524_lock\00", [44 x i8] zeroinitializer }, align 32
@ews88mt_ak4524_lock._entry_ptr = internal global ptr @ews88mt_ak4524_lock._entry, section ".printk_index", align 4
@snd_ice1712_ewx2496_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_ice1712_ewx_io_sense_info, ptr @snd_ice1712_ewx_io_sense_get, ptr @snd_ice1712_ewx_io_sense_put, %union.anon.87 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_ice1712_ewx_io_sense_info, ptr @snd_ice1712_ewx_io_sense_get, ptr @snd_ice1712_ewx_io_sense_put, %union.anon.87 zeroinitializer, i32 4 }], [32 x i8] zeroinitializer }, align 32
@snd_ice1712_ews88mt_input_sense = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 8, ptr @snd_ice1712_ewx_io_sense_info, ptr @snd_ice1712_ews88mt_input_sense_get, ptr @snd_ice1712_ews88mt_input_sense_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_ews88mt_output_sense = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_ice1712_ewx_io_sense_info, ptr @snd_ice1712_ews88mt_output_sense_get, ptr @snd_ice1712_ews88mt_output_sense_put, %union.anon.87 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_ice1712_ews88d_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_ews88d_control_get, ptr @snd_ice1712_ews88d_control_put, %union.anon.87 zeroinitializer, i32 256 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_ews88d_control_get, ptr @snd_ice1712_ews88d_control_put, %union.anon.87 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_ews88d_control_get, ptr @snd_ice1712_ews88d_control_put, %union.anon.87 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_ews88d_control_get, ptr @snd_ice1712_ews88d_control_put, %union.anon.87 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_ews88d_control_get, ptr @snd_ice1712_ews88d_control_put, %union.anon.87 zeroinitializer, i32 260 }], [48 x i8] zeroinitializer }, align 32
@snd_ice1712_6fire_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_ice1712_6fire_select_input_info, ptr @snd_ice1712_6fire_select_input_get, ptr @snd_ice1712_6fire_select_input_put, %union.anon.87 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_6fire_control_get, ptr @snd_ice1712_6fire_control_put, %union.anon.87 zeroinitializer, i32 258 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_6fire_control_get, ptr @snd_ice1712_6fire_control_put, %union.anon.87 zeroinitializer, i32 4 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_6fire_control_get, ptr @snd_ice1712_6fire_control_put, %union.anon.87 zeroinitializer, i32 5 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ice1712_6fire_control_get, ptr @snd_ice1712_6fire_control_put, %union.anon.87 zeroinitializer, i32 6 }], [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Input Sensitivity Switch\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Output Sensitivity Switch\00", [38 x i8] zeroinitializer }, align 32
@snd_ice1712_ewx_io_sense_info.texts = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.34, ptr @.str.35], [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+4dBu\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-10dBV\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Input Optical\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADAT Output Optical\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADAT External Master Clock\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Enable ADAT\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADAT Through\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Analog Input Select\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Front Digital Input Switch\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Optical Digital Input Switch\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Phono Analog Input Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Breakbox LED\00", [19 x i8] zeroinitializer }, align 32
@snd_ice1712_6fire_select_input_info.texts = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Front Input\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Rear Input\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Wave Table\00", [21 x i8] zeroinitializer }, align 32
@snd_ice1712_6fire_read_pca._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.17, i32 821, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot send pca\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_ice1712_6fire_read_pca\00", [37 x i8] zeroinitializer }, align 32
@snd_ice1712_6fire_read_pca._entry_ptr = internal global ptr @snd_ice1712_6fire_read_pca._entry, section ".printk_index", align 4
@snd_ice1712_6fire_read_pca._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.17, i32 828, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot read pca\0A\00", [47 x i8] zeroinitializer }, align 32
@snd_ice1712_6fire_read_pca._entry_ptr.54 = internal global ptr @snd_ice1712_6fire_read_pca._entry.52, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 991237393, i64 991241489, i64 991243025, i64 991244305, i64 991246353, i64 991252753, i64 991263761]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 991237393, i64 991241489, i64 991243025, i64 991246353, i64 991252753, i64 991263761]
@__sancov_gen_cov_switch_values.56 = internal global [9 x i64] [i64 7, i64 32, i64 991237393, i64 991241489, i64 991243025, i64 991244305, i64 991246353, i64 991252753, i64 991263761]
@__sancov_gen_cov_switch_values.57 = internal global [8 x i64] [i64 6, i64 32, i64 991237393, i64 991241489, i64 991244305, i64 991246353, i64 991252753, i64 991263761]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 32, i64 991237393, i64 991241489, i64 991244305, i64 991246353, i64 991252753, i64 991263761]
@__sancov_gen_cov_switch_values.59 = internal global [9 x i64] [i64 7, i64 32, i64 991237393, i64 991241489, i64 991243025, i64 991244305, i64 991246353, i64 991252753, i64 991263761]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 32, i64 991237393, i64 991241489, i64 991243025, i64 991252753, i64 991263761]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1024, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1025, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1031, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1032, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1039, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1045, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1046, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1052, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1059, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1060, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1066, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1067, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1070, i32 20 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1071, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"snd_ice1712_ews_cards\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1021, i32 30 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 445, i32 38 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 447, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [31 x i8] c"snd_ice1712_ewx_cs8427_bit_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 117, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 456, i32 41 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 460, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 471, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 476, i32 41 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 481, i32 41 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 492, i32 41 }
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"akm_ews88mt\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 333, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"akm_ews88mt_priv\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 343, i32 40 }
@___asan_gen_.165 = private unnamed_addr constant [12 x i8] c"akm_ewx2496\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 355, i32 33 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"akm_ewx2496_priv\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 364, i32 40 }
@___asan_gen_.171 = private unnamed_addr constant [10 x i8] c"akm_6fire\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 376, i32 33 }
@___asan_gen_.174 = private unnamed_addr constant [15 x i8] c"akm_6fire_priv\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 385, i32 40 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 152, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 164, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [29 x i8] c"snd_ice1712_ewx2496_controls\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 604, i32 38 }
@___asan_gen_.198 = private unnamed_addr constant [32 x i8] c"snd_ice1712_ews88mt_input_sense\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 712, i32 38 }
@___asan_gen_.201 = private unnamed_addr constant [33 x i8] c"snd_ice1712_ews88mt_output_sense\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 721, i32 38 }
@___asan_gen_.204 = private unnamed_addr constant [28 x i8] c"snd_ice1712_ews88d_controls\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 799, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant [27 x i8] c"snd_ice1712_6fire_controls\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 939, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 607, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 615, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 570, i32 28 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 571, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 571, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 800, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 801, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 802, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 803, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 804, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 942, i32 11 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 947, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 949, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 950, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 951, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [6 x i8] c"texts\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 894, i32 28 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 895, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 895, i32 15 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 895, i32 30 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 895, i32 44 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 821, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private constant [27 x i8] c"../sound/pci/ice1712/ews.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 828, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @ews88mt_ak4524_lock._entry, ptr @ews88mt_ak4524_lock._entry_ptr, ptr @snd_ice1712_6fire_read_pca._entry, ptr @snd_ice1712_6fire_read_pca._entry.52, ptr @snd_ice1712_6fire_read_pca._entry_ptr, ptr @snd_ice1712_6fire_read_pca._entry_ptr.54, ptr @snd_ice1712_ews88mt_chip_select._entry, ptr @snd_ice1712_ews88mt_chip_select._entry_ptr, ptr @snd_ice1712_ews_init._entry, ptr @snd_ice1712_ews_init._entry.21, ptr @snd_ice1712_ews_init._entry_ptr, ptr @snd_ice1712_ews_init._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @snd_ice1712_ews_cards, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @snd_ice1712_ewx_cs8427_bit_ops, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @akm_ews88mt, ptr @akm_ews88mt_priv, ptr @akm_ewx2496, ptr @akm_ewx2496_priv, ptr @akm_6fire, ptr @akm_6fire_priv, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @snd_ice1712_ewx2496_controls, ptr @snd_ice1712_ews88mt_input_sense, ptr @snd_ice1712_ews88mt_output_sense, ptr @snd_ice1712_ews88d_controls, ptr @snd_ice1712_6fire_controls, ptr @.str.32, ptr @.str.33, ptr @snd_ice1712_ewx_io_sense_info.texts, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @snd_ice1712_6fire_select_input_info.texts, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ews_cards to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ews_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ewx_cs8427_bit_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ews_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_ews88mt to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_ews88mt_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_ewx2496 to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_ewx2496_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_6fire to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akm_6fire_priv to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ews88mt_chip_select._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ews88mt_ak4524_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ewx2496_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ews88mt_input_sense to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ews88mt_output_sense to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ews88d_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_6fire_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_ewx_io_sense_info.texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_6fire_select_input_info.texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_6fire_read_pca._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ice1712_6fire_read_pca._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ews_init(ptr noundef %ice) #0 align 64 {
entry:
  %bytes.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %0 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eeprom, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 991244305, label %entry.sw.epilog.sink.split_crit_edge
    i32 991237393, label %entry.sw.bb1_crit_edge
    i32 991241489, label %entry.sw.bb1_crit_edge186
    i32 991252753, label %entry.sw.bb1_crit_edge187
    i32 991263761, label %entry.sw.bb1_crit_edge188
    i32 991243025, label %sw.bb4
    i32 991246353, label %sw.bb7
  ]

entry.sw.bb1_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge186, %entry.sw.bb1_crit_edge187, %entry.sw.bb1_crit_edge188
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb7, %sw.bb4, %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink185 = phi i32 [ 6, %sw.bb7 ], [ 8, %sw.bb4 ], [ 8, %sw.bb1 ], [ 2, %entry.sw.epilog.sink.split_crit_edge ]
  %num_total_dacs8 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 33
  %3 = ptrtoint ptr %num_total_dacs8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink185, ptr %num_total_dacs8, align 4
  %num_total_adcs9 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 34
  %4 = ptrtoint ptr %num_total_adcs9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink185, ptr %num_total_adcs9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 12) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %spec10 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %6 = ptrtoint ptr %spec10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %spec10, align 4
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 43
  %call11 = tail call i32 @snd_i2c_bus_create(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef %i2c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ice, ptr %private_data, align 4
  %16 = load ptr, ptr %i2c, align 4
  %hw_ops = getelementptr inbounds %struct.snd_i2c_bus, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %hw_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @snd_ice1712_ewx_cs8427_bit_ops, ptr %hw_ops, align 4
  %18 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eeprom, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %19, label %if.end14.sw.epilog65_crit_edge [
    i32 991246353, label %sw.bb19
    i32 991237393, label %if.end14.sw.bb31_crit_edge
    i32 991241489, label %if.end14.sw.bb31_crit_edge189
    i32 991252753, label %if.end14.sw.bb31_crit_edge190
    i32 991263761, label %if.end14.sw.bb31_crit_edge191
    i32 991243025, label %sw.bb57
  ]

if.end14.sw.bb31_crit_edge191:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end14.sw.bb31_crit_edge190:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end14.sw.bb31_crit_edge189:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end14.sw.bb31_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

if.end14.sw.epilog65_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog65

sw.bb19:                                          ; preds = %if.end14
  %21 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c, align 4
  %call21 = tail call i32 @snd_i2c_device_create(ptr noundef %22, ptr noundef nonnull @.str.20, i8 noundef zeroext 32, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end26, label %if.end29

do.end26:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %dev28 = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end29:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bytes.i) #7
  %27 = getelementptr inbounds [2 x i8], ptr %bytes.i, i32 0, i32 1
  %28 = ptrtoint ptr %spec10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spec10, align 4
  %30 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c, align 4
  %master.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  %bus..i.i = select i1 %tobool.not.i.i, ptr %31, ptr %33
  %lock_mutex2.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i.i, i32 noundef 0) #7
  %34 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %bytes.i, align 1
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -128, ptr %27, align 1
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %29, align 4
  %call.i = call i32 @snd_i2c_sendbytes(ptr noundef %37, ptr noundef nonnull %bytes.i, i32 noundef 2) #7
  %38 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c, align 4
  %master.i5.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %master.i5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master.i5.i, align 4
  %tobool.not.i6.i = icmp eq ptr %41, null
  %bus..i7.i = select i1 %tobool.not.i6.i, ptr %39, ptr %41
  %lock_mutex2.i8.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i7.i, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i8.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bytes.i) #7
  br label %sw.epilog65thread-pre-split

sw.bb31:                                          ; preds = %if.end14.sw.bb31_crit_edge, %if.end14.sw.bb31_crit_edge189, %if.end14.sw.bb31_crit_edge190, %if.end14.sw.bb31_crit_edge191
  %42 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c, align 4
  %call35 = tail call i32 @snd_i2c_device_create(ptr noundef %43, ptr noundef nonnull @.str.24, i8 noundef zeroext 32, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %sw.bb31.cleanup_crit_edge, label %if.end38

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %sw.bb31
  %44 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c, align 4
  %arrayidx41 = getelementptr [3 x ptr], ptr %call7.i.i, i32 0, i32 1
  %call42 = tail call i32 @snd_i2c_device_create(ptr noundef %45, ptr noundef nonnull @.str.25, i8 noundef zeroext 35, ptr noundef %arrayidx41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.end38.cleanup_crit_edge, label %if.end45

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %46 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c, align 4
  %arrayidx48 = getelementptr [3 x ptr], ptr %call7.i.i, i32 0, i32 2
  %call49 = tail call i32 @snd_i2c_device_create(ptr noundef %47, ptr noundef nonnull @.str.26, i8 noundef zeroext 36, ptr noundef %arrayidx48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end45.cleanup_crit_edge, label %if.end52

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %call53 = tail call fastcc i32 @snd_ice1712_ews88mt_chip_select(ptr noundef %ice, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end52.cleanup_crit_edge, label %if.end52.sw.epilog65thread-pre-split_crit_edge

if.end52.sw.epilog65thread-pre-split_crit_edge:   ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog65thread-pre-split

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb57:                                          ; preds = %if.end14
  %48 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c, align 4
  %call61 = tail call i32 @snd_i2c_device_create(ptr noundef %49, ptr noundef nonnull @.str.27, i8 noundef zeroext 32, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %sw.bb57.cleanup_crit_edge, label %sw.bb57.sw.epilog65thread-pre-split_crit_edge

sw.bb57.sw.epilog65thread-pre-split_crit_edge:    ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog65thread-pre-split

sw.bb57.cleanup_crit_edge:                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog65thread-pre-split:                      ; preds = %sw.bb57.sw.epilog65thread-pre-split_crit_edge, %if.end52.sw.epilog65thread-pre-split_crit_edge, %if.end29
  %50 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load i32, ptr %eeprom, align 4
  br label %sw.epilog65

sw.epilog65:                                      ; preds = %sw.epilog65thread-pre-split, %if.end14.sw.epilog65_crit_edge
  %51 = phi i32 [ %.pr, %sw.epilog65thread-pre-split ], [ %19, %if.end14.sw.epilog65_crit_edge ]
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %51, label %sw.epilog65.sw.epilog93_crit_edge [
    i32 991244305, label %sw.bb68
    i32 991246353, label %sw.bb74
    i32 991237393, label %sw.epilog65.sw.bb81_crit_edge
    i32 991241489, label %sw.epilog65.sw.bb81_crit_edge192
    i32 991252753, label %sw.epilog65.sw.bb81_crit_edge193
    i32 991263761, label %sw.epilog65.sw.bb81_crit_edge194
    i32 991243025, label %sw.epilog65.sw.bb81_crit_edge195
  ]

sw.epilog65.sw.bb81_crit_edge195:                 ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

sw.epilog65.sw.bb81_crit_edge194:                 ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

sw.epilog65.sw.bb81_crit_edge193:                 ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

sw.epilog65.sw.bb81_crit_edge192:                 ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

sw.epilog65.sw.bb81_crit_edge:                    ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

sw.epilog65.sw.epilog93_crit_edge:                ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog93

sw.bb68:                                          ; preds = %sw.epilog65
  %call69 = call i32 @snd_ice1712_init_cs8427(ptr noundef %ice, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %sw.bb68.cleanup_crit_edge, label %if.end72

sw.bb68.cleanup_crit_edge:                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end72:                                         ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #9
  %cs8427 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 44
  %53 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cs8427, align 4
  %call73 = call i32 @snd_cs8427_reg_write(ptr noundef %54, i8 noundef zeroext 17, i8 noundef zeroext 23) #7
  br label %sw.epilog93

sw.bb74:                                          ; preds = %sw.epilog65
  %call75 = call i32 @snd_ice1712_init_cs8427(ptr noundef %ice, i32 noundef 34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %sw.bb74.cleanup_crit_edge, label %if.end78

sw.bb74.cleanup_crit_edge:                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end78:                                         ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #9
  %cs842779 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 44
  %55 = ptrtoint ptr %cs842779 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cs842779, align 4
  %call80 = call i32 @snd_cs8427_reg_write(ptr noundef %56, i8 noundef zeroext 17, i8 noundef zeroext 23) #7
  br label %sw.epilog93

sw.bb81:                                          ; preds = %sw.epilog65.sw.bb81_crit_edge, %sw.epilog65.sw.bb81_crit_edge192, %sw.epilog65.sw.bb81_crit_edge193, %sw.epilog65.sw.bb81_crit_edge194, %sw.epilog65.sw.bb81_crit_edge195
  %spdif = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41
  %ops = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ews88_open_spdif, ptr %ops, align 4
  %setup_rate = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 1
  %58 = ptrtoint ptr %setup_rate to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ews88_setup_spdif, ptr %setup_rate, align 4
  %default_get = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 3
  %59 = ptrtoint ptr %default_get to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ews88_spdif_default_get, ptr %default_get, align 4
  %default_put = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 4
  %60 = ptrtoint ptr %default_put to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ews88_spdif_default_put, ptr %default_put, align 4
  %stream_get = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 5
  %61 = ptrtoint ptr %stream_get to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @ews88_spdif_stream_get, ptr %stream_get, align 4
  %stream_put = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 3, i32 6
  %62 = ptrtoint ptr %stream_put to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ews88_spdif_stream_put, ptr %stream_put, align 4
  %63 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %spdif, align 4
  call fastcc void @snd_ice1712_ews_cs8404_spdif_write(ptr noundef %ice, i8 noundef zeroext %64)
  br label %sw.epilog93

sw.epilog93:                                      ; preds = %sw.bb81, %if.end78, %if.end72, %sw.epilog65.sw.epilog93_crit_edge
  %65 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 991243025, i32 %66)
  %cond = icmp eq i32 %66, 991243025
  br i1 %cond, label %sw.epilog93.cleanup_crit_edge, label %sw.epilog97

sw.epilog93.cleanup_crit_edge:                    ; preds = %sw.epilog93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog97:                                      ; preds = %sw.epilog93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i184 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 216) #10
  %akm = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 40
  %68 = ptrtoint ptr %akm to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i184, ptr %akm, align 4
  %tobool99.not = icmp eq ptr %call7.i.i184, null
  br i1 %tobool99.not, label %sw.epilog97.cleanup_crit_edge, label %if.end101

sw.epilog97.cleanup_crit_edge:                    ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end101:                                        ; preds = %sw.epilog97
  %akm_codecs = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 39
  %69 = ptrtoint ptr %akm_codecs to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %akm_codecs, align 4
  %70 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %eeprom, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %71, label %if.end101.cleanup_crit_edge [
    i32 991237393, label %if.end101.sw.bb104_crit_edge
    i32 991241489, label %if.end101.sw.bb104_crit_edge196
    i32 991252753, label %if.end101.sw.bb104_crit_edge197
    i32 991263761, label %if.end101.sw.bb104_crit_edge198
    i32 991244305, label %sw.bb106
    i32 991246353, label %sw.bb108
  ]

if.end101.sw.bb104_crit_edge198:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.end101.sw.bb104_crit_edge197:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.end101.sw.bb104_crit_edge196:                  ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.end101.sw.bb104_crit_edge:                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb104:                                         ; preds = %if.end101.sw.bb104_crit_edge, %if.end101.sw.bb104_crit_edge196, %if.end101.sw.bb104_crit_edge197, %if.end101.sw.bb104_crit_edge198
  %call105 = call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i.i184, ptr noundef nonnull @akm_ews88mt, ptr noundef nonnull @akm_ews88mt_priv, ptr noundef %ice) #7
  br label %cleanup

sw.bb106:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %call107 = call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i.i184, ptr noundef nonnull @akm_ewx2496, ptr noundef nonnull @akm_ewx2496_priv, ptr noundef %ice) #7
  br label %cleanup

sw.bb108:                                         ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %call109 = call i32 @snd_ice1712_akm4xxx_init(ptr noundef nonnull %call7.i.i184, ptr noundef nonnull @akm_6fire, ptr noundef nonnull @akm_6fire_priv, ptr noundef %ice) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb108, %sw.bb106, %sw.bb104, %if.end101.cleanup_crit_edge, %sw.epilog97.cleanup_crit_edge, %sw.epilog93.cleanup_crit_edge, %sw.bb74.cleanup_crit_edge, %sw.bb68.cleanup_crit_edge, %sw.bb57.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %do.end26, %do.end, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ %call21, %do.end26 ], [ -12, %sw.epilog.cleanup_crit_edge ], [ %call35, %sw.bb31.cleanup_crit_edge ], [ %call42, %if.end38.cleanup_crit_edge ], [ %call49, %if.end45.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call61, %sw.bb57.cleanup_crit_edge ], [ %call69, %sw.bb68.cleanup_crit_edge ], [ %call75, %sw.bb74.cleanup_crit_edge ], [ 0, %sw.epilog93.cleanup_crit_edge ], [ -12, %sw.epilog97.cleanup_crit_edge ], [ %call109, %sw.bb108 ], [ %call107, %sw.bb106 ], [ %call105, %sw.bb104 ], [ 0, %if.end101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ews_add_controls(ptr noundef %ice) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cs8427 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 44
  %0 = ptrtoint ptr %cs8427 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs8427, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @snd_ice1712_spdif_build_controls(ptr noundef %ice) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %2 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eeprom, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %3, label %if.end3.sw.epilog_crit_edge [
    i32 991244305, label %if.end3.sw.bb_crit_edge
    i32 991237393, label %if.end3.sw.bb_crit_edge109
    i32 991241489, label %if.end3.sw.bb_crit_edge110
    i32 991252753, label %if.end3.sw.bb_crit_edge111
    i32 991263761, label %if.end3.sw.bb_crit_edge112
    i32 991246353, label %if.end3.sw.bb_crit_edge113
  ]

if.end3.sw.bb_crit_edge113:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.bb_crit_edge112:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.bb_crit_edge111:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.bb_crit_edge110:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.bb_crit_edge109:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.bb_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3.sw.bb_crit_edge, %if.end3.sw.bb_crit_edge109, %if.end3.sw.bb_crit_edge110, %if.end3.sw.bb_crit_edge111, %if.end3.sw.bb_crit_edge112, %if.end3.sw.bb_crit_edge113
  %call4 = tail call i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef %ice) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.bb.cleanup_crit_edge, label %sw.epilogthread-pre-split

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilogthread-pre-split:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %eeprom, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end3.sw.epilog_crit_edge
  %6 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %3, %if.end3.sw.epilog_crit_edge ]
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %6, label %sw.epilog.sw.epilog58_crit_edge [
    i32 991244305, label %for.cond.preheader
    i32 991237393, label %sw.epilog.sw.bb17_crit_edge
    i32 991241489, label %sw.epilog.sw.bb17_crit_edge114
    i32 991252753, label %sw.epilog.sw.bb17_crit_edge115
    i32 991263761, label %sw.epilog.sw.bb17_crit_edge116
    i32 991243025, label %for.cond31.preheader
    i32 991246353, label %for.cond45.preheader
  ]

sw.epilog.sw.bb17_crit_edge116:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

sw.epilog.sw.bb17_crit_edge115:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

sw.epilog.sw.bb17_crit_edge114:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

sw.epilog.sw.bb17_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17

sw.epilog.sw.epilog58_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog58

for.cond45.preheader:                             ; preds = %sw.epilog
  %card48 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %8 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card48, align 4
  %call50 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_6fire_controls, ptr noundef %ice) #7
  %call51 = tail call i32 @snd_ctl_add(ptr noundef %9, ptr noundef %call50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %for.cond45.preheader.cleanup_crit_edge, label %for.cond45

for.cond45.preheader.cleanup_crit_edge:           ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond31.preheader:                             ; preds = %sw.epilog
  %card34 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %10 = ptrtoint ptr %card34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card34, align 4
  %call36 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_ews88d_controls, ptr noundef %ice) #7
  %call37 = tail call i32 @snd_ctl_add(ptr noundef %11, ptr noundef %call36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %for.cond31.preheader.cleanup_crit_edge, label %for.cond31

for.cond31.preheader.cleanup_crit_edge:           ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.epilog
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %call12 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_ewx2496_controls, ptr noundef %ice) #7
  %call13 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %for.cond.preheader.cleanup_crit_edge, label %for.cond

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card, align 4
  %call12.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([2 x %struct.snd_kcontrol_new], ptr @snd_ice1712_ewx2496_controls, i32 0, i32 1), ptr noundef %ice) #7
  %call13.1 = tail call i32 @snd_ctl_add(ptr noundef %15, ptr noundef %call12.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %cmp14.1 = icmp slt i32 %call13.1, 0
  br i1 %cmp14.1, label %for.cond.cleanup_crit_edge, label %for.cond.sw.epilog58_crit_edge

for.cond.sw.epilog58_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog58

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb17:                                          ; preds = %sw.epilog.sw.bb17_crit_edge, %sw.epilog.sw.bb17_crit_edge114, %sw.epilog.sw.bb17_crit_edge115, %sw.epilog.sw.bb17_crit_edge116
  %card18 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %16 = ptrtoint ptr %card18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card18, align 4
  %call19 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_ews88mt_input_sense, ptr noundef %ice) #7
  %call20 = tail call i32 @snd_ctl_add(ptr noundef %17, ptr noundef %call19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %sw.bb17.cleanup_crit_edge, label %if.end23

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %sw.bb17
  %18 = ptrtoint ptr %card18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card18, align 4
  %call25 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_ice1712_ews88mt_output_sense, ptr noundef %ice) #7
  %call26 = tail call i32 @snd_ctl_add(ptr noundef %19, ptr noundef %call25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end23.cleanup_crit_edge, label %if.end23.sw.epilog58_crit_edge

if.end23.sw.epilog58_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog58

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond31:                                       ; preds = %for.cond31.preheader
  %20 = ptrtoint ptr %card34 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card34, align 4
  %call36.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_ice1712_ews88d_controls, i32 0, i32 1), ptr noundef %ice) #7
  %call37.1 = tail call i32 @snd_ctl_add(ptr noundef %21, ptr noundef %call36.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.1)
  %cmp38.1 = icmp slt i32 %call37.1, 0
  br i1 %cmp38.1, label %for.cond31.cleanup_crit_edge, label %for.cond31.1

for.cond31.cleanup_crit_edge:                     ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond31.1:                                     ; preds = %for.cond31
  %22 = ptrtoint ptr %card34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card34, align 4
  %call36.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_ice1712_ews88d_controls, i32 0, i32 2), ptr noundef %ice) #7
  %call37.2 = tail call i32 @snd_ctl_add(ptr noundef %23, ptr noundef %call36.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.2)
  %cmp38.2 = icmp slt i32 %call37.2, 0
  br i1 %cmp38.2, label %for.cond31.1.cleanup_crit_edge, label %for.cond31.2

for.cond31.1.cleanup_crit_edge:                   ; preds = %for.cond31.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond31.2:                                     ; preds = %for.cond31.1
  %24 = ptrtoint ptr %card34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card34, align 4
  %call36.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_ice1712_ews88d_controls, i32 0, i32 3), ptr noundef %ice) #7
  %call37.3 = tail call i32 @snd_ctl_add(ptr noundef %25, ptr noundef %call36.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.3)
  %cmp38.3 = icmp slt i32 %call37.3, 0
  br i1 %cmp38.3, label %for.cond31.2.cleanup_crit_edge, label %for.cond31.3

for.cond31.2.cleanup_crit_edge:                   ; preds = %for.cond31.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond31.3:                                     ; preds = %for.cond31.2
  %26 = ptrtoint ptr %card34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card34, align 4
  %call36.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_ice1712_ews88d_controls, i32 0, i32 4), ptr noundef %ice) #7
  %call37.4 = tail call i32 @snd_ctl_add(ptr noundef %27, ptr noundef %call36.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.4)
  %cmp38.4 = icmp slt i32 %call37.4, 0
  br i1 %cmp38.4, label %for.cond31.3.cleanup_crit_edge, label %for.cond31.3.sw.epilog58_crit_edge

for.cond31.3.sw.epilog58_crit_edge:               ; preds = %for.cond31.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog58

for.cond31.3.cleanup_crit_edge:                   ; preds = %for.cond31.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond45:                                       ; preds = %for.cond45.preheader
  %28 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card48, align 4
  %call50.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_ice1712_6fire_controls, i32 0, i32 1), ptr noundef %ice) #7
  %call51.1 = tail call i32 @snd_ctl_add(ptr noundef %29, ptr noundef %call50.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.1)
  %cmp52.1 = icmp slt i32 %call51.1, 0
  br i1 %cmp52.1, label %for.cond45.cleanup_crit_edge, label %for.cond45.1

for.cond45.cleanup_crit_edge:                     ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond45.1:                                     ; preds = %for.cond45
  %30 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card48, align 4
  %call50.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_ice1712_6fire_controls, i32 0, i32 2), ptr noundef %ice) #7
  %call51.2 = tail call i32 @snd_ctl_add(ptr noundef %31, ptr noundef %call50.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.2)
  %cmp52.2 = icmp slt i32 %call51.2, 0
  br i1 %cmp52.2, label %for.cond45.1.cleanup_crit_edge, label %for.cond45.2

for.cond45.1.cleanup_crit_edge:                   ; preds = %for.cond45.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond45.2:                                     ; preds = %for.cond45.1
  %32 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card48, align 4
  %call50.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_ice1712_6fire_controls, i32 0, i32 3), ptr noundef %ice) #7
  %call51.3 = tail call i32 @snd_ctl_add(ptr noundef %33, ptr noundef %call50.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.3)
  %cmp52.3 = icmp slt i32 %call51.3, 0
  br i1 %cmp52.3, label %for.cond45.2.cleanup_crit_edge, label %for.cond45.3

for.cond45.2.cleanup_crit_edge:                   ; preds = %for.cond45.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond45.3:                                     ; preds = %for.cond45.2
  %34 = ptrtoint ptr %card48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card48, align 4
  %call50.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([5 x %struct.snd_kcontrol_new], ptr @snd_ice1712_6fire_controls, i32 0, i32 4), ptr noundef %ice) #7
  %call51.4 = tail call i32 @snd_ctl_add(ptr noundef %35, ptr noundef %call50.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.4)
  %cmp52.4 = icmp slt i32 %call51.4, 0
  br i1 %cmp52.4, label %for.cond45.3.cleanup_crit_edge, label %for.cond45.3.sw.epilog58_crit_edge

for.cond45.3.sw.epilog58_crit_edge:               ; preds = %for.cond45.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog58

for.cond45.3.cleanup_crit_edge:                   ; preds = %for.cond45.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog58:                                      ; preds = %for.cond45.3.sw.epilog58_crit_edge, %for.cond31.3.sw.epilog58_crit_edge, %if.end23.sw.epilog58_crit_edge, %for.cond.sw.epilog58_crit_edge, %sw.epilog.sw.epilog58_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog58, %for.cond45.3.cleanup_crit_edge, %for.cond45.2.cleanup_crit_edge, %for.cond45.1.cleanup_crit_edge, %for.cond45.cleanup_crit_edge, %for.cond31.3.cleanup_crit_edge, %for.cond31.2.cleanup_crit_edge, %for.cond31.1.cleanup_crit_edge, %for.cond31.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.cond31.preheader.cleanup_crit_edge, %for.cond45.preheader.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog58 ], [ %call, %if.then.cleanup_crit_edge ], [ %call4, %sw.bb.cleanup_crit_edge ], [ %call20, %sw.bb17.cleanup_crit_edge ], [ %call26, %if.end23.cleanup_crit_edge ], [ %call13, %for.cond.preheader.cleanup_crit_edge ], [ %call13.1, %for.cond.cleanup_crit_edge ], [ %call37, %for.cond31.preheader.cleanup_crit_edge ], [ %call37.1, %for.cond31.cleanup_crit_edge ], [ %call37.2, %for.cond31.1.cleanup_crit_edge ], [ %call37.3, %for.cond31.2.cleanup_crit_edge ], [ %call37.4, %for.cond31.3.cleanup_crit_edge ], [ %call51, %for.cond45.preheader.cleanup_crit_edge ], [ %call51.1, %for.cond45.cleanup_crit_edge ], [ %call51.2, %for.cond45.1.cleanup_crit_edge ], [ %call51.3, %for.cond45.2.cleanup_crit_edge ], [ %call51.4, %for.cond45.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_bus_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_device_create(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ice1712_ews88mt_chip_select(ptr nocapture noundef readonly %ice, i32 noundef %chip_mask) unnamed_addr #0 align 64 {
entry:
  %data = alloca i8, align 1
  %ndata = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ndata) #7
  %3 = ptrtoint ptr %ndata to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %ndata, align 1, !annotation !146
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 43
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %bus..i = select i1 %tobool.not.i, ptr %5, ptr %7
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #7
  %arrayidx = getelementptr [3 x ptr], ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @snd_i2c_readbytes(ptr noundef %9, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp24.not = icmp eq i32 %call, 1
  br i1 %cmp24.not, label %if.end26, label %entry.__error_crit_edge

entry.__error_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__error

if.end26:                                         ; preds = %entry
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %12 = and i8 %11, -16
  %13 = trunc i32 %chip_mask to i8
  %conv27 = or i8 %12, %13
  %14 = ptrtoint ptr %ndata to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv27, ptr %ndata, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv27, i8 %11)
  %cmp30.not = icmp eq i8 %conv27, %11
  br i1 %cmp30.not, label %if.end26.if.end40_crit_edge, label %if.then32

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then32:                                        ; preds = %if.end26
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call35 = call i32 @snd_i2c_sendbytes(ptr noundef %16, ptr noundef nonnull %ndata, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 1
  br i1 %cmp36.not, label %if.then32.if.end40_crit_edge, label %if.then32.__error_crit_edge

if.then32.__error_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %__error

if.then32.if.end40_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end40:                                         ; preds = %if.then32.if.end40_crit_edge, %if.end26.if.end40_crit_edge
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %master.i56 = getelementptr inbounds %struct.snd_i2c_bus, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %master.i56 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master.i56, align 4
  %tobool.not.i57 = icmp eq ptr %20, null
  %bus..i58 = select i1 %tobool.not.i57, ptr %18, ptr %20
  %lock_mutex2.i59 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i58, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i59) #7
  br label %cleanup

__error:                                          ; preds = %if.then32.__error_crit_edge, %entry.__error_crit_edge
  %21 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c, align 4
  %master.i60 = getelementptr inbounds %struct.snd_i2c_bus, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %master.i60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master.i60, align 4
  %tobool.not.i61 = icmp eq ptr %24, null
  %bus..i62 = select i1 %tobool.not.i61, ptr %22, ptr %24
  %lock_mutex2.i63 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i62, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i63) #7
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.28) #11
  br label %cleanup

cleanup:                                          ; preds = %__error, %if.end40
  %retval.0 = phi i32 [ -5, %__error ], [ 0, %if.end40 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ndata) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_init_cs8427(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs8427_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ews88_open_spdif(ptr nocapture noundef %ice, ptr nocapture noundef readnone %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
define internal void @ews88_setup_spdif(ptr noundef %ice, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 27
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  %cs8403_stream_bits = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 1
  %0 = ptrtoint ptr %cs8403_stream_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs8403_stream_bits, align 1
  %conv6 = zext i8 %1 to i32
  %and = and i32 %conv6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and8 = and i32 %conv6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %cond = select i1 %tobool9.not, i8 -97, i8 -7
  %and11 = select i1 %tobool.not, i8 -1, i8 %cond
  %tmp.0 = and i8 %and11, %1
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %rate, label %sw.default [
    i32 32000, label %sw.bb
    i32 44100, label %sw.bb19
    i32 48000, label %sw.bb27
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and14 = shl i8 %1, 1
  %3 = and i8 %and14, 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool22.not = icmp eq i8 %4, 0
  %cond23 = select i1 %tobool22.not, i8 64, i8 6
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool30.not = icmp eq i8 %5, 0
  %cond31 = select i1 %tobool30.not, i8 32, i8 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool37.not = icmp eq i8 %6, 0
  %cond38 = select i1 %tobool37.not, i8 64, i8 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb27, %sw.bb19, %sw.bb
  %cond38.pn = phi i8 [ %cond38, %sw.default ], [ %cond31, %sw.bb27 ], [ %cond23, %sw.bb19 ], [ %3, %sw.bb ]
  %tmp.1 = or i8 %cond38.pn, %tmp.0
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %tmp.1)
  %cmp46.not = icmp eq i8 %1, %tmp.1
  %7 = ptrtoint ptr %cs8403_stream_bits to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %tmp.1, ptr %cs8403_stream_bits, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #7
  br i1 %cmp46.not, label %sw.epilog.if.end54_crit_edge, label %if.then52

sw.epilog.if.end54_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then52:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %stream_ctl = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 2
  %10 = ptrtoint ptr %stream_ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %9, i32 noundef 1, ptr noundef %id) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %sw.epilog.if.end54_crit_edge
  tail call fastcc void @snd_ice1712_ews_cs8404_spdif_write(ptr noundef %ice, i8 noundef zeroext %tmp.1)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ews88_spdif_default_get(ptr nocapture noundef readonly %ice, ptr noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %spdif = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41
  %0 = ptrtoint ptr %spdif to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %spdif, align 4
  tail call fastcc void @snd_cs8404_decode_spdif_bits(ptr noundef %value, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ews88_spdif_default_put(ptr noundef %ice, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call = tail call fastcc zeroext i8 @snd_cs8404_encode_spdif_bits(ptr noundef %value)
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 17
  %3 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %playback_pro_substream, align 4
  %cmp6 = icmp eq ptr %4, null
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  tail call fastcc void @snd_ice1712_ews_cs8404_spdif_write(ptr noundef %ice, i8 noundef zeroext %call)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ews88_spdif_stream_get(ptr nocapture noundef readonly %ice, ptr noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %cs8403_stream_bits = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 41, i32 1
  %0 = ptrtoint ptr %cs8403_stream_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cs8403_stream_bits, align 1
  tail call fastcc void @snd_cs8404_decode_spdif_bits(ptr noundef %value, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ews88_spdif_stream_put(ptr noundef %ice, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call = tail call fastcc zeroext i8 @snd_cs8404_encode_spdif_bits(ptr noundef %value)
  %reg_lock = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %playback_pro_substream = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 17
  %3 = ptrtoint ptr %playback_pro_substream to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %playback_pro_substream, align 4
  %cmp6.not = icmp eq ptr %4, null
  br i1 %cmp6.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  tail call fastcc void @snd_ice1712_ews_cs8404_spdif_write(ptr noundef %ice, i8 noundef zeroext %call)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ice1712_ews_cs8404_spdif_write(ptr nocapture noundef readonly %ice, i8 noundef zeroext %bits) unnamed_addr #0 align 64 {
entry:
  %bits.addr = alloca i8, align 1
  %bytes = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bits.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %bits, ptr %bits.addr, align 1
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bytes) #7
  %3 = ptrtoint ptr %bytes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %bytes, align 1, !annotation !146
  %4 = getelementptr inbounds [2 x i8], ptr %bytes, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !146
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 43
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  %bus..i = select i1 %tobool.not.i, ptr %7, ptr %9
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #7
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 29
  %10 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eeprom, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %11, label %entry._error_crit_edge [
    i32 991237393, label %entry.sw.bb_crit_edge
    i32 991241489, label %entry.sw.bb_crit_edge34
    i32 991252753, label %entry.sw.bb_crit_edge35
    i32 991263761, label %entry.sw.bb_crit_edge36
    i32 991243025, label %sw.bb2
  ]

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry._error_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_error

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35, %entry.sw.bb_crit_edge36
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %call = call i32 @snd_i2c_sendbytes(ptr noundef %14, ptr noundef nonnull %bits.addr, i32 noundef 1) #7
  br label %_error

sw.bb2:                                           ; preds = %entry
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %call5 = call i32 @snd_i2c_readbytes(ptr noundef %16, ptr noundef nonnull %bytes, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 2
  br i1 %cmp6.not, label %if.end8, label %sw.bb2._error_crit_edge

sw.bb2._error_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %_error

if.end8:                                          ; preds = %sw.bb2
  %17 = ptrtoint ptr %bits.addr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bits.addr, align 1
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp11.not = icmp eq i8 %18, %20
  br i1 %cmp11.not, label %if.end8._error_crit_edge, label %if.then13

if.end8._error_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %_error

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %18, ptr %4, align 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %call18 = call i32 @snd_i2c_sendbytes(ptr noundef %23, ptr noundef nonnull %bytes, i32 noundef 2) #7
  br label %_error

_error:                                           ; preds = %if.then13, %if.end8._error_crit_edge, %sw.bb2._error_crit_edge, %sw.bb, %entry._error_crit_edge
  %24 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c, align 4
  %master.i30 = getelementptr inbounds %struct.snd_i2c_bus, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %master.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master.i30, align 4
  %tobool.not.i31 = icmp eq ptr %27, null
  %bus..i32 = select i1 %tobool.not.i31, ptr %25, ptr %27
  %lock_mutex2.i33 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i32, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i33) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bytes) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ewx_i2c_start(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #7
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
  %eeprom = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 991246353, i32 %9)
  %switch.selectcmp = icmp eq i32 %9, 991246353
  %switch.select = select i1 %switch.selectcmp, i32 15, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 991244305, i32 %9)
  %switch.selectcmp13 = icmp eq i32 %9, 991244305
  %switch.select14 = select i1 %switch.selectcmp13, i32 9, i32 %switch.select
  %or.i = or i32 %switch.select14, %3
  %10 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %gpio.i, align 4
  %set_dir.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %11 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_dir.i.i, align 4
  tail call void %12(ptr noundef %1, i32 noundef %or.i) #7
  %get_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 8
  %13 = ptrtoint ptr %get_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_data.i.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %1) #7
  %or4.i = or i32 %call.i.i, %switch.select14
  %set_data.i.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 7
  %15 = ptrtoint ptr %set_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_data.i.i, align 4
  tail call void %16(ptr noundef %1, i32 noundef %or4.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ewx_i2c_stop(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void %3(ptr noundef %1, i32 noundef %5) #7
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %6 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef %9) #7
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ewx_i2c_direction(ptr nocapture noundef readonly %bus, i32 noundef %clock, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  %spec.select = select i1 %tobool.not, i8 0, i8 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool2.not = icmp eq i32 %data, 0
  %2 = or i8 %spec.select, 16
  %mask.1 = select i1 %tobool2.not, i8 %spec.select, i8 %2
  %gpio = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gpio, align 4
  %and = and i32 %4, -49
  %conv8 = zext i8 %mask.1 to i32
  %or11 = or i32 %and, %conv8
  store i32 %or11, ptr %gpio, align 4
  %conv14 = trunc i32 %or11 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add.i = add i32 %6, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 34) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %9, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %10 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv14) #7, !srcloc !148
  %neg = xor i8 %mask.1, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add.i25 = add i32 %12, 3
  %and.i26 = and i32 %add.i25, 1048575
  %add1.i27 = or i32 %and.i26, -18874368
  %13 = inttoptr i32 %add1.i27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 33) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add5.i28 = add i32 %15, 4
  %and6.i29 = and i32 %add5.i28, 1048575
  %add7.i30 = or i32 %and6.i29, -18874368
  %16 = inttoptr i32 %add7.i30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %neg) #7, !srcloc !148
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ewx_i2c_setlines(ptr nocapture noundef readonly %bus, i32 noundef %clk, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk)
  %tobool.not = icmp eq i32 %clk, 0
  %spec.select = select i1 %tobool.not, i8 0, i8 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool2.not = icmp eq i32 %data, 0
  %2 = or i8 %spec.select, 16
  %tmp.1 = select i1 %tobool2.not, i8 %spec.select, i8 %2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add.i = add i32 %4, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 32) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %7, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %8 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %tmp.1) #7, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 1073740) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ewx_i2c_getclock(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #7, !srcloc !148
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %6, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %7 = inttoptr i32 %add5.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %9 = lshr i8 %8, 5
  %.lobit = and i8 %9, 1
  %10 = zext i8 %.lobit to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ewx_i2c_getdata(ptr nocapture noundef readonly %bus, i32 noundef %ack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.i, align 4
  %add.i = add i32 %3, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 33) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %6, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %7 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -9) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add.i7 = add i32 %9, 3
  %and.i8 = and i32 %add.i7, 1048575
  %add1.i9 = or i32 %and.i8, -18874368
  %10 = inttoptr i32 %add1.i9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 32) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add5.i10 = add i32 %12, 4
  %and6.i11 = and i32 %add5.i10, 1048575
  %add7.i12 = or i32 %and6.i11, -18874368
  %13 = inttoptr i32 %add7.i12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #7, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ack)
  %tobool.not = icmp eq i32 %ack, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add.i14 = add i32 %16, 3
  %and.i15 = and i32 %add.i14, 1048575
  %add1.i16 = or i32 %and.i15, -18874368
  %17 = inttoptr i32 %add1.i16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 32) #7, !srcloc !148
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %19, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i17 = or i32 %and4.i, -18874368
  %20 = inttoptr i32 %add5.i17 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %22 = lshr i8 %21, 4
  %.lobit = and i8 %22, 1
  %23 = zext i8 %.lobit to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port.i, align 4
  %add.i19 = add i32 %25, 3
  %and.i20 = and i32 %add.i19, 1048575
  %add1.i21 = or i32 %and.i20, -18874368
  %26 = inttoptr i32 %add1.i21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 32) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 4
  %add5.i22 = add i32 %28, 4
  %and6.i23 = and i32 %add5.i22, 1048575
  %add7.i24 = or i32 %and6.i23, -18874368
  %29 = inttoptr i32 %add7.i24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 8) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port.i, align 4
  %add.i26 = add i32 %31, 3
  %and.i27 = and i32 %add.i26, 1048575
  %add1.i28 = or i32 %and.i27, -18874368
  %32 = inttoptr i32 %add1.i28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 33) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port.i, align 4
  %add5.i29 = add i32 %34, 4
  %and6.i30 = and i32 %add5.i29, 1048575
  %add7.i31 = or i32 %and6.i30, -18874368
  %35 = inttoptr i32 %add7.i31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 -33) #7, !srcloc !148
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_sendbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_readbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @snd_cs8404_decode_spdif_bits(ptr noundef %diga, i8 noundef zeroext %bits) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %bits to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %diga to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %diga, align 1
  %2 = or i8 %1, 4
  store i8 %2, ptr %diga, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %and8 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %diga to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %diga, align 1
  %5 = or i8 %4, 8
  store i8 %5, ptr %diga, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end.if.end16_crit_edge
  %and18 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22 = getelementptr [24 x i8], ptr %diga, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx22, align 1
  %8 = or i8 %7, -128
  store i8 %8, ptr %arrayidx22, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end16.if.end26_crit_edge
  %and28 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cond = icmp eq i32 %and28, 0
  br i1 %cond, label %sw.bb, label %if.end26.sw.epilog_crit_edge

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx30 = getelementptr [24 x i8], ptr %diga, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx30, align 1
  %11 = or i8 %10, 3
  store i8 %11, ptr %arrayidx30, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end26.sw.epilog_crit_edge
  %and41 = and i32 %conv, 6
  %12 = zext i32 %and41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and41, label %sw.epilog.if.end137_crit_edge [
    i32 2, label %sw.epilog.if.end137.sink.split_crit_edge
    i32 4, label %sw.bb48
  ]

sw.epilog.if.end137.sink.split_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137.sink.split

sw.epilog.if.end137_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

sw.bb48:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137.sink.split

if.else:                                          ; preds = %entry
  %and64 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %spec.select = select i1 %tobool65.not, i8 3, i8 1
  %13 = ptrtoint ptr %diga to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %diga, align 1
  %and74 = lshr i32 %conv, 5
  %14 = and i32 %and74, 3
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %14, label %if.end72.unreachabledefault [
    i32 0, label %if.else.sw.epilog99.sink.split_crit_edge
    i32 2, label %sw.bb81
    i32 1, label %sw.bb87
    i32 3, label %if.else.sw.epilog99_crit_edge
  ]

if.else.sw.epilog99_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog99

if.else.sw.epilog99.sink.split_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog99.sink.split

sw.bb81:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog99.sink.split

sw.bb87:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog99.sink.split

if.end72.unreachabledefault:                      ; preds = %if.else
  unreachable

sw.epilog99.sink.split:                           ; preds = %sw.bb87, %sw.bb81, %if.else.sw.epilog99.sink.split_crit_edge
  %.sink165 = phi i8 [ -128, %sw.bb87 ], [ 64, %sw.bb81 ], [ -64, %if.else.sw.epilog99.sink.split_crit_edge ]
  %16 = or i8 %spec.select, %.sink165
  %17 = ptrtoint ptr %diga to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %diga, align 1
  br label %sw.epilog99

sw.epilog99:                                      ; preds = %sw.epilog99.sink.split, %if.else.sw.epilog99_crit_edge
  %and101 = and i32 %conv, 3
  %18 = zext i32 %and101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %and101, label %sw.epilog99.unreachabledefault [
    i32 2, label %sw.epilog99.sw.epilog126.sink.split_crit_edge
    i32 1, label %sw.bb108
    i32 0, label %sw.bb114
    i32 3, label %sw.epilog99.sw.epilog126_crit_edge
  ]

sw.epilog99.sw.epilog126_crit_edge:               ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog126

sw.epilog99.sw.epilog126.sink.split_crit_edge:    ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog126.sink.split

sw.bb108:                                         ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog126.sink.split

sw.bb114:                                         ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog126.sink.split

sw.epilog99.unreachabledefault:                   ; preds = %sw.epilog99
  unreachable

sw.epilog126.sink.split:                          ; preds = %sw.bb114, %sw.bb108, %sw.epilog99.sw.epilog126.sink.split_crit_edge
  %.sink167 = phi i8 [ 28, %sw.bb114 ], [ 12, %sw.bb108 ], [ 4, %sw.epilog99.sw.epilog126.sink.split_crit_edge ]
  %19 = ptrtoint ptr %diga to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %diga, align 1
  %21 = or i8 %20, %.sink167
  store i8 %21, ptr %diga, align 1
  br label %sw.epilog126

sw.epilog126:                                     ; preds = %sw.epilog126.sink.split, %sw.epilog99.sw.epilog126_crit_edge
  %and128 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %sw.epilog126.if.end137.sink.split_crit_edge, label %sw.epilog126.if.end137_crit_edge

sw.epilog126.if.end137_crit_edge:                 ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

sw.epilog126.if.end137.sink.split_crit_edge:      ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137.sink.split

if.end137.sink.split:                             ; preds = %sw.epilog126.if.end137.sink.split_crit_edge, %sw.bb48, %sw.epilog.if.end137.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb48 ], [ 3, %sw.epilog.if.end137.sink.split_crit_edge ], [ 1, %sw.epilog126.if.end137.sink.split_crit_edge ]
  %.sink169 = phi i8 [ 2, %sw.bb48 ], [ 3, %sw.epilog.if.end137.sink.split_crit_edge ], [ 2, %sw.epilog126.if.end137.sink.split_crit_edge ]
  %arrayidx50 = getelementptr [24 x i8], ptr %diga, i32 0, i32 %.sink
  %22 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx50, align 1
  %24 = or i8 %23, %.sink169
  store i8 %24, ptr %arrayidx50, align 1
  br label %if.end137

if.end137:                                        ; preds = %if.end137.sink.split, %sw.epilog126.if.end137_crit_edge, %sw.epilog.if.end137_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @snd_cs8404_encode_spdif_bits(ptr nocapture noundef readonly %diga) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %diga to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %diga, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and4 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %spec.select = select i1 %tobool5.not, i8 48, i8 16
  %2 = and i8 %1, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  %3 = or i8 %spec.select, 64
  %bits.1 = select i1 %cmp, i8 %3, i8 %spec.select
  %arrayidx20 = getelementptr [24 x i8], ptr %diga, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx20, align 1
  %6 = or i8 %bits.1, -128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool23.not151 = icmp slt i8 %5, 0
  %bits.2 = select i1 %tobool23.not151, i8 %bits.1, i8 %6
  %7 = and i8 %5, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp33 = icmp eq i8 %7, 0
  %8 = or i8 %bits.2, 3
  %bits.3 = select i1 %cmp33, i8 %8, i8 %bits.2
  %arrayidx41 = getelementptr [24 x i8], ptr %diga, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx41, align 1
  %11 = and i8 %10, 15
  %and43 = zext i8 %11 to i32
  %12 = zext i32 %and43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %and43, label %sw.bb [
    i32 3, label %sw.bb51
    i32 2, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i8 %bits.3, 6
  br label %if.end122

sw.bb47:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i8 %bits.3, 4
  br label %if.end122

sw.bb51:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i8 %bits.3, 2
  br label %if.end122

if.else:                                          ; preds = %entry
  %and58 = shl i8 %1, 1
  %16 = and i8 %and58, 4
  %17 = xor i8 %16, 4
  %18 = lshr i8 %1, 6
  %19 = zext i8 %18 to i32
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %19, label %if.end64.unreachabledefault [
    i32 3, label %if.else.sw.epilog86_crit_edge
    i32 1, label %sw.bb73
    i32 2, label %sw.bb77
    i32 0, label %if.else.sw.epilog86_crit_edge152
  ]

if.else.sw.epilog86_crit_edge152:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog86

if.else.sw.epilog86_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog86

sw.bb73:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %21 = or i8 %17, 64
  br label %sw.epilog86

sw.bb77:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %22 = or i8 %17, 32
  br label %sw.epilog86

if.end64.unreachabledefault:                      ; preds = %if.else
  unreachable

sw.epilog86:                                      ; preds = %sw.bb77, %sw.bb73, %if.else.sw.epilog86_crit_edge, %if.else.sw.epilog86_crit_edge152
  %bits.5 = phi i8 [ %22, %sw.bb77 ], [ %21, %sw.bb73 ], [ %17, %if.else.sw.epilog86_crit_edge ], [ %17, %if.else.sw.epilog86_crit_edge152 ]
  %23 = lshr i8 %1, 2
  %24 = and i8 %23, 7
  %25 = zext i8 %24 to i32
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %25, label %sw.bb104 [
    i32 1, label %sw.bb91
    i32 3, label %sw.bb95
    i32 7, label %sw.epilog86.sw.epilog108_crit_edge
  ]

sw.epilog86.sw.epilog108_crit_edge:               ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog108

sw.bb91:                                          ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #9
  %27 = or i8 %bits.5, 2
  br label %sw.epilog108

sw.bb95:                                          ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #9
  %28 = or i8 %bits.5, 1
  br label %sw.epilog108

sw.bb104:                                         ; preds = %sw.epilog86
  call void @__sanitizer_cov_trace_pc() #9
  %29 = or i8 %bits.5, 3
  br label %sw.epilog108

sw.epilog108:                                     ; preds = %sw.bb104, %sw.bb95, %sw.bb91, %sw.epilog86.sw.epilog108_crit_edge
  %bits.6 = phi i8 [ %29, %sw.bb104 ], [ %28, %sw.bb95 ], [ %27, %sw.bb91 ], [ %bits.5, %sw.epilog86.sw.epilog108_crit_edge ]
  %arrayidx110 = getelementptr [24 x i8], ptr %diga, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx110, align 1
  %32 = and i8 %31, 15
  %and112 = zext i8 %32 to i32
  %33 = zext i32 %and112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %and112, label %sw.default117 [
    i32 8, label %sw.epilog108.if.end122_crit_edge
    i32 2, label %sw.epilog108.if.end122_crit_edge153
  ]

sw.epilog108.if.end122_crit_edge153:              ; preds = %sw.epilog108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

sw.epilog108.if.end122_crit_edge:                 ; preds = %sw.epilog108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

sw.default117:                                    ; preds = %sw.epilog108
  call void @__sanitizer_cov_trace_pc() #9
  %34 = or i8 %bits.6, -128
  br label %if.end122

if.end122:                                        ; preds = %sw.default117, %sw.epilog108.if.end122_crit_edge, %sw.epilog108.if.end122_crit_edge153, %sw.bb51, %sw.bb47, %sw.bb
  %bits.7 = phi i8 [ %34, %sw.default117 ], [ %13, %sw.bb ], [ %14, %sw.bb47 ], [ %15, %sw.bb51 ], [ %bits.6, %sw.epilog108.if.end122_crit_edge ], [ %bits.6, %sw.epilog108.if.end122_crit_edge153 ]
  ret i8 %bits.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ews88mt_ak4524_lock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %shl = shl nuw i32 1, %chip
  %neg = and i32 %shl, 15
  %and = xor i32 %neg, 15
  %call = tail call fastcc i32 @snd_ice1712_ews88mt_chip_select(ptr noundef %1, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #7
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %8 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %9 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx5.i, align 4
  %12 = trunc i32 %7 to i8
  %conv1 = or i8 %12, 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add.i = add i32 %14, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 34) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %17, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %18 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv1) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %add.i12 = add i32 %20, 3
  %and.i13 = and i32 %add.i12, 1048575
  %add1.i14 = or i32 %and.i13, -18874368
  %21 = inttoptr i32 %add1.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 33) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i, align 4
  %add5.i15 = add i32 %23, 4
  %and6.i16 = and i32 %add5.i15, 1048575
  %add7.i17 = or i32 %and6.i16, -18874368
  %24 = inttoptr i32 %add7.i17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -57) #7, !srcloc !148
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ews88mt_ak4524_unlock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
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
  tail call void %3(ptr noundef %1, i32 noundef %5) #7
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %6 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5.i, align 4
  tail call void %7(ptr noundef %1, i32 noundef %9) #7
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
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #7
  %call = tail call fastcc i32 @snd_ice1712_ews88mt_chip_select(ptr noundef %1, i32 noundef 15)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ewx2496_ak4524_lock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_akm4xxx, ptr %ak, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #7
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
  %8 = trunc i32 %3 to i8
  %conv1 = or i8 %8, 57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port.i, align 4
  %add.i = add i32 %10, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 34) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %13, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %14 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv1) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add.i9 = add i32 %16, 3
  %and.i10 = and i32 %add.i9, 1048575
  %add1.i11 = or i32 %and.i10, -18874368
  %17 = inttoptr i32 %add1.i11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 33) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add5.i12 = add i32 %19, 4
  %and6.i13 = and i32 %add5.i12, 1048575
  %add7.i14 = or i32 %and6.i13, -18874368
  %20 = inttoptr i32 %add7.i14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 -58) #7, !srcloc !148
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dmx6fire_ak4524_lock(ptr nocapture noundef readonly %ak, i32 noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #7
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
  %shl = shl nuw i32 1, %chip
  %and = and i32 %shl, 7
  %cs_addr = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 5
  %11 = ptrtoint ptr %cs_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %cs_addr, align 4
  %cs_mask = getelementptr inbounds %struct.snd_ak4xxx_private, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %cs_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %cs_mask, align 4
  %13 = load i32, ptr %gpio.i, align 4
  %conv3 = or i32 %and, %13
  %14 = trunc i32 %conv3 to i8
  %conv6 = or i8 %14, 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %4, i32 0, i32 5
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add.i = add i32 %16, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %17 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 34) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %19, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %20 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv6) #7, !srcloc !148
  %21 = trunc i32 %and to i8
  %conv8 = xor i8 %21, -57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i, align 4
  %add.i17 = add i32 %23, 3
  %and.i18 = and i32 %add.i17, 1048575
  %add1.i19 = or i32 %and.i18, -18874368
  %24 = inttoptr i32 %add1.i19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 33) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i, align 4
  %add5.i20 = add i32 %26, 4
  %and6.i21 = and i32 %add5.i20, 1048575
  %add7.i22 = or i32 %and6.i21, -18874368
  %27 = inttoptr i32 %add7.i22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv8) #7, !srcloc !148
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_spdif_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ice1712_akm4xxx_build_controls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ewx_io_sense_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @snd_ice1712_ewx_io_sense_info.texts) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ewx_io_sense_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #7
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46
  %4 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2
  %6 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 1
  %7 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %add.i = add i32 %11, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %12 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 32) #7, !srcloc !148
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %14, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %15 = inttoptr i32 %add5.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %conv1 = zext i8 %16 to i32
  %and3 = and i32 %3, %conv1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp ne i32 %and3, 0
  %cond = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %17 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %value, align 8
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 5
  %18 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_dir.i, align 4
  %20 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved.i, align 4
  tail call void %19(ptr noundef %1, i32 noundef %21) #7
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 46, i32 3
  %22 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_mask.i, align 4
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5.i, align 4
  tail call void %23(ptr noundef %1, i32 noundef %25) #7
  %26 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %saved.i, align 4
  %28 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %gpio.i, align 4
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx5.i, align 4
  %31 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ewx_io_sense_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool.not = icmp sgt i32 %1, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  %conv4 = and i32 %1, 255
  %spec.select = select i1 %tobool3.not, i32 0, i32 %conv4
  %gpio_mutex.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 47
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex.i, i32 noundef 0) #7
  %gpio.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 46
  %6 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio.i, align 4
  %saved.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 46, i32 2
  %8 = ptrtoint ptr %saved.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %saved.i, align 4
  %write_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 46, i32 1
  %9 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %write_mask.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_ice1712, ptr %3, i32 0, i32 46, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %port.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port.i, align 4
  %add.i = add i32 %13, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 32) #7, !srcloc !148
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port.i, align 4
  %add3.i = add i32 %16, 4
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %17 = inttoptr i32 %add5.i to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %conv5 = zext i8 %18 to i32
  %neg = xor i32 %conv4, -1
  %and7 = and i32 %conv5, %neg
  %or = or i32 %and7, %spec.select
  %conv8 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %add.i23 = add i32 %20, 3
  %and.i24 = and i32 %add.i23, 1048575
  %add1.i25 = or i32 %and.i24, -18874368
  %21 = inttoptr i32 %add1.i25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 32) #7, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i, align 4
  %add5.i26 = add i32 %23, 4
  %and6.i = and i32 %add5.i26, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %24 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv8) #7, !srcloc !148
  %set_dir.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 46, i32 5
  %25 = ptrtoint ptr %set_dir.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_dir.i, align 4
  %27 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saved.i, align 4
  tail call void %26(ptr noundef %3, i32 noundef %28) #7
  %set_mask.i = getelementptr inbounds %struct.snd_ice1712, ptr %3, i32 0, i32 46, i32 3
  %29 = ptrtoint ptr %set_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_mask.i, align 4
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx5.i, align 4
  tail call void %30(ptr noundef %3, i32 noundef %32) #7
  %33 = ptrtoint ptr %saved.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saved.i, align 4
  %35 = ptrtoint ptr %gpio.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %gpio.i, align 4
  %36 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5.i, align 4
  %38 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %write_mask.i, align 4
  tail call void @mutex_unlock(ptr noundef %gpio_mutex.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv5)
  %cmp = icmp ne i32 %or, %conv5
  %conv9 = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv9, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_enum_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ews88mt_input_sense_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %5, %7
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #7, !srcloc !153
  %and.i = and i32 %10, %sub.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %data, align 1, !annotation !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %12 = icmp ugt i32 %and.i, 7
  br i1 %12, label %do.end, label %if.end23, !prof !154

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 674, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 43
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  %bus..i = select i1 %tobool.not.i, ptr %14, ptr %16
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #7
  %arrayidx = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %call24 = call i32 @snd_i2c_readbytes(ptr noundef %18, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 1
  br i1 %cmp25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 4
  %master.i43 = getelementptr inbounds %struct.snd_i2c_bus, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %master.i43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master.i43, align 4
  %tobool.not.i44 = icmp eq ptr %22, null
  %bus..i45 = select i1 %tobool.not.i44, ptr %20, ptr %22
  %lock_mutex2.i46 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i45, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i46) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  %conv = zext i8 %24 to i32
  %25 = xor i32 %conv, -1
  %26 = lshr i32 %25, %and.i
  %27 = and i32 %26, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %value, align 8
  %29 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c, align 4
  %master.i47 = getelementptr inbounds %struct.snd_i2c_bus, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %master.i47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master.i47, align 4
  %tobool.not.i48 = icmp eq ptr %32, null
  %bus..i49 = select i1 %tobool.not.i48, ptr %30, ptr %32
  %lock_mutex2.i50 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i49, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -5, %if.then26 ], [ 0, %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ews88mt_input_sense_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %data = alloca i8, align 1
  %ndata = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %index.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %ucontrol, i32 0, i32 5
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %index2.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index2.i, align 4
  %sub.i = sub i32 %5, %7
  %count.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 2
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  %10 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i, i32 %9) #7, !srcloc !153
  %and.i = and i32 %10, %sub.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %data, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ndata) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %12 = icmp ugt i32 %and.i, 7
  br i1 %12, label %do.end, label %if.end23, !prof !154

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 695, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 43
  %13 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  %bus..i = select i1 %tobool.not.i, ptr %14, ptr %16
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #7
  %arrayidx = getelementptr [3 x ptr], ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %call24 = call i32 @snd_i2c_readbytes(ptr noundef %18, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 1
  br i1 %cmp25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 4
  %master.i66 = getelementptr inbounds %struct.snd_i2c_bus, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %master.i66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master.i66, align 4
  %tobool.not.i67 = icmp eq ptr %22, null
  %bus..i68 = select i1 %tobool.not.i67, ptr %20, ptr %22
  %lock_mutex2.i69 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i68, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i69) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  %conv = zext i8 %24 to i32
  %shl = shl nuw nsw i32 1, %and.i
  %neg = xor i32 %shl, -1
  %and = and i32 %conv, %neg
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool30.not = icmp eq i32 %26, 0
  %spec.select65 = select i1 %tobool30.not, i32 %shl, i32 0
  %or = or i32 %spec.select65, %and
  %conv32 = trunc i32 %or to i8
  %27 = ptrtoint ptr %ndata to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv32, ptr %ndata, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %conv32)
  %cmp35.not = icmp eq i8 %24, %conv32
  br i1 %cmp35.not, label %if.end28.if.end44_crit_edge, label %land.lhs.true

if.end28.if.end44_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end28
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %call39 = call i32 @snd_i2c_sendbytes(ptr noundef %29, ptr noundef nonnull %ndata, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  br i1 %cmp40.not, label %land.lhs.true.if.end44_crit_edge, label %if.then42

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c, align 4
  %master.i70 = getelementptr inbounds %struct.snd_i2c_bus, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %master.i70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %master.i70, align 4
  %tobool.not.i71 = icmp eq ptr %33, null
  %bus..i72 = select i1 %tobool.not.i71, ptr %31, ptr %33
  %lock_mutex2.i73 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i72, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i73) #7
  br label %cleanup

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.end28.if.end44_crit_edge
  %34 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c, align 4
  %master.i74 = getelementptr inbounds %struct.snd_i2c_bus, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %master.i74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master.i74, align 4
  %tobool.not.i75 = icmp eq ptr %37, null
  %bus..i76 = select i1 %tobool.not.i75, ptr %35, ptr %37
  %lock_mutex2.i77 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i76, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i77) #7
  %38 = ptrtoint ptr %ndata to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ndata, align 1
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp48 = icmp ne i8 %39, %41
  %conv49 = zext i1 %cmp48 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then42, %if.then26, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -5, %if.then26 ], [ -5, %if.then42 ], [ %conv49, %if.end44 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ndata) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ews88mt_output_sense_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data, align 1, !annotation !146
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 43
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  %bus..i = select i1 %tobool.not.i, ptr %6, ptr %8
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #7
  %arrayidx = getelementptr [3 x ptr], ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @snd_i2c_readbytes(ptr noundef %10, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 4
  %master.i14 = getelementptr inbounds %struct.snd_i2c_bus, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %master.i14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i14, align 4
  %tobool.not.i15 = icmp eq ptr %14, null
  %bus..i16 = select i1 %tobool.not.i15, ptr %12, ptr %14
  %lock_mutex2.i17 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i16, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i17) #7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 1
  %17 = lshr i8 %16, 6
  %.lobit = and i8 %17, 1
  %18 = zext i8 %.lobit to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %19 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ews88mt_output_sense_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %data = alloca i8, align 1
  %ndata = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ndata) #7
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 43
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  %bus..i = select i1 %tobool.not.i, ptr %6, ptr %8
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #7
  %arrayidx = getelementptr [3 x ptr], ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call = call i32 @snd_i2c_readbytes(ptr noundef %10, ptr noundef nonnull %data, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 4
  %master.i30 = getelementptr inbounds %struct.snd_i2c_bus, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %master.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i30, align 4
  %tobool.not.i31 = icmp eq ptr %14, null
  %bus..i32 = select i1 %tobool.not.i31, ptr %12, ptr %14
  %lock_mutex2.i33 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i32, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i33) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data, align 1
  %17 = and i8 %16, -65
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  %cond = select i1 %tobool.not, i8 0, i8 64
  %or = or i8 %cond, %17
  %20 = ptrtoint ptr %ndata to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or, ptr %ndata, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %or, i8 %16)
  %cmp7.not = icmp eq i8 %or, %16
  br i1 %cmp7.not, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call11 = call i32 @snd_i2c_sendbytes(ptr noundef %22, ptr noundef nonnull %ndata, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 1
  br i1 %cmp12.not, label %land.lhs.true.if.end16_crit_edge, label %if.then14

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c, align 4
  %master.i34 = getelementptr inbounds %struct.snd_i2c_bus, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %master.i34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master.i34, align 4
  %tobool.not.i35 = icmp eq ptr %26, null
  %bus..i36 = select i1 %tobool.not.i35, ptr %24, ptr %26
  %lock_mutex2.i37 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i36, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i37) #7
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %27 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c, align 4
  %master.i38 = getelementptr inbounds %struct.snd_i2c_bus, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %master.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master.i38, align 4
  %tobool.not.i39 = icmp eq ptr %30, null
  %bus..i40 = select i1 %tobool.not.i39, ptr %28, ptr %30
  %lock_mutex2.i41 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i40, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i41) #7
  %31 = ptrtoint ptr %ndata to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ndata, align 1
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp20 = icmp ne i8 %32, %34
  %conv21 = zext i1 %cmp20 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -5, %if.then14 ], [ %conv21, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ndata) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ews88d_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %data, align 1, !annotation !146
  %7 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !146
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 43
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %bus..i = select i1 %tobool.not.i, ptr %10, ptr %12
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #7
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call = call i32 @snd_i2c_readbytes(ptr noundef %14, ptr noundef nonnull %data, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 4
  %master.i35 = getelementptr inbounds %struct.snd_i2c_bus, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %master.i35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master.i35, align 4
  %tobool.not.i36 = icmp eq ptr %18, null
  %bus..i37 = select i1 %tobool.not.i36, ptr %16, ptr %18
  %lock_mutex2.i38 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i37, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i38) #7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = lshr i32 %5, 3
  %19 = and i32 %and, 31
  %arrayidx7 = getelementptr [2 x i8], ptr %data, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %21 to i32
  %and8 = and i32 %5, 7
  %shr9 = lshr i32 %conv, %and8
  %22 = lshr i32 %5, 8
  %conv113940 = xor i32 %shr9, %22
  %spec.select = and i32 %conv113940, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_ews88d_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  %ndata = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %data, align 1, !annotation !146
  %7 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !146
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ndata) #7
  %9 = ptrtoint ptr %ndata to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %ndata, align 1, !annotation !146
  %10 = getelementptr inbounds [2 x i8], ptr %ndata, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !146
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 43
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  %bus..i = select i1 %tobool.not.i, ptr %13, ptr %15
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #7
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %call = call i32 @snd_i2c_readbytes(ptr noundef %17, ptr noundef nonnull %data, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 4
  %master.i78 = getelementptr inbounds %struct.snd_i2c_bus, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %master.i78 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i78, align 4
  %tobool.not.i79 = icmp eq ptr %21, null
  %bus..i80 = select i1 %tobool.not.i79, ptr %19, ptr %21
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %5, 3
  %22 = and i32 %and, 31
  %arrayidx6 = getelementptr [2 x i8], ptr %data, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx6, align 1
  %and7 = and i32 %5, 7
  %shl = shl nuw nsw i32 1, %and7
  %25 = trunc i32 %shl to i8
  %26 = xor i8 %25, -1
  %conv9 = and i8 %24, %26
  %arrayidx11 = getelementptr [2 x i8], ptr %ndata, i32 0, i32 %22
  %27 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv9, ptr %arrayidx11, align 1
  %28 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  %value23 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %29 = ptrtoint ptr %value23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %value23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool25.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  br i1 %tobool25.not, label %if.then12.if.end35.sink.split_crit_edge, label %if.then12.if.end35_crit_edge

if.then12.if.end35_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then12.if.end35.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.sink.split

if.else:                                          ; preds = %if.end
  br i1 %tobool25.not, label %if.else.if.end35_crit_edge, label %if.else.if.end35.sink.split_crit_edge

if.else.if.end35.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.sink.split

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end35.sink.split:                              ; preds = %if.else.if.end35.sink.split_crit_edge, %if.then12.if.end35.sink.split_crit_edge
  %conv33 = or i8 %24, %25
  %31 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv33, ptr %arrayidx11, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else.if.end35_crit_edge, %if.then12.if.end35_crit_edge
  %32 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %33)
  %cmp42 = icmp ne i8 %24, %33
  %conv43 = zext i1 %cmp42 to i32
  br i1 %cmp42, label %land.lhs.true, label %if.end35.if.end53_crit_edge

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end35
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %call48 = call i32 @snd_i2c_sendbytes(ptr noundef %35, ptr noundef nonnull %data, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 2
  br i1 %cmp49.not, label %land.lhs.true.if.end53_crit_edge, label %if.then51

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c, align 4
  %master.i82 = getelementptr inbounds %struct.snd_i2c_bus, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %master.i82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master.i82, align 4
  %tobool.not.i83 = icmp eq ptr %39, null
  %bus..i84 = select i1 %tobool.not.i83, ptr %37, ptr %39
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %if.end35.if.end53_crit_edge
  %40 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c, align 4
  %master.i86 = getelementptr inbounds %struct.snd_i2c_bus, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %master.i86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master.i86, align 4
  %tobool.not.i87 = icmp eq ptr %43, null
  %bus..i88 = select i1 %tobool.not.i87, ptr %41, ptr %43
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.then51, %if.then
  %bus..i88.sink = phi ptr [ %bus..i88, %if.end53 ], [ %bus..i84, %if.then51 ], [ %bus..i80, %if.then ]
  %retval.0 = phi i32 [ %conv43, %if.end53 ], [ -5, %if.then51 ], [ -5, %if.then ]
  %lock_mutex2.i89 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i88.sink, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i89) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ndata) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_6fire_select_input_info(ptr nocapture noundef readnone %kcontrol, ptr noundef %uinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_ctl_enum_info(ptr noundef %uinfo, i32 noundef 1, i32 noundef 4, ptr noundef nonnull @snd_ice1712_6fire_select_input_info.texts) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_6fire_select_input_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_ice1712_6fire_read_pca(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %call, 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_6fire_select_input_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %bytes.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_ice1712_6fire_read_pca(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, -4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %and1 = and i32 %3, 3
  %or = or i32 %and1, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %or)
  %cmp2.not = icmp eq i32 %call, %or
  br i1 %cmp2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %or to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bytes.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %bytes.i, i32 0, i32 1
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %5 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec1.i, align 4
  %i2c.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 43
  %7 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c.i, align 4
  %master.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  %bus..i.i = select i1 %tobool.not.i.i, ptr %8, ptr %10
  %lock_mutex2.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i.i, i32 noundef 0) #7
  %11 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %bytes.i, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %4, align 1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %call.i = call i32 @snd_i2c_sendbytes(ptr noundef %14, ptr noundef nonnull %bytes.i, i32 noundef 2) #7
  %15 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c.i, align 4
  %master.i5.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %master.i5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master.i5.i, align 4
  %tobool.not.i6.i = icmp eq ptr %18, null
  %bus..i7.i = select i1 %tobool.not.i6.i, ptr %16, ptr %18
  %lock_mutex2.i8.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i7.i, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i8.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bytes.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_6fire_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %call = tail call fastcc i32 @snd_ice1712_6fire_read_pca(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %3, 255
  %shr316 = lshr i32 %call, %and
  %4 = lshr i32 %3, 8
  %and417 = xor i32 %shr316, %4
  %spec.select = and i32 %and417, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ice1712_6fire_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %bytes.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %call = tail call fastcc i32 @snd_ice1712_6fire_read_pca(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 255
  %shl = shl nuw i32 1, %and
  %neg = xor i32 %shl, -1
  %and3 = and i32 %call, %neg
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %or = or i32 %shl, %call
  %spec.select = select i1 %tobool.not, i32 %and3, i32 %or
  %6 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  %xor = select i1 %tobool7.not, i32 0, i32 %shl
  %ndata.1 = xor i32 %spec.select, %xor
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %ndata.1)
  %cmp11.not = icmp eq i32 %call, %ndata.1
  br i1 %cmp11.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %ndata.1 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bytes.i) #7
  %7 = getelementptr inbounds [2 x i8], ptr %bytes.i, i32 0, i32 1
  %spec1.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 48
  %8 = ptrtoint ptr %spec1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec1.i, align 4
  %i2c.i = getelementptr inbounds %struct.snd_ice1712, ptr %1, i32 0, i32 43
  %10 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c.i, align 4
  %master.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  %bus..i.i = select i1 %tobool.not.i.i, ptr %11, ptr %13
  %lock_mutex2.i.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i.i, i32 noundef 0) #7
  %14 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %bytes.i, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %7, align 1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %call.i = call i32 @snd_i2c_sendbytes(ptr noundef %17, ptr noundef nonnull %bytes.i, i32 noundef 2) #7
  %18 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c.i, align 4
  %master.i5.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %master.i5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i5.i, align 4
  %tobool.not.i6.i = icmp eq ptr %21, null
  %bus..i7.i = select i1 %tobool.not.i6.i, ptr %19, ptr %21
  %lock_mutex2.i8.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i7.i, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i8.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bytes.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then12 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ice1712_6fire_read_pca(ptr nocapture noundef readonly %ice) unnamed_addr #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #7
  %spec1 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 48
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 4
  %i2c = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 43
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %bus..i = select i1 %tobool.not.i, ptr %3, ptr %5
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #7
  %6 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %byte, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call = call i32 @snd_i2c_sendbytes(ptr noundef %8, ptr noundef nonnull %byte, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c, align 4
  %master.i1 = getelementptr inbounds %struct.snd_i2c_bus, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %master.i1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master.i1, align 4
  %tobool.not.i2 = icmp eq ptr %12, null
  %bus..i3 = select i1 %tobool.not.i2, ptr %10, ptr %12
  %lock_mutex2.i4 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i3, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i4) #7
  %card = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %byte, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call5 = call i32 @snd_i2c_readbytes(ptr noundef %19, ptr noundef nonnull %byte, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 1
  %20 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c, align 4
  %master.i9 = getelementptr inbounds %struct.snd_i2c_bus, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %master.i9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %master.i9, align 4
  %tobool.not.i10 = icmp eq ptr %23, null
  %bus..i11 = select i1 %tobool.not.i10, ptr %21, ptr %23
  %lock_mutex2.i12 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i11, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i12) #7
  br i1 %cmp6.not, label %if.end14, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %card12 = getelementptr inbounds %struct.snd_ice1712, ptr %ice, i32 0, i32 10
  %24 = ptrtoint ptr %card12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card12, align 4
  %dev13 = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev13, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.53) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %byte, align 1
  %conv = zext i8 %29 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then7, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ -5, %if.then7 ], [ %conv, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133, !135, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/ice1712/ews.c", i32 1024, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ice1712/ews.c", i32 1025, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/ice1712/ews.c", i32 1031, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/ice1712/ews.c", i32 1032, i32 12}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/ice1712/ews.c", i32 1039, i32 12}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/ice1712/ews.c", i32 1045, i32 11}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/ice1712/ews.c", i32 1046, i32 12}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ice1712/ews.c", i32 1052, i32 11}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/ice1712/ews.c", i32 1059, i32 11}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/ice1712/ews.c", i32 1060, i32 12}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/ice1712/ews.c", i32 1066, i32 11}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ice1712/ews.c", i32 1067, i32 12}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/ice1712/ews.c", i32 1070, i32 20}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/ice1712/ews.c", i32 1071, i32 20}
!28 = !{ptr @snd_ice1712_ews_cards, !29, !"snd_ice1712_ews_cards", i1 false, i1 false}
!29 = !{!"../sound/pci/ice1712/ews.c", i32 1021, i32 30}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/ice1712/ews.c", i32 445, i32 38}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/ice1712/ews.c", i32 447, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @snd_ice1712_ews_init._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @snd_ice1712_ews_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/ice1712/ews.c", i32 456, i32 41}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/ice1712/ews.c", i32 460, i32 4}
!44 = !{ptr @snd_ice1712_ews_init._entry.21, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @snd_ice1712_ews_init._entry_ptr.23, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/ice1712/ews.c", i32 471, i32 41}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/ice1712/ews.c", i32 476, i32 41}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/ice1712/ews.c", i32 481, i32 41}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/ice1712/ews.c", i32 492, i32 41}
!54 = !{ptr @snd_ice1712_ewx_cs8427_bit_ops, !55, !"snd_ice1712_ewx_cs8427_bit_ops", i1 false, i1 false}
!55 = !{!"../sound/pci/ice1712/ews.c", i32 117, i32 31}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/ice1712/ews.c", i32 152, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @snd_ice1712_ews88mt_chip_select._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @snd_ice1712_ews88mt_chip_select._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @akm_ews88mt, !62, !"akm_ews88mt", i1 false, i1 false}
!62 = !{!"../sound/pci/ice1712/ews.c", i32 333, i32 33}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/ice1712/ews.c", i32 164, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ews88mt_ak4524_lock._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ews88mt_ak4524_lock._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @akm_ews88mt_priv, !69, !"akm_ews88mt_priv", i1 false, i1 false}
!69 = !{!"../sound/pci/ice1712/ews.c", i32 343, i32 40}
!70 = !{ptr @akm_ewx2496, !71, !"akm_ewx2496", i1 false, i1 false}
!71 = !{!"../sound/pci/ice1712/ews.c", i32 355, i32 33}
!72 = !{ptr @akm_ewx2496_priv, !73, !"akm_ewx2496_priv", i1 false, i1 false}
!73 = !{!"../sound/pci/ice1712/ews.c", i32 364, i32 40}
!74 = !{ptr @akm_6fire, !75, !"akm_6fire", i1 false, i1 false}
!75 = !{!"../sound/pci/ice1712/ews.c", i32 376, i32 33}
!76 = !{ptr @akm_6fire_priv, !77, !"akm_6fire_priv", i1 false, i1 false}
!77 = !{!"../sound/pci/ice1712/ews.c", i32 385, i32 40}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/ice1712/ews.c", i32 607, i32 11}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/ice1712/ews.c", i32 615, i32 11}
!82 = !{ptr @snd_ice1712_ewx2496_controls, !83, !"snd_ice1712_ewx2496_controls", i1 false, i1 false}
!83 = !{!"../sound/pci/ice1712/ews.c", i32 604, i32 38}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/ice1712/ews.c", i32 571, i32 3}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/ice1712/ews.c", i32 571, i32 12}
!88 = !{ptr @snd_ice1712_ewx_io_sense_info.texts, !89, !"texts", i1 false, i1 false}
!89 = !{!"../sound/pci/ice1712/ews.c", i32 570, i32 28}
!90 = !{ptr @snd_ice1712_ews88mt_input_sense, !91, !"snd_ice1712_ews88mt_input_sense", i1 false, i1 false}
!91 = !{!"../sound/pci/ice1712/ews.c", i32 712, i32 38}
!92 = !{ptr @snd_ice1712_ews88mt_output_sense, !93, !"snd_ice1712_ews88mt_output_sense", i1 false, i1 false}
!93 = !{!"../sound/pci/ice1712/ews.c", i32 721, i32 38}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/ice1712/ews.c", i32 800, i32 2}
!96 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/ice1712/ews.c", i32 801, i32 2}
!98 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/ice1712/ews.c", i32 802, i32 2}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/ice1712/ews.c", i32 803, i32 2}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/pci/ice1712/ews.c", i32 804, i32 2}
!104 = !{ptr @snd_ice1712_ews88d_controls, !105, !"snd_ice1712_ews88d_controls", i1 false, i1 false}
!105 = !{!"../sound/pci/ice1712/ews.c", i32 799, i32 38}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/ice1712/ews.c", i32 942, i32 11}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/ice1712/ews.c", i32 947, i32 2}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/ice1712/ews.c", i32 949, i32 2}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/ice1712/ews.c", i32 950, i32 2}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/pci/ice1712/ews.c", i32 951, i32 2}
!116 = !{ptr @snd_ice1712_6fire_controls, !117, !"snd_ice1712_6fire_controls", i1 false, i1 false}
!117 = !{!"../sound/pci/ice1712/ews.c", i32 939, i32 38}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/ice1712/ews.c", i32 895, i32 3}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/ice1712/ews.c", i32 895, i32 15}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/ice1712/ews.c", i32 895, i32 30}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/ice1712/ews.c", i32 895, i32 44}
!126 = !{ptr @snd_ice1712_6fire_select_input_info.texts, !127, !"texts", i1 false, i1 false}
!127 = !{!"../sound/pci/ice1712/ews.c", i32 894, i32 28}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/ice1712/ews.c", i32 821, i32 3}
!130 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @snd_ice1712_6fire_read_pca._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @snd_ice1712_6fire_read_pca._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/ice1712/ews.c", i32 828, i32 3}
!135 = !{ptr @snd_ice1712_6fire_read_pca._entry.52, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @snd_ice1712_6fire_read_pca._entry_ptr.54, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{i64 2154399246}
!148 = !{i64 4234392}
!149 = !{i64 2154399666}
!150 = !{i64 2154400257}
!151 = !{i64 4234787}
!152 = !{i64 2154400759}
!153 = !{i64 665820, i64 665837}
!154 = !{!"branch_weights", i32 1, i32 2000}
