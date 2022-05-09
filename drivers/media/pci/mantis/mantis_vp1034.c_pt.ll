; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_vp1034.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_vp1034.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.mb86a16_config = type { i8, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mantis_pci = type { i32, i16, i16, i16, i16, i8, ptr, i32, ptr, i8, i8, i32, i32, i32, ptr, i32, ptr, i32, %struct.tasklet_struct, %struct.spinlock, %struct.i2c_adapter, i32, %struct.wait_queue_head, %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i8, ptr, i32, i32, [8 x i8], i32, i32, i32, i32, ptr, %struct.work_struct, ptr, [80 x i8], [80 x i8], ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.131, i32 }
%union.anon.131 = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@vp1034_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s (%d): Polarization=[13V]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vp1034_set_voltage\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/mantis/mantis_vp1034.c\00", [55 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr = internal global ptr @vp1034_set_voltage._entry, section ".printk_index", align 4
@vp1034_set_voltage._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s (%d): Polarization=[13V]\0A\00", [33 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.5 = internal global ptr @vp1034_set_voltage._entry.3, section ".printk_index", align 4
@vp1034_set_voltage._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s (%d): Polarization=[13V]\0A\00", [33 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.8 = internal global ptr @vp1034_set_voltage._entry.6, section ".printk_index", align 4
@vp1034_set_voltage._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s (%d): Polarization=[13V]\0A\00", [33 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.11 = internal global ptr @vp1034_set_voltage._entry.9, section ".printk_index", align 4
@vp1034_set_voltage._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.13 = internal global ptr @vp1034_set_voltage._entry.12, section ".printk_index", align 4
@vp1034_set_voltage._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s (%d): Polarization=[18V]\0A\00", [33 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.16 = internal global ptr @vp1034_set_voltage._entry.14, section ".printk_index", align 4
@vp1034_set_voltage._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s (%d): Polarization=[18V]\0A\00", [33 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.19 = internal global ptr @vp1034_set_voltage._entry.17, section ".printk_index", align 4
@vp1034_set_voltage._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s (%d): Polarization=[18V]\0A\00", [33 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.22 = internal global ptr @vp1034_set_voltage._entry.20, section ".printk_index", align 4
@vp1034_set_voltage._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s (%d): Polarization=[18V]\0A\00", [33 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.25 = internal global ptr @vp1034_set_voltage._entry.23, section ".printk_index", align 4
@vp1034_set_voltage._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.27 = internal global ptr @vp1034_set_voltage._entry.26, section ".printk_index", align 4
@vp1034_set_voltage._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s (%d): Frontend (dummy) POWERDOWN\0A\00", [57 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.30 = internal global ptr @vp1034_set_voltage._entry.28, section ".printk_index", align 4
@vp1034_set_voltage._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015%s (%d): Frontend (dummy) POWERDOWN\0A\00", [57 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.33 = internal global ptr @vp1034_set_voltage._entry.31, section ".printk_index", align 4
@vp1034_set_voltage._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s (%d): Frontend (dummy) POWERDOWN\0A\00", [57 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.36 = internal global ptr @vp1034_set_voltage._entry.34, section ".printk_index", align 4
@vp1034_set_voltage._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s (%d): Frontend (dummy) POWERDOWN\0A\00", [57 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.39 = internal global ptr @vp1034_set_voltage._entry.37, section ".printk_index", align 4
@vp1034_set_voltage._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.41 = internal global ptr @vp1034_set_voltage._entry.40, section ".printk_index", align 4
@vp1034_set_voltage._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s (%d): Invalid = (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.44 = internal global ptr @vp1034_set_voltage._entry.42, section ".printk_index", align 4
@vp1034_set_voltage._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015%s (%d): Invalid = (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.47 = internal global ptr @vp1034_set_voltage._entry.45, section ".printk_index", align 4
@vp1034_set_voltage._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s (%d): Invalid = (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.50 = internal global ptr @vp1034_set_voltage._entry.48, section ".printk_index", align 4
@vp1034_set_voltage._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s (%d): Invalid = (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.53 = internal global ptr @vp1034_set_voltage._entry.51, section ".printk_index", align 4
@vp1034_set_voltage._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1034_set_voltage._entry_ptr.55 = internal global ptr @vp1034_set_voltage._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VP-1034\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DVB-S/DSS\00", [22 x i8] zeroinitializer }, align 32
@vp1034_config = dso_local global { %struct.mantis_hwconfig, [56 x i8] } { %struct.mantis_hwconfig { ptr @.str.56, ptr @.str.57, i32 1, i32 0, i32 0, i32 0, ptr null, ptr @vp1034_frontend_init, i8 12, i8 13, i32 0 }, [56 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s (%d): Probing for MB86A16 (DVB-S/DSS)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vp1034_frontend_init\00", [43 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr = internal global ptr @vp1034_frontend_init._entry, section ".printk_index", align 4
@vp1034_frontend_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015%s (%d): Probing for MB86A16 (DVB-S/DSS)\0A\00", [52 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.62 = internal global ptr @vp1034_frontend_init._entry.60, section ".printk_index", align 4
@vp1034_frontend_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s (%d): Probing for MB86A16 (DVB-S/DSS)\0A\00", [52 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.65 = internal global ptr @vp1034_frontend_init._entry.63, section ".printk_index", align 4
@vp1034_frontend_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s (%d): Probing for MB86A16 (DVB-S/DSS)\0A\00", [52 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.68 = internal global ptr @vp1034_frontend_init._entry.66, section ".printk_index", align 4
@vp1034_frontend_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.70 = internal global ptr @vp1034_frontend_init._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mb86a16_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:mb86a16_attach\00", [42 x i8] zeroinitializer }, align 32
@vp1034_mb86a16_config = internal constant { %struct.mb86a16_config, [24 x i8] } { %struct.mb86a16_config { i8 8, ptr @vp1034_set_voltage }, [24 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.59, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol mb86a16_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.75 = internal global ptr @vp1034_frontend_init._entry.73, section ".printk_index", align 4
@vp1034_frontend_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.59, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s (%d): found MB86A16 DVB-S/DSS frontend @0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.78 = internal global ptr @vp1034_frontend_init._entry.76, section ".printk_index", align 4
@vp1034_frontend_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.59, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015%s (%d): found MB86A16 DVB-S/DSS frontend @0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.81 = internal global ptr @vp1034_frontend_init._entry.79, section ".printk_index", align 4
@vp1034_frontend_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.59, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016%s (%d): found MB86A16 DVB-S/DSS frontend @0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.84 = internal global ptr @vp1034_frontend_init._entry.82, section ".printk_index", align 4
@vp1034_frontend_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.59, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s (%d): found MB86A16 DVB-S/DSS frontend @0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.87 = internal global ptr @vp1034_frontend_init._entry.85, section ".printk_index", align 4
@vp1034_frontend_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.59, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.89 = internal global ptr @vp1034_frontend_init._entry.88, section ".printk_index", align 4
@vp1034_frontend_init._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.59, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.92 = internal global ptr @vp1034_frontend_init._entry.90, section ".printk_index", align 4
@vp1034_frontend_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.59, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.95 = internal global ptr @vp1034_frontend_init._entry.93, section ".printk_index", align 4
@vp1034_frontend_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.59, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.98 = internal global ptr @vp1034_frontend_init._entry.96, section ".printk_index", align 4
@vp1034_frontend_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.59, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.101 = internal global ptr @vp1034_frontend_init._entry.99, section ".printk_index", align 4
@vp1034_frontend_init._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.59, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.103 = internal global ptr @vp1034_frontend_init._entry.102, section ".printk_index", align 4
@vp1034_frontend_init._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.59, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.106 = internal global ptr @vp1034_frontend_init._entry.104, section ".printk_index", align 4
@vp1034_frontend_init._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.59, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.109 = internal global ptr @vp1034_frontend_init._entry.107, section ".printk_index", align 4
@vp1034_frontend_init._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.59, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.112 = internal global ptr @vp1034_frontend_init._entry.110, section ".printk_index", align 4
@vp1034_frontend_init._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.59, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.115 = internal global ptr @vp1034_frontend_init._entry.113, section ".printk_index", align 4
@vp1034_frontend_init._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.59, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1034_frontend_init._entry_ptr.117 = internal global ptr @vp1034_frontend_init._entry.116, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 41, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 46, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 51, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 54, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 97, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 98, i32 14 }
@___asan_gen_.238 = private unnamed_addr constant [14 x i8] c"vp1034_config\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 96, i32 24 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 73, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [22 x i8] c"vp1034_mb86a16_config\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 27, i32 36 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 74, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 76, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 84, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.365 = private constant [44 x i8] c"../drivers/media/pci/mantis/mantis_vp1034.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 91, i32 2 }
@llvm.compiler.used = appending global [124 x ptr] [ptr @vp1034_frontend_init._entry, ptr @vp1034_frontend_init._entry.102, ptr @vp1034_frontend_init._entry.104, ptr @vp1034_frontend_init._entry.107, ptr @vp1034_frontend_init._entry.110, ptr @vp1034_frontend_init._entry.113, ptr @vp1034_frontend_init._entry.116, ptr @vp1034_frontend_init._entry.60, ptr @vp1034_frontend_init._entry.63, ptr @vp1034_frontend_init._entry.66, ptr @vp1034_frontend_init._entry.69, ptr @vp1034_frontend_init._entry.73, ptr @vp1034_frontend_init._entry.76, ptr @vp1034_frontend_init._entry.79, ptr @vp1034_frontend_init._entry.82, ptr @vp1034_frontend_init._entry.85, ptr @vp1034_frontend_init._entry.88, ptr @vp1034_frontend_init._entry.90, ptr @vp1034_frontend_init._entry.93, ptr @vp1034_frontend_init._entry.96, ptr @vp1034_frontend_init._entry.99, ptr @vp1034_frontend_init._entry_ptr, ptr @vp1034_frontend_init._entry_ptr.101, ptr @vp1034_frontend_init._entry_ptr.103, ptr @vp1034_frontend_init._entry_ptr.106, ptr @vp1034_frontend_init._entry_ptr.109, ptr @vp1034_frontend_init._entry_ptr.112, ptr @vp1034_frontend_init._entry_ptr.115, ptr @vp1034_frontend_init._entry_ptr.117, ptr @vp1034_frontend_init._entry_ptr.62, ptr @vp1034_frontend_init._entry_ptr.65, ptr @vp1034_frontend_init._entry_ptr.68, ptr @vp1034_frontend_init._entry_ptr.70, ptr @vp1034_frontend_init._entry_ptr.75, ptr @vp1034_frontend_init._entry_ptr.78, ptr @vp1034_frontend_init._entry_ptr.81, ptr @vp1034_frontend_init._entry_ptr.84, ptr @vp1034_frontend_init._entry_ptr.87, ptr @vp1034_frontend_init._entry_ptr.89, ptr @vp1034_frontend_init._entry_ptr.92, ptr @vp1034_frontend_init._entry_ptr.95, ptr @vp1034_frontend_init._entry_ptr.98, ptr @vp1034_set_voltage._entry, ptr @vp1034_set_voltage._entry.12, ptr @vp1034_set_voltage._entry.14, ptr @vp1034_set_voltage._entry.17, ptr @vp1034_set_voltage._entry.20, ptr @vp1034_set_voltage._entry.23, ptr @vp1034_set_voltage._entry.26, ptr @vp1034_set_voltage._entry.28, ptr @vp1034_set_voltage._entry.3, ptr @vp1034_set_voltage._entry.31, ptr @vp1034_set_voltage._entry.34, ptr @vp1034_set_voltage._entry.37, ptr @vp1034_set_voltage._entry.40, ptr @vp1034_set_voltage._entry.42, ptr @vp1034_set_voltage._entry.45, ptr @vp1034_set_voltage._entry.48, ptr @vp1034_set_voltage._entry.51, ptr @vp1034_set_voltage._entry.54, ptr @vp1034_set_voltage._entry.6, ptr @vp1034_set_voltage._entry.9, ptr @vp1034_set_voltage._entry_ptr, ptr @vp1034_set_voltage._entry_ptr.11, ptr @vp1034_set_voltage._entry_ptr.13, ptr @vp1034_set_voltage._entry_ptr.16, ptr @vp1034_set_voltage._entry_ptr.19, ptr @vp1034_set_voltage._entry_ptr.22, ptr @vp1034_set_voltage._entry_ptr.25, ptr @vp1034_set_voltage._entry_ptr.27, ptr @vp1034_set_voltage._entry_ptr.30, ptr @vp1034_set_voltage._entry_ptr.33, ptr @vp1034_set_voltage._entry_ptr.36, ptr @vp1034_set_voltage._entry_ptr.39, ptr @vp1034_set_voltage._entry_ptr.41, ptr @vp1034_set_voltage._entry_ptr.44, ptr @vp1034_set_voltage._entry_ptr.47, ptr @vp1034_set_voltage._entry_ptr.5, ptr @vp1034_set_voltage._entry_ptr.50, ptr @vp1034_set_voltage._entry_ptr.53, ptr @vp1034_set_voltage._entry_ptr.55, ptr @vp1034_set_voltage._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.56, ptr @.str.57, ptr @vp1034_config, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.71, ptr @.str.72, ptr @vp1034_mb86a16_config, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_set_voltage._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_mb86a16_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1034_frontend_init._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vp1034_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %do.body207 [
    i32 0, label %do.body
    i32 1, label %do.body62
    i32 2, label %do.body135
  ]

do.body:                                          ; preds = %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %do.body.do.end60_crit_edge, label %do.end

do.body.do.end60_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end60

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %num = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %8) #6
  br label %do.end60

do.end60:                                         ; preds = %do.end, %do.body.do.end60_crit_edge
  tail call void @mantis_gpio_set_bits(ptr noundef %3, i32 noundef 13, i8 noundef zeroext 1) #3
  tail call void @mantis_gpio_set_bits(ptr noundef %3, i32 noundef 14, i8 noundef zeroext 0) #3
  br label %do.body279

do.body62:                                        ; preds = %entry
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp64.not = icmp eq i32 %10, 0
  br i1 %cmp64.not, label %do.body62.do.end133_crit_edge, label %do.end71

do.body62.do.end133_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end133

do.end71:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #5
  %num73 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %num73 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num73, align 8
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %12) #6
  br label %do.end133

do.end133:                                        ; preds = %do.end71, %do.body62.do.end133_crit_edge
  tail call void @mantis_gpio_set_bits(ptr noundef %3, i32 noundef 13, i8 noundef zeroext 1) #3
  tail call void @mantis_gpio_set_bits(ptr noundef %3, i32 noundef 14, i8 noundef zeroext 1) #3
  br label %do.body279

do.body135:                                       ; preds = %entry
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp137.not = icmp eq i32 %14, 0
  br i1 %cmp137.not, label %do.body135.do.body279_crit_edge, label %do.end144

do.body135.do.body279_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body279

do.end144:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #5
  %num146 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %15 = ptrtoint ptr %num146 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num146, align 8
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef %16) #6
  br label %do.body279

do.body207:                                       ; preds = %entry
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp209.not = icmp eq i32 %18, 0
  br i1 %cmp209.not, label %do.body207.cleanup_crit_edge, label %do.end216

do.body207.cleanup_crit_edge:                     ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end216:                                        ; preds = %do.body207
  call void @__sanitizer_cov_trace_pc() #5
  %num218 = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %num218 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num218, align 8
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef %20, i32 noundef %voltage) #6
  br label %cleanup

do.body279:                                       ; preds = %do.end144, %do.body135.do.body279_crit_edge, %do.end133, %do.end60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !146
  tail call void @arm_heavy_mb() #3
  %mmio = getelementptr inbounds %struct.mantis_pci, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !147
  br label %cleanup

cleanup:                                          ; preds = %do.body279, %do.end216, %do.body207.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body279 ], [ -22, %do.end216 ], [ -22, %do.body207.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_gpio_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp1034_frontend_init(ptr noundef %mantis, ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20
  %call = tail call i32 @mantis_frontend_power(ptr noundef %mantis, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body171

if.then:                                          ; preds = %entry
  tail call void @mantis_frontend_soft_reset(ptr noundef %mantis) #3
  tail call void @msleep(i32 noundef 250) #3
  %0 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %if.then.do.end64_crit_edge, label %do.end

if.then.do.end64_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end64

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %3) #6
  br label %do.end64

do.end64:                                         ; preds = %do.end, %if.then.do.end64_crit_edge
  %call65 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.71) #3
  %tobool.not = icmp eq ptr %call65, null
  br i1 %tobool.not, label %cond.end, label %do.end64.if.then69_crit_edge

do.end64.if.then69_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then69

cond.end:                                         ; preds = %do.end64
  %call66 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.72) #3
  %call67 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.71) #3
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %do.end77, label %cond.end.if.then69_crit_edge

cond.end.if.then69_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then69

if.then69:                                        ; preds = %cond.end.if.then69_crit_edge, %do.end64.if.then69_crit_edge
  %cond424 = phi ptr [ %call67, %cond.end.if.then69_crit_edge ], [ %call65, %do.end64.if.then69_crit_edge ]
  %call70 = tail call ptr %cond424(ptr noundef nonnull @vp1034_mb86a16_config, ptr noundef %adapter1) #3
  %cmp71 = icmp eq ptr %call70, null
  br i1 %cmp71, label %if.then72, label %do.body84

if.then72:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__symbol_put(ptr noundef nonnull @.str.71) #3
  br label %cleanup

do.end77:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #6
  br label %cleanup

do.body84:                                        ; preds = %if.then69
  %4 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp86.not = icmp eq i32 %5, 0
  br i1 %cmp86.not, label %if.end261.thread, label %if.end261

if.end261.thread:                                 ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #5
  %fe262427 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %6 = ptrtoint ptr %fe262427 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call70, ptr %fe262427, align 4
  br label %cleanup

do.body171:                                       ; preds = %entry
  %7 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp173.not = icmp eq i32 %8, 0
  br i1 %cmp173.not, label %do.body171.cleanup_crit_edge, label %do.end182

do.body171.cleanup_crit_edge:                     ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end182:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #5
  %num184 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %9 = ptrtoint ptr %num184 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num184, align 8
  %name = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 12
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.59, i32 noundef %10, ptr noundef %name, i32 noundef %call) #6
  br label %cleanup

if.end261:                                        ; preds = %do.body84
  %num95 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %11 = ptrtoint ptr %num95 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num95, align 8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.59, i32 noundef %12, i32 noundef 8) #6
  %13 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %mantis, align 8
  %fe262 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %14 = ptrtoint ptr %fe262 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call70, ptr %fe262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp265.not = icmp eq i32 %.pr, 0
  br i1 %cmp265.not, label %if.end261.cleanup_crit_edge, label %do.end274

if.end261.cleanup_crit_edge:                      ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end274:                                        ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %num95 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num95, align 8
  %call277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.59, i32 noundef %16) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end274, %if.end261.cleanup_crit_edge, %do.end182, %do.body171.cleanup_crit_edge, %if.end261.thread, %do.end77, %if.then72
  %retval.0 = phi i32 [ -5, %do.end182 ], [ 0, %do.end274 ], [ -5, %do.body171.cleanup_crit_edge ], [ 0, %if.end261.cleanup_crit_edge ], [ 0, %if.end261.thread ], [ -1, %if.then72 ], [ -1, %do.end77 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_frontend_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_frontend_soft_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !64, !66, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @vp1034_set_voltage._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @vp1034_set_voltage._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @vp1034_set_voltage._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @vp1034_set_voltage._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vp1034_set_voltage._entry.6, !1, !"_entry", i1 false, i1 false}
