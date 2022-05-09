; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_vp1033.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_vp1033.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VP-1033\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DVB-S/DSS\00", [22 x i8] zeroinitializer }, align 32
@vp1033_config = dso_local global { %struct.mantis_hwconfig, [56 x i8] } { %struct.mantis_hwconfig { ptr @.str, ptr @.str.1, i32 1, i32 0, i32 0, i32 0, ptr null, ptr @vp1033_frontend_init, i8 12, i8 13, i32 0 }, [56 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s (%d): Probing for STV0299 (DVB-S)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vp1033_frontend_init\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/mantis/mantis_vp1033.c\00", [55 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr = internal global ptr @vp1033_frontend_init._entry, section ".printk_index", align 4
@vp1033_frontend_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015%s (%d): Probing for STV0299 (DVB-S)\0A\00", [56 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.7 = internal global ptr @vp1033_frontend_init._entry.5, section ".printk_index", align 4
@vp1033_frontend_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s (%d): Probing for STV0299 (DVB-S)\0A\00", [56 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.10 = internal global ptr @vp1033_frontend_init._entry.8, section ".printk_index", align 4
@vp1033_frontend_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s (%d): Probing for STV0299 (DVB-S)\0A\00", [56 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.13 = internal global ptr @vp1033_frontend_init._entry.11, section ".printk_index", align 4
@vp1033_frontend_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.15 = internal global ptr @vp1033_frontend_init._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@lgtdqcs001f_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @lgtdqcs001f_inittab, i32 88000000, i8 0, i32 100, ptr @lgtdqcs001f_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.20 = internal global ptr @vp1033_frontend_init._entry.18, section ".printk_index", align 4
@vp1033_frontend_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s (%d): found STV0299 DVB-S frontend @ 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.23 = internal global ptr @vp1033_frontend_init._entry.21, section ".printk_index", align 4
@vp1033_frontend_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015%s (%d): found STV0299 DVB-S frontend @ 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.26 = internal global ptr @vp1033_frontend_init._entry.24, section ".printk_index", align 4
@vp1033_frontend_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s (%d): found STV0299 DVB-S frontend @ 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.29 = internal global ptr @vp1033_frontend_init._entry.27, section ".printk_index", align 4
@vp1033_frontend_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s (%d): found STV0299 DVB-S frontend @ 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.32 = internal global ptr @vp1033_frontend_init._entry.30, section ".printk_index", align 4
@vp1033_frontend_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.34 = internal global ptr @vp1033_frontend_init._entry.33, section ".printk_index", align 4
@vp1033_frontend_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s (%d): Mantis DVB-S STV0299 frontend attach success\0A\00", [39 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.37 = internal global ptr @vp1033_frontend_init._entry.35, section ".printk_index", align 4
@vp1033_frontend_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015%s (%d): Mantis DVB-S STV0299 frontend attach success\0A\00", [39 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.40 = internal global ptr @vp1033_frontend_init._entry.38, section ".printk_index", align 4
@vp1033_frontend_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.3, ptr @.str.4, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s (%d): Mantis DVB-S STV0299 frontend attach success\0A\00", [39 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.43 = internal global ptr @vp1033_frontend_init._entry.41, section ".printk_index", align 4
@vp1033_frontend_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s (%d): Mantis DVB-S STV0299 frontend attach success\0A\00", [39 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.46 = internal global ptr @vp1033_frontend_init._entry.44, section ".printk_index", align 4
@vp1033_frontend_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.48 = internal global ptr @vp1033_frontend_init._entry.47, section ".printk_index", align 4
@vp1033_frontend_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.3, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.51 = internal global ptr @vp1033_frontend_init._entry.49, section ".printk_index", align 4
@vp1033_frontend_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.3, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.54 = internal global ptr @vp1033_frontend_init._entry.52, section ".printk_index", align 4
@vp1033_frontend_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.3, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.57 = internal global ptr @vp1033_frontend_init._entry.55, section ".printk_index", align 4
@vp1033_frontend_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.3, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.60 = internal global ptr @vp1033_frontend_init._entry.58, section ".printk_index", align 4
@vp1033_frontend_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.3, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.62 = internal global ptr @vp1033_frontend_init._entry.61, section ".printk_index", align 4
@vp1033_frontend_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.3, ptr @.str.4, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.65 = internal global ptr @vp1033_frontend_init._entry.63, section ".printk_index", align 4
@vp1033_frontend_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.3, ptr @.str.4, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.68 = internal global ptr @vp1033_frontend_init._entry.66, section ".printk_index", align 4
@vp1033_frontend_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.3, ptr @.str.4, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.71 = internal global ptr @vp1033_frontend_init._entry.69, section ".printk_index", align 4
@vp1033_frontend_init._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.3, ptr @.str.4, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.74 = internal global ptr @vp1033_frontend_init._entry.72, section ".printk_index", align 4
@vp1033_frontend_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.3, ptr @.str.4, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1033_frontend_init._entry_ptr.76 = internal global ptr @vp1033_frontend_init._entry.75, section ".printk_index", align 4
@lgtdqcs001f_inittab = internal global { [84 x i8], [44 x i8] } { [84 x i8] c"\01\15\020\03\00\04*\05\85\06\02\07\00\08\00\0C\01\0D\81\0ED\0F\94\10<\11\84\12\B9\13\B5\14O\15\C9\16\80\176\18\FB\19\CF\1A\BC\1C+\1D'\1E\00\1F\0B \A1!`\22\00#\00(\00)(*\14+\0F,\09-\051\1F2\193\FC4\13\FF\FF", [44 x i8] zeroinitializer }, align 32
@lgtdqcs001f_tuner_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): Write: I2C Transfer failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lgtdqcs001f_tuner_set\00", [42 x i8] zeroinitializer }, align 32
@lgtdqcs001f_tuner_set._entry_ptr = internal global ptr @lgtdqcs001f_tuner_set._entry, section ".printk_index", align 4
@lgtdqcs001f_tuner_set._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.4, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): Write: I2C Transfer failed\0A\00", [57 x i8] zeroinitializer }, align 32
@lgtdqcs001f_tuner_set._entry_ptr.81 = internal global ptr @lgtdqcs001f_tuner_set._entry.79, section ".printk_index", align 4
@lgtdqcs001f_tuner_set._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str.4, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): Write: I2C Transfer failed\0A\00", [57 x i8] zeroinitializer }, align 32
@lgtdqcs001f_tuner_set._entry_ptr.84 = internal global ptr @lgtdqcs001f_tuner_set._entry.82, section ".printk_index", align 4
@lgtdqcs001f_tuner_set._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.4, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): Write: I2C Transfer failed\0A\00", [57 x i8] zeroinitializer }, align 32
@lgtdqcs001f_tuner_set._entry_ptr.87 = internal global ptr @lgtdqcs001f_tuner_set._entry.85, section ".printk_index", align 4
@lgtdqcs001f_tuner_set._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str.4, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lgtdqcs001f_tuner_set._entry_ptr.89 = internal global ptr @lgtdqcs001f_tuner_set._entry.88, section ".printk_index", align 4
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 189, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 190, i32 15 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"vp1033_config\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 188, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 163, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"lgtdqcs001f_config\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 141, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 164, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 168, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 171, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 176, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 183, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c"lgtdqcs001f_inittab\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 26, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.286 = private constant [44 x i8] c"../drivers/media/pci/mantis/mantis_vp1033.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 98, i32 3 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @lgtdqcs001f_tuner_set._entry, ptr @lgtdqcs001f_tuner_set._entry.79, ptr @lgtdqcs001f_tuner_set._entry.82, ptr @lgtdqcs001f_tuner_set._entry.85, ptr @lgtdqcs001f_tuner_set._entry.88, ptr @lgtdqcs001f_tuner_set._entry_ptr, ptr @lgtdqcs001f_tuner_set._entry_ptr.81, ptr @lgtdqcs001f_tuner_set._entry_ptr.84, ptr @lgtdqcs001f_tuner_set._entry_ptr.87, ptr @lgtdqcs001f_tuner_set._entry_ptr.89, ptr @vp1033_frontend_init._entry, ptr @vp1033_frontend_init._entry.11, ptr @vp1033_frontend_init._entry.14, ptr @vp1033_frontend_init._entry.18, ptr @vp1033_frontend_init._entry.21, ptr @vp1033_frontend_init._entry.24, ptr @vp1033_frontend_init._entry.27, ptr @vp1033_frontend_init._entry.30, ptr @vp1033_frontend_init._entry.33, ptr @vp1033_frontend_init._entry.35, ptr @vp1033_frontend_init._entry.38, ptr @vp1033_frontend_init._entry.41, ptr @vp1033_frontend_init._entry.44, ptr @vp1033_frontend_init._entry.47, ptr @vp1033_frontend_init._entry.49, ptr @vp1033_frontend_init._entry.5, ptr @vp1033_frontend_init._entry.52, ptr @vp1033_frontend_init._entry.55, ptr @vp1033_frontend_init._entry.58, ptr @vp1033_frontend_init._entry.61, ptr @vp1033_frontend_init._entry.63, ptr @vp1033_frontend_init._entry.66, ptr @vp1033_frontend_init._entry.69, ptr @vp1033_frontend_init._entry.72, ptr @vp1033_frontend_init._entry.75, ptr @vp1033_frontend_init._entry.8, ptr @vp1033_frontend_init._entry_ptr, ptr @vp1033_frontend_init._entry_ptr.10, ptr @vp1033_frontend_init._entry_ptr.13, ptr @vp1033_frontend_init._entry_ptr.15, ptr @vp1033_frontend_init._entry_ptr.20, ptr @vp1033_frontend_init._entry_ptr.23, ptr @vp1033_frontend_init._entry_ptr.26, ptr @vp1033_frontend_init._entry_ptr.29, ptr @vp1033_frontend_init._entry_ptr.32, ptr @vp1033_frontend_init._entry_ptr.34, ptr @vp1033_frontend_init._entry_ptr.37, ptr @vp1033_frontend_init._entry_ptr.40, ptr @vp1033_frontend_init._entry_ptr.43, ptr @vp1033_frontend_init._entry_ptr.46, ptr @vp1033_frontend_init._entry_ptr.48, ptr @vp1033_frontend_init._entry_ptr.51, ptr @vp1033_frontend_init._entry_ptr.54, ptr @vp1033_frontend_init._entry_ptr.57, ptr @vp1033_frontend_init._entry_ptr.60, ptr @vp1033_frontend_init._entry_ptr.62, ptr @vp1033_frontend_init._entry_ptr.65, ptr @vp1033_frontend_init._entry_ptr.68, ptr @vp1033_frontend_init._entry_ptr.7, ptr @vp1033_frontend_init._entry_ptr.71, ptr @vp1033_frontend_init._entry_ptr.74, ptr @vp1033_frontend_init._entry_ptr.76, ptr @.str, ptr @.str.1, ptr @vp1033_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @lgtdqcs001f_config, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @lgtdqcs001f_inittab, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgtdqcs001f_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1033_frontend_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgtdqcs001f_inittab to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgtdqcs001f_tuner_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgtdqcs001f_tuner_set._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgtdqcs001f_tuner_set._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgtdqcs001f_tuner_set._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgtdqcs001f_tuner_set._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp1033_frontend_init(ptr noundef %mantis, ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20
  %call = tail call i32 @mantis_frontend_power(ptr noundef %mantis, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body253

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
  br i1 %tobool68.not, label %do.end77, label %cond.end.if.then69_crit_edge

cond.end.if.then69_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then69

if.then69:                                        ; preds = %cond.end.if.then69_crit_edge, %do.end64.if.then69_crit_edge
  %cond522 = phi ptr [ %call67, %cond.end.if.then69_crit_edge ], [ %call65, %do.end64.if.then69_crit_edge ]
  %call70 = tail call ptr %cond522(ptr noundef nonnull @lgtdqcs001f_config, ptr noundef %adapter1) #4
  %cmp71 = icmp eq ptr %call70, null
  br i1 %cmp71, label %if.then72, label %if.then83

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.16) #4
  br label %cleanup

do.end77:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.then83:                                        ; preds = %if.then69
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %call70, i32 0, i32 1, i32 32, i32 6
  %4 = ptrtoint ptr %set_params to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lgtdqcs001f_tuner_set, ptr %set_params, align 4
  %5 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp86.not = icmp eq i32 %6, 0
  br i1 %cmp86.not, label %if.then83.if.end343.thread_crit_edge, label %do.body168

if.then83.if.end343.thread_crit_edge:             ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end343.thread

do.body168:                                       ; preds = %if.then83
  %num95 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %7 = ptrtoint ptr %num95 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num95, align 8
  %9 = load i8, ptr @lgtdqcs001f_config, align 4
  %conv = zext i8 %9 to i32
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef %8, i32 noundef %conv) #7
  %10 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp170.not = icmp eq i32 %.pr, 0
  br i1 %cmp170.not, label %do.body168.if.end343.thread_crit_edge, label %if.end343

