; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_vp2040.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_vp2040.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tda1002x_config = type { i8, i8 }
%struct.tda10023_config = type { i8, i8, i32, i8, i8, i8, i8, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon, i32 }
%struct.atomic_t = type { i32 }
%union.anon = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.109], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.109 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.110 }>
%union.anon.110 = type { i64 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VP-2040\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DVB-C\00", [26 x i8] zeroinitializer }, align 32
@vp2040_config = dso_local global { %struct.mantis_hwconfig, [56 x i8] } { %struct.mantis_hwconfig { ptr @.str, ptr @.str.1, i32 1, i32 0, i32 0, i32 0, ptr null, ptr @vp2040_frontend_init, i8 12, i8 13, i32 0 }, [56 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): Probing for CU1216 (DVB-C)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vp2040_frontend_init\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/mantis/mantis_vp2040.c\00", [55 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr = internal global ptr @vp2040_frontend_init._entry, section ".printk_index", align 4
@vp2040_frontend_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): Probing for CU1216 (DVB-C)\0A\00", [57 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.7 = internal global ptr @vp2040_frontend_init._entry.5, section ".printk_index", align 4
@vp2040_frontend_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): Probing for CU1216 (DVB-C)\0A\00", [57 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.10 = internal global ptr @vp2040_frontend_init._entry.8, section ".printk_index", align 4
@vp2040_frontend_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): Probing for CU1216 (DVB-C)\0A\00", [57 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.13 = internal global ptr @vp2040_frontend_init._entry.11, section ".printk_index", align 4
@vp2040_frontend_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.15 = internal global ptr @vp2040_frontend_init._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10021_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10021_attach\00", [41 x i8] zeroinitializer }, align 32
@vp2040_tda1002x_cu1216_config = internal global { %struct.tda1002x_config, [30 x i8] } { %struct.tda1002x_config { i8 12, i8 1 }, [30 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10021_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.20 = internal global ptr @vp2040_frontend_init._entry.18, section ".printk_index", align 4
@vp2040_frontend_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s (%d): found Philips CU1216 DVB-C frontend (TDA10021) @ 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.23 = internal global ptr @vp2040_frontend_init._entry.21, section ".printk_index", align 4
@vp2040_frontend_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015%s (%d): found Philips CU1216 DVB-C frontend (TDA10021) @ 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.26 = internal global ptr @vp2040_frontend_init._entry.24, section ".printk_index", align 4
@vp2040_frontend_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016%s (%d): found Philips CU1216 DVB-C frontend (TDA10021) @ 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.29 = internal global ptr @vp2040_frontend_init._entry.27, section ".printk_index", align 4
@vp2040_frontend_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s (%d): found Philips CU1216 DVB-C frontend (TDA10021) @ 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.32 = internal global ptr @vp2040_frontend_init._entry.30, section ".printk_index", align 4
@vp2040_frontend_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.34 = internal global ptr @vp2040_frontend_init._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10023_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10023_attach\00", [41 x i8] zeroinitializer }, align 32
@vp2040_tda10023_cu1216_config = internal global { %struct.tda10023_config, [16 x i8] } { %struct.tda10023_config { i8 12, i8 1, i32 0, i8 0, i8 0, i8 0, i8 0, i16 0 }, [16 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10023_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.39 = internal global ptr @vp2040_frontend_init._entry.37, section ".printk_index", align 4
@vp2040_frontend_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s (%d): found Philips CU1216 DVB-C frontend (TDA10023) @ 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.42 = internal global ptr @vp2040_frontend_init._entry.40, section ".printk_index", align 4
@vp2040_frontend_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\015%s (%d): found Philips CU1216 DVB-C frontend (TDA10023) @ 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.45 = internal global ptr @vp2040_frontend_init._entry.43, section ".printk_index", align 4
@vp2040_frontend_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.3, ptr @.str.4, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016%s (%d): found Philips CU1216 DVB-C frontend (TDA10023) @ 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.48 = internal global ptr @vp2040_frontend_init._entry.46, section ".printk_index", align 4
@vp2040_frontend_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.3, ptr @.str.4, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\017%s (%d): found Philips CU1216 DVB-C frontend (TDA10023) @ 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.51 = internal global ptr @vp2040_frontend_init._entry.49, section ".printk_index", align 4
@vp2040_frontend_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.3, ptr @.str.4, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.53 = internal global ptr @vp2040_frontend_init._entry.52, section ".printk_index", align 4
@vp2040_frontend_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.3, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s (%d): Mantis DVB-C Philips CU1216 frontend attach success\0A\00", [32 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.56 = internal global ptr @vp2040_frontend_init._entry.54, section ".printk_index", align 4
@vp2040_frontend_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.3, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015%s (%d): Mantis DVB-C Philips CU1216 frontend attach success\0A\00", [32 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.59 = internal global ptr @vp2040_frontend_init._entry.57, section ".printk_index", align 4
@vp2040_frontend_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.3, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016%s (%d): Mantis DVB-C Philips CU1216 frontend attach success\0A\00", [32 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.62 = internal global ptr @vp2040_frontend_init._entry.60, section ".printk_index", align 4
@vp2040_frontend_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.3, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s (%d): Mantis DVB-C Philips CU1216 frontend attach success\0A\00", [32 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.65 = internal global ptr @vp2040_frontend_init._entry.63, section ".printk_index", align 4
@vp2040_frontend_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.3, ptr @.str.4, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.67 = internal global ptr @vp2040_frontend_init._entry.66, section ".printk_index", align 4
@vp2040_frontend_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.3, ptr @.str.4, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.70 = internal global ptr @vp2040_frontend_init._entry.68, section ".printk_index", align 4
@vp2040_frontend_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.3, ptr @.str.4, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.73 = internal global ptr @vp2040_frontend_init._entry.71, section ".printk_index", align 4
@vp2040_frontend_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.3, ptr @.str.4, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.76 = internal global ptr @vp2040_frontend_init._entry.74, section ".printk_index", align 4
@vp2040_frontend_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.3, ptr @.str.4, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.79 = internal global ptr @vp2040_frontend_init._entry.77, section ".printk_index", align 4
@vp2040_frontend_init._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.3, ptr @.str.4, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.81 = internal global ptr @vp2040_frontend_init._entry.80, section ".printk_index", align 4
@vp2040_frontend_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.3, ptr @.str.4, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.84 = internal global ptr @vp2040_frontend_init._entry.82, section ".printk_index", align 4
@vp2040_frontend_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.3, ptr @.str.4, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.87 = internal global ptr @vp2040_frontend_init._entry.85, section ".printk_index", align 4
@vp2040_frontend_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.3, ptr @.str.4, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.90 = internal global ptr @vp2040_frontend_init._entry.88, section ".printk_index", align 4
@vp2040_frontend_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.3, ptr @.str.4, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.93 = internal global ptr @vp2040_frontend_init._entry.91, section ".printk_index", align 4
@vp2040_frontend_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.3, ptr @.str.4, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp2040_frontend_init._entry_ptr.95 = internal global ptr @vp2040_frontend_init._entry.94, section ".printk_index", align 4
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 164, i32 16 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 165, i32 14 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"vp2040_config\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 163, i32 24 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 123, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [30 x i8] c"vp2040_tda1002x_cu1216_config\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 28, i32 31 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 124, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 129, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [30 x i8] c"vp2040_tda10023_cu1216_config\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 33, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 133, i32 9 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 138, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 146, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 151, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.301 = private constant [44 x i8] c"../drivers/media/pci/mantis/mantis_vp2040.c\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 158, i32 2 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @vp2040_frontend_init._entry, ptr @vp2040_frontend_init._entry.11, ptr @vp2040_frontend_init._entry.14, ptr @vp2040_frontend_init._entry.18, ptr @vp2040_frontend_init._entry.21, ptr @vp2040_frontend_init._entry.24, ptr @vp2040_frontend_init._entry.27, ptr @vp2040_frontend_init._entry.30, ptr @vp2040_frontend_init._entry.33, ptr @vp2040_frontend_init._entry.37, ptr @vp2040_frontend_init._entry.40, ptr @vp2040_frontend_init._entry.43, ptr @vp2040_frontend_init._entry.46, ptr @vp2040_frontend_init._entry.49, ptr @vp2040_frontend_init._entry.5, ptr @vp2040_frontend_init._entry.52, ptr @vp2040_frontend_init._entry.54, ptr @vp2040_frontend_init._entry.57, ptr @vp2040_frontend_init._entry.60, ptr @vp2040_frontend_init._entry.63, ptr @vp2040_frontend_init._entry.66, ptr @vp2040_frontend_init._entry.68, ptr @vp2040_frontend_init._entry.71, ptr @vp2040_frontend_init._entry.74, ptr @vp2040_frontend_init._entry.77, ptr @vp2040_frontend_init._entry.8, ptr @vp2040_frontend_init._entry.80, ptr @vp2040_frontend_init._entry.82, ptr @vp2040_frontend_init._entry.85, ptr @vp2040_frontend_init._entry.88, ptr @vp2040_frontend_init._entry.91, ptr @vp2040_frontend_init._entry.94, ptr @vp2040_frontend_init._entry_ptr, ptr @vp2040_frontend_init._entry_ptr.10, ptr @vp2040_frontend_init._entry_ptr.13, ptr @vp2040_frontend_init._entry_ptr.15, ptr @vp2040_frontend_init._entry_ptr.20, ptr @vp2040_frontend_init._entry_ptr.23, ptr @vp2040_frontend_init._entry_ptr.26, ptr @vp2040_frontend_init._entry_ptr.29, ptr @vp2040_frontend_init._entry_ptr.32, ptr @vp2040_frontend_init._entry_ptr.34, ptr @vp2040_frontend_init._entry_ptr.39, ptr @vp2040_frontend_init._entry_ptr.42, ptr @vp2040_frontend_init._entry_ptr.45, ptr @vp2040_frontend_init._entry_ptr.48, ptr @vp2040_frontend_init._entry_ptr.51, ptr @vp2040_frontend_init._entry_ptr.53, ptr @vp2040_frontend_init._entry_ptr.56, ptr @vp2040_frontend_init._entry_ptr.59, ptr @vp2040_frontend_init._entry_ptr.62, ptr @vp2040_frontend_init._entry_ptr.65, ptr @vp2040_frontend_init._entry_ptr.67, ptr @vp2040_frontend_init._entry_ptr.7, ptr @vp2040_frontend_init._entry_ptr.70, ptr @vp2040_frontend_init._entry_ptr.73, ptr @vp2040_frontend_init._entry_ptr.76, ptr @vp2040_frontend_init._entry_ptr.79, ptr @vp2040_frontend_init._entry_ptr.81, ptr @vp2040_frontend_init._entry_ptr.84, ptr @vp2040_frontend_init._entry_ptr.87, ptr @vp2040_frontend_init._entry_ptr.90, ptr @vp2040_frontend_init._entry_ptr.93, ptr @vp2040_frontend_init._entry_ptr.95, ptr @.str, ptr @.str.1, ptr @vp2040_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @vp2040_tda1002x_cu1216_config, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.35, ptr @.str.36, ptr @vp2040_tda10023_cu1216_config, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_tda1002x_cu1216_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_tda10023_cu1216_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp2040_frontend_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp2040_frontend_init(ptr noundef %mantis, ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  %b.i670 = alloca i8, align 1
  %pwm.i671 = alloca i8, align 1
  %msg.i672 = alloca [2 x %struct.i2c_msg], align 4
  %b.i = alloca i8, align 1
  %pwm.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20
  %call = tail call i32 @mantis_frontend_power(ptr noundef %mantis, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body374

if.then:                                          ; preds = %entry
  tail call void @mantis_frontend_soft_reset(ptr noundef %mantis) #4
  tail call void @msleep(i32 noundef 250) #4
  %0 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %if.then.do.end64_crit_edge, label %do.end

if.then.do.end64_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end64

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %3) #7
  br label %do.end64

do.end64:                                         ; preds = %do.end, %if.then.do.end64_crit_edge
  %call65 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #4
  %tobool.not = icmp eq ptr %call65, null
  br i1 %tobool.not, label %cond.end, label %do.end64.if.then69_crit_edge

do.end64.if.then69_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then69

cond.end:                                         ; preds = %do.end64
  %call66 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.17) #4
  %call67 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.16) #4
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %do.end78, label %cond.end.if.then69_crit_edge

cond.end.if.then69_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then69

if.then69:                                        ; preds = %cond.end.if.then69_crit_edge, %do.end64.if.then69_crit_edge
  %cond689 = phi ptr [ %call67, %cond.end.if.then69_crit_edge ], [ %call65, %do.end64.if.then69_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #4
  %4 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %b.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm.i) #4
  %5 = ptrtoint ptr %pwm.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %pwm.i, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #4
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 80, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 80, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pwm.i, ptr %buf5.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %adapter1, ptr noundef nonnull %msg.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then69.if.then.i_crit_edge

if.then69.if.then.i_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then69
  %16 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pwm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp6.i = icmp eq i8 %17, -1
  br i1 %cmp6.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.read_pwm.exit_crit_edge

lor.lhs.false.i.read_pwm.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_pwm.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then69.if.then.i_crit_edge
  %18 = ptrtoint ptr %pwm.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 72, ptr %pwm.i, align 1
  br label %read_pwm.exit

read_pwm.exit:                                    ; preds = %if.then.i, %lor.lhs.false.i.read_pwm.exit_crit_edge
  %19 = ptrtoint ptr %pwm.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pwm.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #4
  %call71 = call ptr %cond689(ptr noundef nonnull @vp2040_tda1002x_cu1216_config, ptr noundef %adapter1, i8 noundef zeroext %20) #4
  %cmp72 = icmp eq ptr %call71, null
  br i1 %cmp72, label %if.then73, label %do.body85

if.then73:                                        ; preds = %read_pwm.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.16) #4
  br label %if.else169

do.end78:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #7
  br label %if.else169

do.body85:                                        ; preds = %read_pwm.exit
  %21 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp87.not = icmp eq i32 %22, 0
  br i1 %cmp87.not, label %do.body85.if.then288_crit_edge, label %do.body85.if.then288.sink.split_crit_edge

do.body85.if.then288.sink.split_crit_edge:        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then288.sink.split

do.body85.if.then288_crit_edge:                   ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then288

if.else169:                                       ; preds = %do.end78, %if.then73
  %call172 = call ptr @__symbol_get(ptr noundef nonnull @.str.35) #4
  %tobool173.not = icmp eq ptr %call172, null
  br i1 %tobool173.not, label %cond.end178, label %if.else169.if.then181_crit_edge

if.else169.if.then181_crit_edge:                  ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then181

cond.end178:                                      ; preds = %if.else169
  %call176 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.36) #4
  %call177 = call ptr @__symbol_get(ptr noundef nonnull @.str.35) #4
  %tobool180.not = icmp eq ptr %call177, null
  br i1 %tobool180.not, label %do.end191, label %cond.end178.if.then181_crit_edge

cond.end178.if.then181_crit_edge:                 ; preds = %cond.end178
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then181

if.then181:                                       ; preds = %cond.end178.if.then181_crit_edge, %if.else169.if.then181_crit_edge
  %cond179694 = phi ptr [ %call177, %cond.end178.if.then181_crit_edge ], [ %call172, %if.else169.if.then181_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i670) #4
  %23 = ptrtoint ptr %b.i670 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %b.i670, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwm.i671) #4
  %24 = ptrtoint ptr %pwm.i671 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %pwm.i671, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i672) #4
  %25 = getelementptr inbounds i8, ptr %msg.i672, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %msg.i672 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 80, ptr %msg.i672, align 4
  %flags.i674 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i672, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i674 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i674, align 2
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %25, align 4
  %buf.i676 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i672, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i676 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %b.i670, ptr %buf.i676, align 4
  %arrayinit.element.i677 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i672, i32 1
  %31 = ptrtoint ptr %arrayinit.element.i677 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 80, ptr %arrayinit.element.i677, align 4
  %flags3.i678 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i672, i32 1, i32 1
  %32 = ptrtoint ptr %flags3.i678 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %flags3.i678, align 2
  %len4.i679 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i672, i32 1, i32 2
  %33 = ptrtoint ptr %len4.i679 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %len4.i679, align 4
  %buf5.i680 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i672, i32 1, i32 3
  %34 = ptrtoint ptr %buf5.i680 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pwm.i671, ptr %buf5.i680, align 4
  %call.i681 = call i32 @i2c_transfer(ptr noundef %adapter1, ptr noundef nonnull %msg.i672, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i681)
  %cmp.not.i682 = icmp eq i32 %call.i681, 2
  br i1 %cmp.not.i682, label %lor.lhs.false.i684, label %if.then181.if.then.i685_crit_edge