!11 = !{ptr @vp1034_set_voltage._entry_ptr.8, !1, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vp1034_set_voltage._entry.9, !1, !"_entry", i1 false, i1 false}
!14 = !{ptr @vp1034_set_voltage._entry_ptr.11, !1, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @vp1034_set_voltage._entry.12, !1, !"_entry", i1 false, i1 false}
!16 = !{ptr @vp1034_set_voltage._entry_ptr.13, !1, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.15, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 46, i32 3}
!19 = !{ptr @vp1034_set_voltage._entry.14, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @vp1034_set_voltage._entry_ptr.16, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.18, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vp1034_set_voltage._entry.17, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @vp1034_set_voltage._entry_ptr.19, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.21, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vp1034_set_voltage._entry.20, !18, !"_entry", i1 false, i1 false}
!26 = !{ptr @vp1034_set_voltage._entry_ptr.22, !18, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.24, !18, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @vp1034_set_voltage._entry.23, !18, !"_entry", i1 false, i1 false}
!29 = !{ptr @vp1034_set_voltage._entry_ptr.25, !18, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @vp1034_set_voltage._entry.26, !18, !"_entry", i1 false, i1 false}
!31 = !{ptr @vp1034_set_voltage._entry_ptr.27, !18, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.29, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 51, i32 3}
!34 = !{ptr @vp1034_set_voltage._entry.28, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @vp1034_set_voltage._entry_ptr.30, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.32, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vp1034_set_voltage._entry.31, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @vp1034_set_voltage._entry_ptr.33, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.35, !33, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vp1034_set_voltage._entry.34, !33, !"_entry", i1 false, i1 false}
!41 = !{ptr @vp1034_set_voltage._entry_ptr.36, !33, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.38, !33, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vp1034_set_voltage._entry.37, !33, !"_entry", i1 false, i1 false}
!44 = !{ptr @vp1034_set_voltage._entry_ptr.39, !33, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @vp1034_set_voltage._entry.40, !33, !"_entry", i1 false, i1 false}
!46 = !{ptr @vp1034_set_voltage._entry_ptr.41, !33, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.43, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 54, i32 3}
!49 = !{ptr @vp1034_set_voltage._entry.42, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @vp1034_set_voltage._entry_ptr.44, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.46, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vp1034_set_voltage._entry.45, !48, !"_entry", i1 false, i1 false}
!53 = !{ptr @vp1034_set_voltage._entry_ptr.47, !48, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.49, !48, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @vp1034_set_voltage._entry.48, !48, !"_entry", i1 false, i1 false}
!56 = !{ptr @vp1034_set_voltage._entry_ptr.50, !48, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.52, !48, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @vp1034_set_voltage._entry.51, !48, !"_entry", i1 false, i1 false}
!59 = !{ptr @vp1034_set_voltage._entry_ptr.53, !48, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @vp1034_set_voltage._entry.54, !48, !"_entry", i1 false, i1 false}
!61 = !{ptr @vp1034_set_voltage._entry_ptr.55, !48, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.56, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 97, i32 16}
!64 = !{ptr @.str.57, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 98, i32 14}
!66 = !{ptr @vp1034_config, !67, !"vp1034_config", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 96, i32 24}
!68 = !{ptr @.str.58, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 73, i32 3}
!70 = !{ptr @.str.59, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vp1034_frontend_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @vp1034_frontend_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.61, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @vp1034_frontend_init._entry.60, !69, !"_entry", i1 false, i1 false}
!75 = !{ptr @vp1034_frontend_init._entry_ptr.62, !69, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.64, !69, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @vp1034_frontend_init._entry.63, !69, !"_entry", i1 false, i1 false}
!78 = !{ptr @vp1034_frontend_init._entry_ptr.65, !69, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.67, !69, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @vp1034_frontend_init._entry.66, !69, !"_entry", i1 false, i1 false}
!81 = !{ptr @vp1034_frontend_init._entry_ptr.68, !69, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @vp1034_frontend_init._entry.69, !69, !"_entry", i1 false, i1 false}
!83 = !{ptr @vp1034_frontend_init._entry_ptr.70, !69, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.71, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 74, i32 8}
!86 = !{ptr @.str.72, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.74, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @vp1034_frontend_init._entry.73, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @vp1034_frontend_init._entry_ptr.75, !85, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.77, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 76, i32 4}
!92 = !{ptr @vp1034_frontend_init._entry.76, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @vp1034_frontend_init._entry_ptr.78, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.80, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @vp1034_frontend_init._entry.79, !91, !"_entry", i1 false, i1 false}
!96 = !{ptr @vp1034_frontend_init._entry_ptr.81, !91, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.83, !91, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @vp1034_frontend_init._entry.82, !91, !"_entry", i1 false, i1 false}
!99 = !{ptr @vp1034_frontend_init._entry_ptr.84, !91, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.86, !91, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @vp1034_frontend_init._entry.85, !91, !"_entry", i1 false, i1 false}
!102 = !{ptr @vp1034_frontend_init._entry_ptr.87, !91, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @vp1034_frontend_init._entry.88, !91, !"_entry", i1 false, i1 false}
!104 = !{ptr @vp1034_frontend_init._entry_ptr.89, !91, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.91, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 84, i32 3}
!107 = !{ptr @vp1034_frontend_init._entry.90, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @vp1034_frontend_init._entry_ptr.92, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.94, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @vp1034_frontend_init._entry.93, !106, !"_entry", i1 false, i1 false}
!111 = !{ptr @vp1034_frontend_init._entry_ptr.95, !106, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.97, !106, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @vp1034_frontend_init._entry.96, !106, !"_entry", i1 false, i1 false}
!114 = !{ptr @vp1034_frontend_init._entry_ptr.98, !106, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.100, !106, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @vp1034_frontend_init._entry.99, !106, !"_entry", i1 false, i1 false}
!117 = !{ptr @vp1034_frontend_init._entry_ptr.101, !106, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @vp1034_frontend_init._entry.102, !106, !"_entry", i1 false, i1 false}
!119 = !{ptr @vp1034_frontend_init._entry_ptr.103, !106, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.105, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 91, i32 2}
!122 = !{ptr @vp1034_frontend_init._entry.104, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @vp1034_frontend_init._entry_ptr.106, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.108, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @vp1034_frontend_init._entry.107, !121, !"_entry", i1 false, i1 false}
!126 = !{ptr @vp1034_frontend_init._entry_ptr.109, !121, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.111, !121, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @vp1034_frontend_init._entry.110, !121, !"_entry", i1 false, i1 false}
!129 = !{ptr @vp1034_frontend_init._entry_ptr.112, !121, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.114, !121, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @vp1034_frontend_init._entry.113, !121, !"_entry", i1 false, i1 false}
!132 = !{ptr @vp1034_frontend_init._entry_ptr.115, !121, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @vp1034_frontend_init._entry.116, !121, !"_entry", i1 false, i1 false}
!134 = !{ptr @vp1034_frontend_init._entry_ptr.117, !121, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @vp1034_mb86a16_config, !136, !"vp1034_mb86a16_config", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/mantis/mantis_vp1034.c", i32 27, i32 36}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i64 2157806598}
!147 = !{i64 4225018}