do.body168.if.end343.thread_crit_edge:            ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end343.thread

do.body253:                                       ; preds = %entry
  %11 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp255.not = icmp eq i32 %12, 0
  br i1 %cmp255.not, label %do.body253.cleanup_crit_edge, label %do.end264

do.body253.cleanup_crit_edge:                     ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end264:                                        ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #6
  %num266 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %13 = ptrtoint ptr %num266 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num266, align 8
  %name = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 12
  %call267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %14, ptr noundef %name, i32 noundef %call) #7
  br label %cleanup

if.end343.thread:                                 ; preds = %do.body168.if.end343.thread_crit_edge, %if.then83.if.end343.thread_crit_edge
  %fe344527 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %15 = ptrtoint ptr %fe344527 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call70, ptr %fe344527, align 4
  br label %cleanup

if.end343:                                        ; preds = %do.body168
  %16 = ptrtoint ptr %num95 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num95, align 8
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef %17) #7
  %18 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr526 = load i32, ptr %mantis, align 8
  %fe344 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %19 = ptrtoint ptr %fe344 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call70, ptr %fe344, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr526)
  %cmp347.not = icmp eq i32 %.pr526, 0
  br i1 %cmp347.not, label %if.end343.cleanup_crit_edge, label %do.end356

if.end343.cleanup_crit_edge:                      ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end356:                                        ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %num95 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num95, align 8
  %call359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.3, i32 noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end356, %if.end343.cleanup_crit_edge, %if.end343.thread, %do.end264, %do.body253.cleanup_crit_edge, %do.end77, %if.then72
  %retval.0 = phi i32 [ -5, %do.end264 ], [ 0, %do.end356 ], [ -5, %do.body253.cleanup_crit_edge ], [ 0, %if.end343.cleanup_crit_edge ], [ 0, %if.end343.thread ], [ -1, %if.then72 ], [ -1, %do.end77 ]
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
define internal i32 @lgtdqcs001f_tuner_set(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #4
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #4
  %7 = getelementptr inbounds i8, ptr %msg, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 97, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf2, align 4
  %13 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dtv_property_cache, align 4
  %div3 = udiv i32 %14, 250
  %shr = lshr i32 %div3, 8
  %15 = trunc i32 %shr to i8
  %conv = and i8 %15, 127
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %buf, align 1
  %conv5 = trunc i32 %div3 to i8
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5, ptr %4, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -125, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1531000, i32 %14)
  %cmp = icmp ult i32 %14, 1531000
  %. = select i1 %cmp, i8 -60, i8 -64
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %., ptr %6, align 1
  %call = call i32 @i2c_transfer(ptr noundef %adapter1, ptr noundef nonnull %msg, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp18 = icmp slt i32 %call, 0
  br i1 %cmp18, label %do.body, label %if.end96

do.body:                                          ; preds = %entry
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp21.not = icmp eq i32 %21, 0
  br i1 %cmp21.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num, align 8
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %23) #7
  br label %cleanup