if.then181.if.then.i685_crit_edge:                ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i685

lor.lhs.false.i684:                               ; preds = %if.then181
  %35 = ptrtoint ptr %pwm.i671 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %pwm.i671, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %cmp6.i683 = icmp eq i8 %36, -1
  br i1 %cmp6.i683, label %lor.lhs.false.i684.if.then.i685_crit_edge, label %lor.lhs.false.i684.read_pwm.exit686_crit_edge

lor.lhs.false.i684.read_pwm.exit686_crit_edge:    ; preds = %lor.lhs.false.i684
  call void @__sanitizer_cov_trace_pc() #6
  br label %read_pwm.exit686

lor.lhs.false.i684.if.then.i685_crit_edge:        ; preds = %lor.lhs.false.i684
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i685

if.then.i685:                                     ; preds = %lor.lhs.false.i684.if.then.i685_crit_edge, %if.then181.if.then.i685_crit_edge
  %37 = ptrtoint ptr %pwm.i671 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 72, ptr %pwm.i671, align 1
  br label %read_pwm.exit686

read_pwm.exit686:                                 ; preds = %if.then.i685, %lor.lhs.false.i684.read_pwm.exit686_crit_edge
  %38 = ptrtoint ptr %pwm.i671 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pwm.i671, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i672) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwm.i671) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i670) #4
  %call183 = call ptr %cond179694(ptr noundef nonnull @vp2040_tda10023_cu1216_config, ptr noundef %adapter1, i8 noundef zeroext %39) #4
  %cmp184 = icmp eq ptr %call183, null
  br i1 %cmp184, label %if.then186, label %do.body198

if.then186:                                       ; preds = %read_pwm.exit686
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.35) #4
  br label %cleanup

do.end191:                                        ; preds = %cond.end178
  call void @__sanitizer_cov_trace_pc() #6
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #7
  br label %cleanup

do.body198:                                       ; preds = %read_pwm.exit686
  %40 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp200.not = icmp eq i32 %41, 0
  br i1 %cmp200.not, label %do.body198.if.then288_crit_edge, label %do.body198.if.then288.sink.split_crit_edge

do.body198.if.then288.sink.split_crit_edge:       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then288.sink.split

do.body198.if.then288_crit_edge:                  ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then288

if.then288.sink.split:                            ; preds = %do.body198.if.then288.sink.split_crit_edge, %do.body85.if.then288.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %do.body85.if.then288.sink.split_crit_edge ], [ @.str.41, %do.body198.if.then288.sink.split_crit_edge ]
  %fe.addr.0.ph.ph = phi ptr [ %call71, %do.body85.if.then288.sink.split_crit_edge ], [ %call183, %do.body198.if.then288.sink.split_crit_edge ]
  %num96 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %42 = ptrtoint ptr %num96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num96, align 8
  %44 = load i8, ptr @vp2040_tda1002x_cu1216_config, align 1
  %conv = zext i8 %44 to i32
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink, ptr noundef nonnull @.str.3, i32 noundef %43, i32 noundef %conv) #7
  br label %if.then288