if.end96:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call97 = call i32 @msleep_interruptible(i32 noundef 100) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end96 ], [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgtdqcs001f_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #0 align 64 {
entry:
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %srate)
  %cmp = icmp ult i32 %srate, 1500000
  br i1 %cmp, label %entry.if.end19_crit_edge, label %if.else

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %srate)
  %cmp1 = icmp ult i32 %srate, 3000000
  br i1 %cmp1, label %if.else.if.end19_crit_edge, label %if.else3

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %srate)
  %cmp4 = icmp ult i32 %srate, 7000000
  br i1 %cmp4, label %if.else3.if.end19_crit_edge, label %if.else6

if.else3.if.end19_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %srate)
  %cmp7 = icmp ult i32 %srate, 14000000
  br i1 %cmp7, label %if.else6.if.end19_crit_edge, label %if.else9

if.else6.if.end19_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.else9:                                         ; preds = %if.else6
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %srate)
  %cmp10 = icmp ult i32 %srate, 30000000
  br i1 %cmp10, label %if.else9.if.end19_crit_edge, label %if.else12

if.else9.if.end19_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.else12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 45000000, i32 %srate)
  %cmp13 = icmp ult i32 %srate, 45000000
  %spec.select = select i1 %cmp13, i8 -76, i8 0
  %spec.select40 = select i1 %cmp13, i8 81, i8 0
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.else9.if.end19_crit_edge, %if.else6.if.end19_crit_edge, %if.else3.if.end19_crit_edge, %if.else.if.end19_crit_edge, %entry.if.end19_crit_edge
  %aclk.0 = phi i8 [ -73, %entry.if.end19_crit_edge ], [ -73, %if.else.if.end19_crit_edge ], [ -73, %if.else3.if.end19_crit_edge ], [ -73, %if.else6.if.end19_crit_edge ], [ -74, %if.else9.if.end19_crit_edge ], [ %spec.select, %if.else12 ]
  %bclk.0 = phi i8 [ 71, %entry.if.end19_crit_edge ], [ 75, %if.else.if.end19_crit_edge ], [ 79, %if.else3.if.end19_crit_edge ], [ 83, %if.else6.if.end19_crit_edge ], [ 83, %if.else9.if.end19_crit_edge ], [ %spec.select40, %if.else12 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #4
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 19, ptr %buf.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %aclk.0, ptr %0, align 1
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %stv0299_writereg.exit.thread, label %stv0299_writereg.exit

stv0299_writereg.exit.thread:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #4
  br label %stv0299_writereg.exit46

stv0299_writereg.exit:                            ; preds = %if.end19
  %call.i = call i32 %4(ptr noundef %fe, ptr noundef nonnull %buf.i, i32 noundef 2) #4
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #4
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %buf.i41, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bclk.0, ptr %6, align 1
  %tobool.not.i43 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i43, label %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, label %if.then.i45

stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge: ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %stv0299_writereg.exit46

if.then.i45:                                      ; preds = %stv0299_writereg.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i44 = call i32 %.pr(ptr noundef %fe, ptr noundef nonnull %buf.i41, i32 noundef 2) #4
  br label %stv0299_writereg.exit46

stv0299_writereg.exit46:                          ; preds = %if.then.i45, %stv0299_writereg.exit.stv0299_writereg.exit46_crit_edge, %stv0299_writereg.exit.thread
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #4
  %shr = lshr i32 %ratio, 16
  %conv = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #4
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 31, ptr %buf.i47, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %9, align 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %tobool.not.i49 = icmp eq ptr %13, null
  br i1 %tobool.not.i49, label %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge, label %if.then.i51

stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge: ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #6
  br label %stv0299_writereg.exit52

if.then.i51:                                      ; preds = %stv0299_writereg.exit46
  call void @__sanitizer_cov_trace_pc() #6
  %call.i50 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %buf.i47, i32 noundef 2) #4
  br label %stv0299_writereg.exit52

stv0299_writereg.exit52:                          ; preds = %if.then.i51, %stv0299_writereg.exit46.stv0299_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #4
  %shr22 = lshr i32 %ratio, 8
  %conv24 = trunc i32 %shr22 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #4
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %buf.i53, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv24, ptr %14, align 1
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %tobool.not.i55 = icmp eq ptr %18, null
  br i1 %tobool.not.i55, label %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge, label %if.then.i57

stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge: ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #6
  br label %stv0299_writereg.exit58

if.then.i57:                                      ; preds = %stv0299_writereg.exit52
  call void @__sanitizer_cov_trace_pc() #6
  %call.i56 = call i32 %18(ptr noundef %fe, ptr noundef nonnull %buf.i53, i32 noundef 2) #4
  br label %stv0299_writereg.exit58

stv0299_writereg.exit58:                          ; preds = %if.then.i57, %stv0299_writereg.exit52.stv0299_writereg.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #4
  %19 = trunc i32 %ratio to i8
  %conv27 = and i8 %19, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #4
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i59, i32 0, i32 1
  %21 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 33, ptr %buf.i59, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27, ptr %20, align 1
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %tobool.not.i61 = icmp eq ptr %24, null
  br i1 %tobool.not.i61, label %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge, label %if.then.i63

stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge: ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #6
  br label %stv0299_writereg.exit64

if.then.i63:                                      ; preds = %stv0299_writereg.exit58
  call void @__sanitizer_cov_trace_pc() #6
  %call.i62 = call i32 %24(ptr noundef %fe, ptr noundef nonnull %buf.i59, i32 noundef 2) #4
  br label %stv0299_writereg.exit64

stv0299_writereg.exit64:                          ; preds = %if.then.i63, %stv0299_writereg.exit58.stv0299_writereg.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !93, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 189, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 190, i32 15}
!4 = !{ptr @vp1033_config, !5, !"vp1033_config", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 188, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 163, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vp1033_frontend_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @vp1033_frontend_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vp1033_frontend_init._entry.5, !7, !"_entry", i1 false, i1 false}
!14 = !{ptr @vp1033_frontend_init._entry_ptr.7, !7, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !7, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vp1033_frontend_init._entry.8, !7, !"_entry", i1 false, i1 false}
!17 = !{ptr @vp1033_frontend_init._entry_ptr.10, !7, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !7, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vp1033_frontend_init._entry.11, !7, !"_entry", i1 false, i1 false}
!20 = !{ptr @vp1033_frontend_init._entry_ptr.13, !7, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @vp1033_frontend_init._entry.14, !7, !"_entry", i1 false, i1 false}
!22 = !{ptr @vp1033_frontend_init._entry_ptr.15, !7, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 164, i32 8}
!25 = !{ptr @.str.17, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.19, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vp1033_frontend_init._entry.18, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @vp1033_frontend_init._entry_ptr.20, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 168, i32 4}
!31 = !{ptr @vp1033_frontend_init._entry.21, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vp1033_frontend_init._entry_ptr.23, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.25, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @vp1033_frontend_init._entry.24, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @vp1033_frontend_init._entry_ptr.26, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.28, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vp1033_frontend_init._entry.27, !30, !"_entry", i1 false, i1 false}
!38 = !{ptr @vp1033_frontend_init._entry_ptr.29, !30, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.31, !30, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vp1033_frontend_init._entry.30, !30, !"_entry", i1 false, i1 false}
!41 = !{ptr @vp1033_frontend_init._entry_ptr.32, !30, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @vp1033_frontend_init._entry.33, !30, !"_entry", i1 false, i1 false}
!43 = !{ptr @vp1033_frontend_init._entry_ptr.34, !30, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.36, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 171, i32 4}
!46 = !{ptr @vp1033_frontend_init._entry.35, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @vp1033_frontend_init._entry_ptr.37, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.39, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vp1033_frontend_init._entry.38, !45, !"_entry", i1 false, i1 false}
!50 = !{ptr @vp1033_frontend_init._entry_ptr.40, !45, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.42, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vp1033_frontend_init._entry.41, !45, !"_entry", i1 false, i1 false}
!53 = !{ptr @vp1033_frontend_init._entry_ptr.43, !45, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.45, !45, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vp1033_frontend_init._entry.44, !45, !"_entry", i1 false, i1 false}
!56 = !{ptr @vp1033_frontend_init._entry_ptr.46, !45, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @vp1033_frontend_init._entry.47, !45, !"_entry", i1 false, i1 false}
!58 = !{ptr @vp1033_frontend_init._entry_ptr.48, !45, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.50, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 176, i32 3}
!61 = !{ptr @vp1033_frontend_init._entry.49, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @vp1033_frontend_init._entry_ptr.51, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.53, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vp1033_frontend_init._entry.52, !60, !"_entry", i1 false, i1 false}
!65 = !{ptr @vp1033_frontend_init._entry_ptr.54, !60, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.56, !60, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @vp1033_frontend_init._entry.55, !60, !"_entry", i1 false, i1 false}
!68 = !{ptr @vp1033_frontend_init._entry_ptr.57, !60, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.59, !60, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @vp1033_frontend_init._entry.58, !60, !"_entry", i1 false, i1 false}
!71 = !{ptr @vp1033_frontend_init._entry_ptr.60, !60, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @vp1033_frontend_init._entry.61, !60, !"_entry", i1 false, i1 false}
!73 = !{ptr @vp1033_frontend_init._entry_ptr.62, !60, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.64, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 183, i32 2}
!76 = !{ptr @vp1033_frontend_init._entry.63, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @vp1033_frontend_init._entry_ptr.65, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.67, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vp1033_frontend_init._entry.66, !75, !"_entry", i1 false, i1 false}
!80 = !{ptr @vp1033_frontend_init._entry_ptr.68, !75, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.70, !75, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @vp1033_frontend_init._entry.69, !75, !"_entry", i1 false, i1 false}
!83 = !{ptr @vp1033_frontend_init._entry_ptr.71, !75, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.73, !75, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @vp1033_frontend_init._entry.72, !75, !"_entry", i1 false, i1 false}
!86 = !{ptr @vp1033_frontend_init._entry_ptr.74, !75, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @vp1033_frontend_init._entry.75, !75, !"_entry", i1 false, i1 false}
!88 = !{ptr @vp1033_frontend_init._entry_ptr.76, !75, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @lgtdqcs001f_config, !90, !"lgtdqcs001f_config", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 141, i32 30}
!91 = !{ptr @lgtdqcs001f_inittab, !92, !"lgtdqcs001f_inittab", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 26, i32 11}
!93 = !{ptr @.str.77, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/mantis/mantis_vp1033.c", i32 98, i32 3}
!95 = !{ptr @.str.78, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @lgtdqcs001f_tuner_set._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @lgtdqcs001f_tuner_set._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.80, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @lgtdqcs001f_tuner_set._entry.79, !94, !"_entry", i1 false, i1 false}
!100 = !{ptr @lgtdqcs001f_tuner_set._entry_ptr.81, !94, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.83, !94, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @lgtdqcs001f_tuner_set._entry.82, !94, !"_entry", i1 false, i1 false}
!103 = !{ptr @lgtdqcs001f_tuner_set._entry_ptr.84, !94, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.86, !94, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @lgtdqcs001f_tuner_set._entry.85, !94, !"_entry", i1 false, i1 false}
!106 = !{ptr @lgtdqcs001f_tuner_set._entry_ptr.87, !94, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @lgtdqcs001f_tuner_set._entry.88, !94, !"_entry", i1 false, i1 false}
!108 = !{ptr @lgtdqcs001f_tuner_set._entry_ptr.89, !94, !"_entry_ptr", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