if.then288:                                       ; preds = %if.then288.sink.split, %do.body198.if.then288_crit_edge, %do.body85.if.then288_crit_edge
  %fe.addr.0.ph = phi ptr [ %call183, %do.body198.if.then288_crit_edge ], [ %call71, %do.body85.if.then288_crit_edge ], [ %fe.addr.0.ph.ph, %if.then288.sink.split ]
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe.addr.0.ph, i32 0, i32 1, i32 32, i32 6
  %45 = ptrtoint ptr %set_params to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @tda1002x_cu1216_tuner_set, ptr %set_params, align 4
  %46 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp291.not = icmp eq i32 %47, 0
  br i1 %cmp291.not, label %if.end464.thread, label %if.end464

if.end464.thread:                                 ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #6
  %fe465700 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %48 = ptrtoint ptr %fe465700 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %fe.addr.0.ph, ptr %fe465700, align 4
  br label %cleanup

do.body374:                                       ; preds = %entry
  %49 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp376.not = icmp eq i32 %50, 0
  br i1 %cmp376.not, label %do.body374.cleanup_crit_edge, label %do.end385

do.body374.cleanup_crit_edge:                     ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end385:                                        ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #6
  %num387 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %51 = ptrtoint ptr %num387 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num387, align 8
  %name = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 12
  %call388 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.3, i32 noundef %52, ptr noundef %name, i32 noundef %call) #7
  br label %cleanup

if.end464:                                        ; preds = %if.then288
  %num302 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %53 = ptrtoint ptr %num302 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num302, align 8
  %call303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, i32 noundef %54) #7
  %55 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %mantis, align 8
  %fe465 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %56 = ptrtoint ptr %fe465 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %fe.addr.0.ph, ptr %fe465, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr)
  %switch = icmp ult i32 %.pr, 4
  br i1 %switch, label %if.end464.cleanup_crit_edge, label %do.end477

if.end464.cleanup_crit_edge:                      ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end477:                                        ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %num302 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num302, align 8
  %call480 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.3, i32 noundef %58) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end477, %if.end464.cleanup_crit_edge, %do.end385, %do.body374.cleanup_crit_edge, %if.end464.thread, %do.end191, %if.then186
  %retval.0 = phi i32 [ -5, %do.end385 ], [ 0, %do.end477 ], [ -1, %if.then186 ], [ -1, %do.end191 ], [ -5, %do.body374.cleanup_crit_edge ], [ 0, %if.end464.cleanup_crit_edge ], [ 0, %if.end464.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_frontend_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_frontend_soft_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1002x_cu1216_tuner_set(ptr noundef %fe) #0 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %adapter1 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #4
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #4
  %9 = getelementptr inbounds i8, ptr %msg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 96, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 6, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %14 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %buf2, align 4
  %15 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dtv_property_cache, align 4
  %add3 = add i32 %16, 36156250
  %div4 = udiv i32 %add3, 62500
  %shr = lshr i32 %div4, 8
  %17 = trunc i32 %shr to i8
  %conv = and i8 %17, 127
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %buf, align 1
  %conv6 = trunc i32 %div4 to i8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv6, ptr %4, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -50, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %16)
  %cmp = icmp ult i32 %16, 150000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 445000000, i32 %16)
  %cmp12 = icmp ult i32 %16, 445000000
  %phi.cast = select i1 %cmp12, i8 2, i8 4
  %cond14 = select i1 %cmp, i8 1, i8 %phi.cast
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cond14, ptr %6, align 1
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -34, ptr %7, align 1
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %8, align 1
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %24 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = call i32 %25(ptr noundef %fe, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call21 = call i32 @i2c_transfer(ptr noundef %adapter1, ptr noundef nonnull %msg, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 1
  br i1 %cmp22.not, label %if.end25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags, align 2
  %27 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %len, align 4
  br label %for.body

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %if.end25
  %i.093 = phi i32 [ 0, %if.end25 ], [ %inc, %if.end46.for.body_crit_edge ]
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool32.not = icmp eq ptr %29, null
  br i1 %tobool32.not, label %for.body.if.end37_crit_edge, label %if.then33

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = call i32 %29(ptr noundef %fe, i32 noundef 1) #4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %for.body.if.end37_crit_edge
  %call38 = call i32 @i2c_transfer(ptr noundef %adapter1, ptr noundef nonnull %msg, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 1
  br i1 %cmp39, label %land.lhs.true, label %if.end37.if.end46_crit_edge

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end37
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf, align 1
  %32 = and i8 %31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool44.not = icmp eq i8 %32, 0
  br i1 %tobool44.not, label %land.lhs.true.if.end46_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end37.if.end46_crit_edge
  call void @msleep(i32 noundef 10) #4
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end46.for.end_crit_edge, label %if.end46.for.body_crit_edge

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end46.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags, align 2
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2, ptr %len, align 4
  %35 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %5, ptr %buf2, align 4
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %5, align 1
  %38 = and i8 %37, -65
  store i8 %38, ptr %5, align 1
  %39 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool57.not = icmp eq ptr %40, null
  br i1 %tobool57.not, label %for.end.if.end62_crit_edge, label %if.then58

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call61 = call i32 %40(ptr noundef %fe, i32 noundef 1) #4
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %for.end.if.end62_crit_edge
  %call63 = call i32 @i2c_transfer(ptr noundef %adapter1, ptr noundef nonnull %msg, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, 1
  %. = select i1 %cmp64.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.end.cleanup_crit_edge ], [ %., %if.end62 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 164, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 165, i32 14}
!4 = !{ptr @vp2040_config, !5, !"vp2040_config", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 163, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 123, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vp2040_frontend_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @vp2040_frontend_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vp2040_frontend_init._entry.5, !7, !"_entry", i1 false, i1 false}
!14 = !{ptr @vp2040_frontend_init._entry_ptr.7, !7, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !7, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vp2040_frontend_init._entry.8, !7, !"_entry", i1 false, i1 false}
!17 = !{ptr @vp2040_frontend_init._entry_ptr.10, !7, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !7, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vp2040_frontend_init._entry.11, !7, !"_entry", i1 false, i1 false}
!20 = !{ptr @vp2040_frontend_init._entry_ptr.13, !7, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @vp2040_frontend_init._entry.14, !7, !"_entry", i1 false, i1 false}
!22 = !{ptr @vp2040_frontend_init._entry_ptr.15, !7, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 124, i32 8}
!25 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.19, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vp2040_frontend_init._entry.18, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @vp2040_frontend_init._entry_ptr.20, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 129, i32 4}
!31 = !{ptr @vp2040_frontend_init._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vp2040_frontend_init._entry_ptr.23, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.25, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vp2040_frontend_init._entry.24, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @vp2040_frontend_init._entry_ptr.26, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.28, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vp2040_frontend_init._entry.27, !30, !"_entry", i1 false, i1 false}
!38 = !{ptr @vp2040_frontend_init._entry_ptr.29, !30, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.31, !30, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vp2040_frontend_init._entry.30, !30, !"_entry", i1 false, i1 false}
!41 = !{ptr @vp2040_frontend_init._entry_ptr.32, !30, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @vp2040_frontend_init._entry.33, !30, !"_entry", i1 false, i1 false}
!43 = !{ptr @vp2040_frontend_init._entry_ptr.34, !30, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.35, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 133, i32 9}
!46 = !{ptr @.str.36, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.38, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @vp2040_frontend_init._entry.37, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @vp2040_frontend_init._entry_ptr.39, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.41, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 138, i32 5}
!52 = !{ptr @vp2040_frontend_init._entry.40, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vp2040_frontend_init._entry_ptr.42, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.44, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vp2040_frontend_init._entry.43, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @vp2040_frontend_init._entry_ptr.45, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.47, !51, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vp2040_frontend_init._entry.46, !51, !"_entry", i1 false, i1 false}
!59 = !{ptr @vp2040_frontend_init._entry_ptr.48, !51, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.50, !51, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vp2040_frontend_init._entry.49, !51, !"_entry", i1 false, i1 false}
!62 = !{ptr @vp2040_frontend_init._entry_ptr.51, !51, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @vp2040_frontend_init._entry.52, !51, !"_entry", i1 false, i1 false}
!64 = !{ptr @vp2040_frontend_init._entry_ptr.53, !51, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.55, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 146, i32 4}
!67 = !{ptr @vp2040_frontend_init._entry.54, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @vp2040_frontend_init._entry_ptr.56, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.58, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @vp2040_frontend_init._entry.57, !66, !"_entry", i1 false, i1 false}
!71 = !{ptr @vp2040_frontend_init._entry_ptr.59, !66, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.61, !66, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @vp2040_frontend_init._entry.60, !66, !"_entry", i1 false, i1 false}
!74 = !{ptr @vp2040_frontend_init._entry_ptr.62, !66, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.64, !66, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vp2040_frontend_init._entry.63, !66, !"_entry", i1 false, i1 false}
!77 = !{ptr @vp2040_frontend_init._entry_ptr.65, !66, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @vp2040_frontend_init._entry.66, !66, !"_entry", i1 false, i1 false}
!79 = !{ptr @vp2040_frontend_init._entry_ptr.67, !66, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.69, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 151, i32 3}
!82 = !{ptr @vp2040_frontend_init._entry.68, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @vp2040_frontend_init._entry_ptr.70, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.72, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @vp2040_frontend_init._entry.71, !81, !"_entry", i1 false, i1 false}
!86 = !{ptr @vp2040_frontend_init._entry_ptr.73, !81, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.75, !81, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vp2040_frontend_init._entry.74, !81, !"_entry", i1 false, i1 false}
!89 = !{ptr @vp2040_frontend_init._entry_ptr.76, !81, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.78, !81, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @vp2040_frontend_init._entry.77, !81, !"_entry", i1 false, i1 false}
!92 = !{ptr @vp2040_frontend_init._entry_ptr.79, !81, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @vp2040_frontend_init._entry.80, !81, !"_entry", i1 false, i1 false}
!94 = !{ptr @vp2040_frontend_init._entry_ptr.81, !81, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.83, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 158, i32 2}
!97 = !{ptr @vp2040_frontend_init._entry.82, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @vp2040_frontend_init._entry_ptr.84, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.86, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @vp2040_frontend_init._entry.85, !96, !"_entry", i1 false, i1 false}
!101 = !{ptr @vp2040_frontend_init._entry_ptr.87, !96, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.89, !96, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @vp2040_frontend_init._entry.88, !96, !"_entry", i1 false, i1 false}
!104 = !{ptr @vp2040_frontend_init._entry_ptr.90, !96, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.92, !96, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @vp2040_frontend_init._entry.91, !96, !"_entry", i1 false, i1 false}
!107 = !{ptr @vp2040_frontend_init._entry_ptr.93, !96, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @vp2040_frontend_init._entry.94, !96, !"_entry", i1 false, i1 false}
!109 = !{ptr @vp2040_frontend_init._entry_ptr.95, !96, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @vp2040_tda1002x_cu1216_config, !111, !"vp2040_tda1002x_cu1216_config", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 28, i32 31}
!112 = !{ptr @vp2040_tda10023_cu1216_config, !113, !"vp2040_tda10023_cu1216_config", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/mantis/mantis_vp2040.c", i32 33, i32 31}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"auto-init"}
