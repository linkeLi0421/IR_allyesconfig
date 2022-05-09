; ModuleID = '/llk/IR_all_yes/drivers/media/pci/mantis/mantis_vp1041.c_pt.bc'
source_filename = "../drivers/media/pci/mantis/mantis_vp1041.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mantis_hwconfig = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, i8, i8, i32 }
%struct.stb0899_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stb6100_config = type { i8, i32 }
%struct.stb0899_s1_reg = type { i16, i8 }
%struct.stb0899_s2_reg = type { i16, i32, i32 }
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

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VP-1041\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DSS/DVB-S/DVB-S2\00", [47 x i8] zeroinitializer }, align 32
@vp1041_config = dso_local global { %struct.mantis_hwconfig, [56 x i8] } { %struct.mantis_hwconfig { ptr @.str, ptr @.str.1, i32 0, i32 0, i32 0, i32 0, ptr null, ptr @vp1041_frontend_init, i8 12, i8 13, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb0899_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb0899_attach\00", [42 x i8] zeroinitializer }, align 32
@vp1041_stb0899_config = internal global { %struct.stb0899_config, [36 x i8] } { %struct.stb0899_config { ptr @vp1041_stb0899_s1_init_1, ptr @stb0899_s2_init_2, ptr @vp1041_stb0899_s1_init_3, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr null, i32 -1, i32 27000000, i8 104, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 76500000, i32 99000000, i32 3, i32 32, i32 10, i32 20, i32 6, i32 1125, i32 758, i32 1350, i32 1664100, i32 28, i32 15, i32 30, i32 70, ptr @stb6100_set_frequency, ptr @stb6100_get_frequency, ptr @stb6100_set_bandwidth, ptr @stb6100_get_bandwidth, ptr null }, [36 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb0899_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vp1041_frontend_init\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/mantis/mantis_vp1041.c\00", [55 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr = internal global ptr @vp1041_frontend_init._entry, section ".printk_index", align 4
@vp1041_frontend_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s (%d): found STB0899 DVB-S/DVB-S2 frontend @0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.9 = internal global ptr @vp1041_frontend_init._entry.7, section ".printk_index", align 4
@vp1041_frontend_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015%s (%d): found STB0899 DVB-S/DVB-S2 frontend @0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.12 = internal global ptr @vp1041_frontend_init._entry.10, section ".printk_index", align 4
@vp1041_frontend_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s (%d): found STB0899 DVB-S/DVB-S2 frontend @0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.15 = internal global ptr @vp1041_frontend_init._entry.13, section ".printk_index", align 4
@vp1041_frontend_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s (%d): found STB0899 DVB-S/DVB-S2 frontend @0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.18 = internal global ptr @vp1041_frontend_init._entry.16, section ".printk_index", align 4
@vp1041_frontend_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.20 = internal global ptr @vp1041_frontend_init._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6100_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6100_attach\00", [42 x i8] zeroinitializer }, align 32
@vp1041_stb6100_config = internal global { %struct.stb6100_config, [24 x i8] } { %struct.stb6100_config { i8 96, i32 27000000 }, [24 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6100_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.25 = internal global ptr @vp1041_frontend_init._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbp21_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbp21_attach\00", [43 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbp21_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.30 = internal global ptr @vp1041_frontend_init._entry.28, section ".printk_index", align 4
@vp1041_frontend_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.6, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s (%d): No LNBP21 found!\0A\00", [35 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.33 = internal global ptr @vp1041_frontend_init._entry.31, section ".printk_index", align 4
@vp1041_frontend_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015%s (%d): No LNBP21 found!\0A\00", [35 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.36 = internal global ptr @vp1041_frontend_init._entry.34, section ".printk_index", align 4
@vp1041_frontend_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.5, ptr @.str.6, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s (%d): No LNBP21 found!\0A\00", [35 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.39 = internal global ptr @vp1041_frontend_init._entry.37, section ".printk_index", align 4
@vp1041_frontend_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.5, ptr @.str.6, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s (%d): No LNBP21 found!\0A\00", [35 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.42 = internal global ptr @vp1041_frontend_init._entry.40, section ".printk_index", align 4
@vp1041_frontend_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.5, ptr @.str.6, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.44 = internal global ptr @vp1041_frontend_init._entry.43, section ".printk_index", align 4
@vp1041_frontend_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.5, ptr @.str.6, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.47 = internal global ptr @vp1041_frontend_init._entry.45, section ".printk_index", align 4
@vp1041_frontend_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.5, ptr @.str.6, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.50 = internal global ptr @vp1041_frontend_init._entry.48, section ".printk_index", align 4
@vp1041_frontend_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.5, ptr @.str.6, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.53 = internal global ptr @vp1041_frontend_init._entry.51, section ".printk_index", align 4
@vp1041_frontend_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.5, ptr @.str.6, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s (%d): Frontend on <%s> POWER ON failed! <%d>\0A\00", [45 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.56 = internal global ptr @vp1041_frontend_init._entry.54, section ".printk_index", align 4
@vp1041_frontend_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.5, ptr @.str.6, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.58 = internal global ptr @vp1041_frontend_init._entry.57, section ".printk_index", align 4
@vp1041_frontend_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.5, ptr @.str.6, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.61 = internal global ptr @vp1041_frontend_init._entry.59, section ".printk_index", align 4
@vp1041_frontend_init._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.5, ptr @.str.6, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\015%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.64 = internal global ptr @vp1041_frontend_init._entry.62, section ".printk_index", align 4
@vp1041_frontend_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.5, ptr @.str.6, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.67 = internal global ptr @vp1041_frontend_init._entry.65, section ".printk_index", align 4
@vp1041_frontend_init._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.5, ptr @.str.6, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s (%d): Done!\0A\00", [46 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.70 = internal global ptr @vp1041_frontend_init._entry.68, section ".printk_index", align 4
@vp1041_frontend_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.5, ptr @.str.6, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vp1041_frontend_init._entry_ptr.72 = internal global ptr @vp1041_frontend_init._entry.71, section ".printk_index", align 4
@vp1041_stb0899_s1_init_1 = internal constant { [82 x %struct.stb0899_s1_reg], [88 x i8] } { [82 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -4096, i8 48 }, %struct.stb0899_s1_reg { i16 -3936, i8 50 }, %struct.stb0899_s1_reg { i16 -3935, i8 -128 }, %struct.stb0899_s1_reg { i16 -3932, i8 4 }, %struct.stb0899_s1_reg { i16 -3931, i8 0 }, %struct.stb0899_s1_reg { i16 -3930, i8 0 }, %struct.stb0899_s1_reg { i16 -3928, i8 32 }, %struct.stb0899_s1_reg { i16 -3927, i8 -103 }, %struct.stb0899_s1_reg { i16 -3926, i8 -88 }, %struct.stb0899_s1_reg { i16 -3824, i8 17 }, %struct.stb0899_s1_reg { i16 -3823, i8 10 }, %struct.stb0899_s1_reg { i16 -3822, i8 5 }, %struct.stb0899_s1_reg { i16 -3821, i8 0 }, %struct.stb0899_s1_reg { i16 -3820, i8 0 }, %struct.stb0899_s1_reg { i16 -3812, i8 0 }, %struct.stb0899_s1_reg { i16 -3811, i8 0 }, %struct.stb0899_s1_reg { i16 -3808, i8 -2 }, %struct.stb0899_s1_reg { i16 -3807, i8 3 }, %struct.stb0899_s1_reg { i16 -3806, i8 124 }, %struct.stb0899_s1_reg { i16 -3805, i8 -12 }, %struct.stb0899_s1_reg { i16 -3804, i8 -13 }, %struct.stb0899_s1_reg { i16 -3803, i8 -4 }, %struct.stb0899_s1_reg { i16 -3802, i8 -1 }, %struct.stb0899_s1_reg { i16 -3801, i8 -1 }, %struct.stb0899_s1_reg { i16 -3800, i8 0 }, %struct.stb0899_s1_reg { i16 -3799, i8 -120 }, %struct.stb0899_s1_reg { i16 -3798, i8 88 }, %struct.stb0899_s1_reg { i16 -3783, i8 0 }, %struct.stb0899_s1_reg { i16 -3782, i8 51 }, %struct.stb0899_s1_reg { i16 -3781, i8 109 }, %struct.stb0899_s1_reg { i16 -3780, i8 -112 }, %struct.stb0899_s1_reg { i16 -3779, i8 96 }, %struct.stb0899_s1_reg { i16 -3778, i8 0 }, %struct.stb0899_s1_reg { i16 -3776, i8 -126 }, %struct.stb0899_s1_reg { i16 -3775, i8 -126 }, %struct.stb0899_s1_reg { i16 -3774, i8 -126 }, %struct.stb0899_s1_reg { i16 -3773, i8 -126 }, %struct.stb0899_s1_reg { i16 -3772, i8 -126 }, %struct.stb0899_s1_reg { i16 -3771, i8 -126 }, %struct.stb0899_s1_reg { i16 -3770, i8 -126 }, %struct.stb0899_s1_reg { i16 -3769, i8 -126 }, %struct.stb0899_s1_reg { i16 -3768, i8 -126 }, %struct.stb0899_s1_reg { i16 -3767, i8 -126 }, %struct.stb0899_s1_reg { i16 -3766, i8 -126 }, %struct.stb0899_s1_reg { i16 -3765, i8 -126 }, %struct.stb0899_s1_reg { i16 -3764, i8 -126 }, %struct.stb0899_s1_reg { i16 -3763, i8 -126 }, %struct.stb0899_s1_reg { i16 -3762, i8 -126 }, %struct.stb0899_s1_reg { i16 -3761, i8 -126 }, %struct.stb0899_s1_reg { i16 -3760, i8 -126 }, %struct.stb0899_s1_reg { i16 -3759, i8 -126 }, %struct.stb0899_s1_reg { i16 -3758, i8 -126 }, %struct.stb0899_s1_reg { i16 -3757, i8 -126 }, %struct.stb0899_s1_reg { i16 -3756, i8 -126 }, %struct.stb0899_s1_reg { i16 -3755, i8 -72 }, %struct.stb0899_s1_reg { i16 -3754, i8 -70 }, %struct.stb0899_s1_reg { i16 -3753, i8 28 }, %struct.stb0899_s1_reg { i16 -3752, i8 -126 }, %struct.stb0899_s1_reg { i16 -3751, i8 -111 }, %struct.stb0899_s1_reg { i16 -3750, i8 -126 }, %struct.stb0899_s1_reg { i16 -3749, i8 126 }, %struct.stb0899_s1_reg { i16 -3748, i8 -126 }, %struct.stb0899_s1_reg { i16 -3747, i8 -126 }, %struct.stb0899_s1_reg { i16 -3746, i8 -126 }, %struct.stb0899_s1_reg { i16 -3745, i8 32 }, %struct.stb0899_s1_reg { i16 -3744, i8 -126 }, %struct.stb0899_s1_reg { i16 -3743, i8 -126 }, %struct.stb0899_s1_reg { i16 -3742, i8 -126 }, %struct.stb0899_s1_reg { i16 -3741, i8 -126 }, %struct.stb0899_s1_reg { i16 -3740, i8 -126 }, %struct.stb0899_s1_reg { i16 -3739, i8 -126 }, %struct.stb0899_s1_reg { i16 -3738, i8 -126 }, %struct.stb0899_s1_reg { i16 -3737, i8 -126 }, %struct.stb0899_s1_reg { i16 -3661, i8 23 }, %struct.stb0899_s1_reg { i16 -3658, i8 2 }, %struct.stb0899_s1_reg { i16 -3657, i8 0 }, %struct.stb0899_s1_reg { i16 -3656, i8 1 }, %struct.stb0899_s1_reg { i16 -3646, i8 32 }, %struct.stb0899_s1_reg { i16 -3645, i8 0 }, %struct.stb0899_s1_reg { i16 -3584, i8 0 }, %struct.stb0899_s1_reg { i16 -3583, i8 10 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [88 x i8] zeroinitializer }, align 32
@stb0899_s2_init_2 = internal constant { [177 x %struct.stb0899_s2_reg], [532 x i8] } { [177 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -3328, i32 0, i32 259 }, %struct.stb0899_s2_reg { i16 -3324, i32 0, i32 1053940310 }, %struct.stb0899_s2_reg { i16 -3320, i32 0, i32 16384 }, %struct.stb0899_s2_reg { i16 -3316, i32 0, i32 10974 }, %struct.stb0899_s2_reg { i16 -3312, i32 0, i32 444 }, %struct.stb0899_s2_reg { i16 -3308, i32 0, i32 512 }, %struct.stb0899_s2_reg { i16 -3300, i32 0, i32 15 }, %struct.stb0899_s2_reg { i16 -3296, i32 0, i32 66800160 }, %struct.stb0899_s2_reg { i16 -3292, i32 0, i32 2100375 }, %struct.stb0899_s2_reg { i16 -3288, i32 0, i32 22 }, %struct.stb0899_s2_reg { i16 -3284, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 0, i32 1053857718 }, %struct.stb0899_s2_reg { i16 -3268, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 0, i32 258792449 }, %struct.stb0899_s2_reg { i16 -3256, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 0, i32 14739 }, %struct.stb0899_s2_reg { i16 -3248, i32 0, i32 867439 }, %struct.stb0899_s2_reg { i16 -3244, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 0, i32 37282702 }, %struct.stb0899_s2_reg { i16 -3232, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3204, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 32, i32 1074200576 }, %struct.stb0899_s2_reg { i16 -3240, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3236, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3232, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 32, i32 65025 }, %struct.stb0899_s2_reg { i16 -3224, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 32, i32 20487 }, %struct.stb0899_s2_reg { i16 -3208, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3328, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 64, i32 65280 }, %struct.stb0899_s2_reg { i16 -3260, i32 64, i32 256 }, %struct.stb0899_s2_reg { i16 -3256, i32 64, i32 65025 }, %struct.stb0899_s2_reg { i16 -3252, i32 64, i32 1278 }, %struct.stb0899_s2_reg { i16 -3248, i32 64, i32 53223 }, %struct.stb0899_s2_reg { i16 -3244, i32 64, i32 48838 }, %struct.stb0899_s2_reg { i16 -3240, i32 64, i32 49855 }, %struct.stb0899_s2_reg { i16 -3236, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 64, i32 49600 }, %struct.stb0899_s2_reg { i16 -3216, i32 64, i32 49344 }, %struct.stb0899_s2_reg { i16 -3212, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 64, i32 49345 }, %struct.stb0899_s2_reg { i16 -3328, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3324, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3320, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3316, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3312, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3308, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3304, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3300, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3296, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3292, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3288, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3284, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3280, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3276, i32 96, i32 49598 }, %struct.stb0899_s2_reg { i16 -3272, i32 96, i32 49609 }, %struct.stb0899_s2_reg { i16 -3268, i32 96, i32 49370 }, %struct.stb0899_s2_reg { i16 -3264, i32 96, i32 49338 }, %struct.stb0899_s2_reg { i16 -3260, i32 96, i32 49604 }, %struct.stb0899_s2_reg { i16 -3256, i32 96, i32 49599 }, %struct.stb0899_s2_reg { i16 -3252, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3248, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3244, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3240, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3236, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3216, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3212, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3328, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3324, i32 1024, i32 22100 }, %struct.stb0899_s2_reg { i16 -3316, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1024, i32 131097 }, %struct.stb0899_s2_reg { i16 -3308, i32 1024, i32 4928055 }, %struct.stb0899_s2_reg { i16 -3304, i32 1024, i32 253207 }, %struct.stb0899_s2_reg { i16 -3300, i32 1024, i32 32776 }, %struct.stb0899_s2_reg { i16 -3296, i32 1024, i32 2765062 }, %struct.stb0899_s2_reg { i16 -3292, i32 1024, i32 398346 }, %struct.stb0899_s2_reg { i16 -3288, i32 1024, i32 32768 }, %struct.stb0899_s2_reg { i16 -3284, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1024, i32 1137 }, %struct.stb0899_s2_reg { i16 -3252, i32 1024, i32 24839269 }, %struct.stb0899_s2_reg { i16 -3248, i32 1024, i32 2 }, %struct.stb0899_s2_reg { i16 -3244, i32 1024, i32 1664100 }, %struct.stb0899_s2_reg { i16 -3240, i32 1024, i32 1539 }, %struct.stb0899_s2_reg { i16 -3236, i32 1024, i32 33842790 }, %struct.stb0899_s2_reg { i16 -3232, i32 1024, i32 268723587 }, %struct.stb0899_s2_reg { i16 -3228, i32 1024, i32 66564 }, %struct.stb0899_s2_reg { i16 -3224, i32 1024, i32 174730 }, %struct.stb0899_s2_reg { i16 -3220, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 1024, i32 1280 }, %struct.stb0899_s2_reg { i16 -3208, i32 1024, i32 2662560 }, %struct.stb0899_s2_reg { i16 -3204, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1088, i32 8391703 }, %struct.stb0899_s2_reg { i16 -3316, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1088, i32 346114 }, %struct.stb0899_s2_reg { i16 -3296, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1088, i32 1024 }, %struct.stb0899_s2_reg { i16 -3272, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3232, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3212, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3208, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3328, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [532 x i8] zeroinitializer }, align 32
@vp1041_stb0899_s1_init_3 = internal constant { [130 x %struct.stb0899_s1_reg], [152 x i8] } { [130 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -3058, i8 0 }, %struct.stb0899_s1_reg { i16 -3056, i8 -55 }, %struct.stb0899_s1_reg { i16 -3054, i8 1 }, %struct.stb0899_s1_reg { i16 -3053, i8 16 }, %struct.stb0899_s1_reg { i16 -3049, i8 35 }, %struct.stb0899_s1_reg { i16 -3048, i8 78 }, %struct.stb0899_s1_reg { i16 -3047, i8 52 }, %struct.stb0899_s1_reg { i16 -3046, i8 -124 }, %struct.stb0899_s1_reg { i16 -3045, i8 -9 }, %struct.stb0899_s1_reg { i16 -3044, i8 -121 }, %struct.stb0899_s1_reg { i16 -3043, i8 -108 }, %struct.stb0899_s1_reg { i16 -3042, i8 65 }, %struct.stb0899_s1_reg { i16 -3041, i8 -15 }, %struct.stb0899_s1_reg { i16 -3040, i8 -29 }, %struct.stb0899_s1_reg { i16 -3035, i8 -76 }, %struct.stb0899_s1_reg { i16 -3034, i8 16 }, %struct.stb0899_s1_reg { i16 -3033, i8 48 }, %struct.stb0899_s1_reg { i16 -3032, i8 -3 }, %struct.stb0899_s1_reg { i16 -3031, i8 -1 }, %struct.stb0899_s1_reg { i16 -3030, i8 12 }, %struct.stb0899_s1_reg { i16 -3029, i8 15 }, %struct.stb0899_s1_reg { i16 -3028, i8 108 }, %struct.stb0899_s1_reg { i16 -3026, i8 -128 }, %struct.stb0899_s1_reg { i16 -3018, i8 6 }, %struct.stb0899_s1_reg { i16 -3017, i8 0 }, %struct.stb0899_s1_reg { i16 -3016, i8 48 }, %struct.stb0899_s1_reg { i16 -3015, i8 127 }, %struct.stb0899_s1_reg { i16 -3014, i8 0 }, %struct.stb0899_s1_reg { i16 -3013, i8 -68 }, %struct.stb0899_s1_reg { i16 -3010, i8 -22 }, %struct.stb0899_s1_reg { i16 -3009, i8 49 }, %struct.stb0899_s1_reg { i16 -3008, i8 43 }, %struct.stb0899_s1_reg { i16 -3007, i8 -128 }, %struct.stb0899_s1_reg { i16 -3004, i8 29 }, %struct.stb0899_s1_reg { i16 -3003, i8 -90 }, %struct.stb0899_s1_reg { i16 -3002, i8 47 }, %struct.stb0899_s1_reg { i16 -3001, i8 104 }, %struct.stb0899_s1_reg { i16 -3000, i8 64 }, %struct.stb0899_s1_reg { i16 -2996, i8 47 }, %struct.stb0899_s1_reg { i16 -2995, i8 104 }, %struct.stb0899_s1_reg { i16 -2994, i8 64 }, %struct.stb0899_s1_reg { i16 -2848, i8 2 }, %struct.stb0899_s1_reg { i16 -2847, i8 -1 }, %struct.stb0899_s1_reg { i16 -2846, i8 4 }, %struct.stb0899_s1_reg { i16 -2845, i8 5 }, %struct.stb0899_s1_reg { i16 -2844, i8 2 }, %struct.stb0899_s1_reg { i16 -2843, i8 -3 }, %struct.stb0899_s1_reg { i16 -2842, i8 3 }, %struct.stb0899_s1_reg { i16 -2841, i8 7 }, %struct.stb0899_s1_reg { i16 -2840, i8 8 }, %struct.stb0899_s1_reg { i16 -2839, i8 -11 }, %struct.stb0899_s1_reg { i16 -2804, i8 0 }, %struct.stb0899_s1_reg { i16 -2803, i8 0 }, %struct.stb0899_s1_reg { i16 -2801, i8 -122 }, %struct.stb0899_s1_reg { i16 -2781, i8 42 }, %struct.stb0899_s1_reg { i16 -2780, i8 0 }, %struct.stb0899_s1_reg { i16 -2779, i8 0 }, %struct.stb0899_s1_reg { i16 -2778, i8 0 }, %struct.stb0899_s1_reg { i16 -2777, i8 0 }, %struct.stb0899_s1_reg { i16 -2776, i8 10 }, %struct.stb0899_s1_reg { i16 -2775, i8 -83 }, %struct.stb0899_s1_reg { i16 -2768, i8 6 }, %struct.stb0899_s1_reg { i16 -2765, i8 1 }, %struct.stb0899_s1_reg { i16 -2764, i8 -80 }, %struct.stb0899_s1_reg { i16 -2763, i8 122 }, %struct.stb0899_s1_reg { i16 -2762, i8 88 }, %struct.stb0899_s1_reg { i16 -2761, i8 56 }, %struct.stb0899_s1_reg { i16 -2760, i8 52 }, %struct.stb0899_s1_reg { i16 -2759, i8 36 }, %struct.stb0899_s1_reg { i16 -2756, i8 -1 }, %struct.stb0899_s1_reg { i16 -2755, i8 25 }, %struct.stb0899_s1_reg { i16 -2744, i8 -79 }, %struct.stb0899_s1_reg { i16 -2743, i8 66 }, %struct.stb0899_s1_reg { i16 -2742, i8 65 }, %struct.stb0899_s1_reg { i16 -2741, i8 18 }, %struct.stb0899_s1_reg { i16 -2740, i8 12 }, %struct.stb0899_s1_reg { i16 -2739, i8 0 }, %struct.stb0899_s1_reg { i16 -2738, i8 0 }, %struct.stb0899_s1_reg { i16 -2737, i8 105 }, %struct.stb0899_s1_reg { i16 -2736, i8 0 }, %struct.stb0899_s1_reg { i16 -2735, i8 2 }, %struct.stb0899_s1_reg { i16 -2734, i8 0 }, %struct.stb0899_s1_reg { i16 -2733, i8 0 }, %struct.stb0899_s1_reg { i16 -2726, i8 27 }, %struct.stb0899_s1_reg { i16 -2725, i8 -77 }, %struct.stb0899_s1_reg { i16 -2724, i8 0 }, %struct.stb0899_s1_reg { i16 -2723, i8 0 }, %struct.stb0899_s1_reg { i16 -2722, i8 -68 }, %struct.stb0899_s1_reg { i16 -2721, i8 -52 }, %struct.stb0899_s1_reg { i16 -2720, i8 -67 }, %struct.stb0899_s1_reg { i16 -2719, i8 -112 }, %struct.stb0899_s1_reg { i16 -2700, i8 -74 }, %struct.stb0899_s1_reg { i16 -2699, i8 -107 }, %struct.stb0899_s1_reg { i16 -2698, i8 -115 }, %struct.stb0899_s1_reg { i16 -2693, i8 39 }, %struct.stb0899_s1_reg { i16 -2692, i8 3 }, %struct.stb0899_s1_reg { i16 -2685, i8 92 }, %struct.stb0899_s1_reg { i16 -2676, i8 25 }, %struct.stb0899_s1_reg { i16 -2560, i8 72 }, %struct.stb0899_s1_reg { i16 -2559, i8 0 }, %struct.stb0899_s1_reg { i16 -2558, i8 0 }, %struct.stb0899_s1_reg { i16 -2557, i8 0 }, %struct.stb0899_s1_reg { i16 -2556, i8 119 }, %struct.stb0899_s1_reg { i16 -2555, i8 0 }, %struct.stb0899_s1_reg { i16 -2554, i8 0 }, %struct.stb0899_s1_reg { i16 -2553, i8 0 }, %struct.stb0899_s1_reg { i16 -2552, i8 0 }, %struct.stb0899_s1_reg { i16 -2551, i8 0 }, %struct.stb0899_s1_reg { i16 -2550, i8 0 }, %struct.stb0899_s1_reg { i16 -2549, i8 0 }, %struct.stb0899_s1_reg { i16 -2548, i8 0 }, %struct.stb0899_s1_reg { i16 -2547, i8 0 }, %struct.stb0899_s1_reg { i16 -2546, i8 0 }, %struct.stb0899_s1_reg { i16 -2545, i8 0 }, %struct.stb0899_s1_reg { i16 -2544, i8 -16 }, %struct.stb0899_s1_reg { i16 -2543, i8 2 }, %struct.stb0899_s1_reg { i16 -2542, i8 69 }, %struct.stb0899_s1_reg { i16 -2541, i8 96 }, %struct.stb0899_s1_reg { i16 -2540, i8 -29 }, %struct.stb0899_s1_reg { i16 -2539, i8 0 }, %struct.stb0899_s1_reg { i16 -2538, i8 71 }, %struct.stb0899_s1_reg { i16 -2537, i8 5 }, %struct.stb0899_s1_reg { i16 -2536, i8 24 }, %struct.stb0899_s1_reg { i16 -2535, i8 25 }, %struct.stb0899_s1_reg { i16 -2534, i8 43 }, %struct.stb0899_s1_reg { i16 -2533, i8 0 }, %struct.stb0899_s1_reg { i16 -2532, i8 1 }, %struct.stb0899_s1_reg { i16 -2531, i8 0 }, %struct.stb0899_s1_reg { i16 -2530, i8 0 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [152 x i8] zeroinitializer }, align 32
@stb0899_s2_init_4 = internal constant { [21 x %struct.stb0899_s2_reg], [36 x i8] } { [21 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -1532, i32 0, i32 8 }, %struct.stb0899_s2_reg { i16 -1528, i32 0, i32 180 }, %struct.stb0899_s2_reg { i16 -1520, i32 0, i32 1205 }, %struct.stb0899_s2_reg { i16 -1516, i32 0, i32 2891 }, %struct.stb0899_s2_reg { i16 -1508, i32 0, i32 120 }, %struct.stb0899_s2_reg { i16 -1504, i32 0, i32 480 }, %struct.stb0899_s2_reg { i16 -1500, i32 0, i32 43200 }, %struct.stb0899_s2_reg { i16 -1496, i32 0, i32 12 }, %struct.stb0899_s2_reg { i16 -1536, i32 2048, i32 1 }, %struct.stb0899_s2_reg { i16 -1532, i32 2048, i32 13 }, %struct.stb0899_s2_reg { i16 -1528, i32 2048, i32 64 }, %struct.stb0899_s2_reg { i16 -1524, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1520, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1516, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1512, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1508, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1504, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1500, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1496, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1480, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@stb0899_s1_init_5 = internal constant { [38 x %struct.stb0899_s1_reg], [40 x i8] } { [38 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -240, i8 0 }, %struct.stb0899_s1_reg { i16 -239, i8 0 }, %struct.stb0899_s1_reg { i16 -238, i8 0 }, %struct.stb0899_s1_reg { i16 -237, i8 0 }, %struct.stb0899_s1_reg { i16 -236, i8 0 }, %struct.stb0899_s1_reg { i16 -235, i8 0 }, %struct.stb0899_s1_reg { i16 -234, i8 0 }, %struct.stb0899_s1_reg { i16 -233, i8 0 }, %struct.stb0899_s1_reg { i16 -228, i8 0 }, %struct.stb0899_s1_reg { i16 -227, i8 0 }, %struct.stb0899_s1_reg { i16 -226, i8 0 }, %struct.stb0899_s1_reg { i16 -220, i8 0 }, %struct.stb0899_s1_reg { i16 -219, i8 0 }, %struct.stb0899_s1_reg { i16 -216, i8 0 }, %struct.stb0899_s1_reg { i16 -192, i8 0 }, %struct.stb0899_s1_reg { i16 -191, i8 0 }, %struct.stb0899_s1_reg { i16 -190, i8 0 }, %struct.stb0899_s1_reg { i16 -184, i8 0 }, %struct.stb0899_s1_reg { i16 -183, i8 0 }, %struct.stb0899_s1_reg { i16 -182, i8 0 }, %struct.stb0899_s1_reg { i16 -181, i8 0 }, %struct.stb0899_s1_reg { i16 -180, i8 0 }, %struct.stb0899_s1_reg { i16 -179, i8 0 }, %struct.stb0899_s1_reg { i16 -176, i8 0 }, %struct.stb0899_s1_reg { i16 -175, i8 0 }, %struct.stb0899_s1_reg { i16 -174, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -172, i8 0 }, %struct.stb0899_s1_reg { i16 -171, i8 0 }, %struct.stb0899_s1_reg { i16 -170, i8 0 }, %struct.stb0899_s1_reg { i16 -168, i8 0 }, %struct.stb0899_s1_reg { i16 -167, i8 0 }, %struct.stb0899_s1_reg { i16 -166, i8 0 }, %struct.stb0899_s1_reg { i16 -164, i8 0 }, %struct.stb0899_s1_reg { i16 -163, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -4096, i8 -127 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.75, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid parameter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/dvb-frontends/stb6100_cfg.h\00", [54 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr = internal global ptr @stb6100_set_frequency._entry, section ".printk_index", align 4
@stb6100_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.76, ptr @.str.75, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_frequency\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_frequency._entry_ptr = internal global ptr @stb6100_get_frequency._entry, section ".printk_index", align 4
@stb6100_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.77, ptr @.str.75, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry_ptr = internal global ptr @stb6100_set_bandwidth._entry, section ".printk_index", align 4
@stb6100_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.78, ptr @.str.75, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_bandwidth._entry_ptr = internal global ptr @stb6100_get_bandwidth._entry, section ".printk_index", align 4
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 334, i32 16 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 335, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"vp1041_config\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 333, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"vp1041_stb0899_config\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 254, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 306, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 308, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"vp1041_stb6100_config\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 291, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 312, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 313, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 314, i32 6 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 320, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 328, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [25 x i8] c"vp1041_stb0899_s1_init_1\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 33, i32 36 }
@___asan_gen_.247 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_2\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 13, i32 37 }
@___asan_gen_.250 = private unnamed_addr constant [25 x i8] c"vp1041_stb0899_s1_init_3\00", align 1
@___asan_gen_.251 = private constant [44 x i8] c"../drivers/media/pci/mantis/mantis_vp1041.c\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 121, i32 36 }
@___asan_gen_.253 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_4\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 195, i32 36 }
@___asan_gen_.256 = private unnamed_addr constant [18 x i8] c"stb0899_s1_init_5\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb0899_cfg.h\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 219, i32 36 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 44, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 22, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 82, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb6100_cfg.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 60, i32 4 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @stb6100_get_bandwidth._entry, ptr @stb6100_get_bandwidth._entry_ptr, ptr @stb6100_get_frequency._entry, ptr @stb6100_get_frequency._entry_ptr, ptr @stb6100_set_bandwidth._entry, ptr @stb6100_set_bandwidth._entry_ptr, ptr @stb6100_set_frequency._entry, ptr @stb6100_set_frequency._entry_ptr, ptr @vp1041_frontend_init._entry, ptr @vp1041_frontend_init._entry.10, ptr @vp1041_frontend_init._entry.13, ptr @vp1041_frontend_init._entry.16, ptr @vp1041_frontend_init._entry.19, ptr @vp1041_frontend_init._entry.23, ptr @vp1041_frontend_init._entry.28, ptr @vp1041_frontend_init._entry.31, ptr @vp1041_frontend_init._entry.34, ptr @vp1041_frontend_init._entry.37, ptr @vp1041_frontend_init._entry.40, ptr @vp1041_frontend_init._entry.43, ptr @vp1041_frontend_init._entry.45, ptr @vp1041_frontend_init._entry.48, ptr @vp1041_frontend_init._entry.51, ptr @vp1041_frontend_init._entry.54, ptr @vp1041_frontend_init._entry.57, ptr @vp1041_frontend_init._entry.59, ptr @vp1041_frontend_init._entry.62, ptr @vp1041_frontend_init._entry.65, ptr @vp1041_frontend_init._entry.68, ptr @vp1041_frontend_init._entry.7, ptr @vp1041_frontend_init._entry.71, ptr @vp1041_frontend_init._entry_ptr, ptr @vp1041_frontend_init._entry_ptr.12, ptr @vp1041_frontend_init._entry_ptr.15, ptr @vp1041_frontend_init._entry_ptr.18, ptr @vp1041_frontend_init._entry_ptr.20, ptr @vp1041_frontend_init._entry_ptr.25, ptr @vp1041_frontend_init._entry_ptr.30, ptr @vp1041_frontend_init._entry_ptr.33, ptr @vp1041_frontend_init._entry_ptr.36, ptr @vp1041_frontend_init._entry_ptr.39, ptr @vp1041_frontend_init._entry_ptr.42, ptr @vp1041_frontend_init._entry_ptr.44, ptr @vp1041_frontend_init._entry_ptr.47, ptr @vp1041_frontend_init._entry_ptr.50, ptr @vp1041_frontend_init._entry_ptr.53, ptr @vp1041_frontend_init._entry_ptr.56, ptr @vp1041_frontend_init._entry_ptr.58, ptr @vp1041_frontend_init._entry_ptr.61, ptr @vp1041_frontend_init._entry_ptr.64, ptr @vp1041_frontend_init._entry_ptr.67, ptr @vp1041_frontend_init._entry_ptr.70, ptr @vp1041_frontend_init._entry_ptr.72, ptr @vp1041_frontend_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @vp1041_config, ptr @.str.2, ptr @.str.3, ptr @vp1041_stb0899_config, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @vp1041_stb6100_config, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @vp1041_stb0899_s1_init_1, ptr @stb0899_s2_init_2, ptr @vp1041_stb0899_s1_init_3, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_stb0899_config to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_stb6100_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_frontend_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_stb0899_s1_init_1 to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_2 to i32), i32 2124, i32 2656, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp1041_stb0899_s1_init_3 to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_4 to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s1_init_5 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp1041_frontend_init(ptr noundef %mantis, ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20
  %call = tail call i32 @mantis_frontend_power(ptr noundef %mantis, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body241

if.then:                                          ; preds = %entry
  tail call void @mantis_frontend_soft_reset(ptr noundef %mantis) #3
  tail call void @msleep(i32 noundef 250) #3
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.2) #3
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %cond.end, label %if.then.if.then6_crit_edge

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

cond.end:                                         ; preds = %if.then
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3) #3
  %call4 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.2) #3
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %cond.end.if.then6_crit_edge

cond.end.if.then6_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then6:                                         ; preds = %cond.end.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %cond501 = phi ptr [ %call4, %cond.end.if.then6_crit_edge ], [ %call2, %if.then.if.then6_crit_edge ]
  %call7 = tail call ptr %cond501(ptr noundef nonnull @vp1041_stb0899_config, ptr noundef %adapter1) #3
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then9, label %do.body17

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__symbol_put(ptr noundef nonnull @.str.2) #3
  br label %if.end11.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %if.end11.thread

if.end11.thread:                                  ; preds = %do.end, %if.then9
  %fe13503 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %0 = ptrtoint ptr %fe13503 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fe13503, align 4
  br label %cleanup

do.body17:                                        ; preds = %if.then6
  %fe13 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 25
  %1 = ptrtoint ptr %fe13 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %fe13, align 4
  %2 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not = icmp eq i32 %3, 0
  br i1 %cmp18.not, label %do.body17.do.end97_crit_edge, label %do.end24

do.body17.do.end97_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end97

do.end24:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #5
  %num = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 8
  %6 = load i8, ptr getelementptr inbounds (%struct.stb0899_config, ptr @vp1041_stb0899_config, i32 0, i32 8), align 4
  %conv = zext i8 %6 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef %conv) #6
  br label %do.end97

do.end97:                                         ; preds = %do.end24, %do.body17.do.end97_crit_edge
  %call100 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.21) #3
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %cond.end106, label %do.end97.if.then109_crit_edge

do.end97.if.then109_crit_edge:                    ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then109

cond.end106:                                      ; preds = %do.end97
  %call104 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.22) #3
  %call105 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.21) #3
  %tobool108.not = icmp eq ptr %call105, null
  br i1 %tobool108.not, label %do.end119, label %cond.end106.if.then109_crit_edge

cond.end106.if.then109_crit_edge:                 ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then109

if.then109:                                       ; preds = %cond.end106.if.then109_crit_edge, %do.end97.if.then109_crit_edge
  %cond107508 = phi ptr [ %call105, %cond.end106.if.then109_crit_edge ], [ %call100, %do.end97.if.then109_crit_edge ]
  %7 = ptrtoint ptr %fe13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fe13, align 4
  %call111 = tail call ptr %cond107508(ptr noundef %8, ptr noundef nonnull @vp1041_stb6100_config, ptr noundef %adapter1) #3
  %cmp112 = icmp eq ptr %call111, null
  br i1 %cmp112, label %if.then114, label %if.then125

if.then114:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__symbol_put(ptr noundef nonnull @.str.21) #3
  br label %do.body332

do.end119:                                        ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #5
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #6
  br label %do.body332

if.then125:                                       ; preds = %if.then109
  %call128 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #3
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %cond.end134, label %if.then125.if.then137_crit_edge

if.then125.if.then137_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then137

cond.end134:                                      ; preds = %if.then125
  %call132 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #3
  %call133 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #3
  %tobool136.not = icmp eq ptr %call133, null
  br i1 %tobool136.not, label %do.end147, label %cond.end134.if.then137_crit_edge

cond.end134.if.then137_crit_edge:                 ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then137

if.then137:                                       ; preds = %cond.end134.if.then137_crit_edge, %if.then125.if.then137_crit_edge
  %cond135514 = phi ptr [ %call133, %cond.end134.if.then137_crit_edge ], [ %call128, %if.then125.if.then137_crit_edge ]
  %9 = ptrtoint ptr %fe13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe13, align 4
  %call139 = tail call ptr %cond135514(ptr noundef %10, ptr noundef %adapter1, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %cmp140 = icmp eq ptr %call139, null
  br i1 %cmp140, label %if.then142, label %if.then137.do.body332_crit_edge

if.then137.do.body332_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body332

if.then142:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #3
  br label %do.body154

do.end147:                                        ; preds = %cond.end134
  call void @__sanitizer_cov_trace_pc() #5
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #6
  br label %do.body154

do.body154:                                       ; preds = %do.end147, %if.then142
  %11 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp156.not = icmp eq i32 %12, 0
  br i1 %cmp156.not, label %do.body154.cleanup_crit_edge, label %do.end165

do.body154.cleanup_crit_edge:                     ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end165:                                        ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #5
  %num167 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %13 = ptrtoint ptr %num167 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num167, align 8
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.5, i32 noundef %14) #6
  br label %do.body332

do.body241:                                       ; preds = %entry
  %15 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp243.not = icmp eq i32 %16, 0
  br i1 %cmp243.not, label %do.body241.cleanup_crit_edge, label %do.end252

do.body241.cleanup_crit_edge:                     ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end252:                                        ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #5
  %num254 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %17 = ptrtoint ptr %num254 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num254, align 8
  %name = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 20, i32 12
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.5, i32 noundef %18, ptr noundef %name, i32 noundef %call) #6
  br label %cleanup

do.body332:                                       ; preds = %do.end165, %if.then137.do.body332_crit_edge, %do.end119, %if.then114
  %19 = ptrtoint ptr %mantis to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %mantis, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp334.not = icmp eq i32 %.pr, 0
  br i1 %cmp334.not, label %do.body332.cleanup_crit_edge, label %do.end343

do.body332.cleanup_crit_edge:                     ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end343:                                        ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #5
  %num345 = getelementptr inbounds %struct.mantis_pci, ptr %mantis, i32 0, i32 11
  %20 = ptrtoint ptr %num345 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num345, align 8
  %call346 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.5, i32 noundef %21) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end343, %do.body332.cleanup_crit_edge, %do.end252, %do.body241.cleanup_crit_edge, %do.body154.cleanup_crit_edge, %if.end11.thread
  %retval.0 = phi i32 [ -5, %do.end252 ], [ 0, %do.end343 ], [ -121, %if.end11.thread ], [ -5, %do.body241.cleanup_crit_edge ], [ 0, %do.body332.cleanup_crit_edge ], [ 0, %do.body154.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mantis_frontend_power(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mantis_frontend_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_frequency(ptr noundef %fe, i32 noundef %frequency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %frequency, ptr %dtv_property_cache, align 4
  store i32 0, ptr %bandwidth_hz, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #3
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_frequency(ptr noundef %fe, ptr noundef %frequency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %0 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_frequency, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %frequency) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.76) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_bandwidth(ptr noundef %fe, i32 noundef %bandwidth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bandwidth, ptr %bandwidth_hz, align 4
  store i32 0, ptr %dtv_property_cache, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #3
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.77) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_bandwidth(ptr noundef %fe, ptr noundef %bandwidth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 10
  %0 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_bandwidth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %bandwidth) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.78) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 334, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 335, i32 14}
!4 = !{ptr @vp1041_config, !5, !"vp1041_config", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 333, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 306, i32 16}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vp1041_frontend_init._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @vp1041_frontend_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 308, i32 4}
!16 = !{ptr @vp1041_frontend_init._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @vp1041_frontend_init._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vp1041_frontend_init._entry.10, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @vp1041_frontend_init._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vp1041_frontend_init._entry.13, !15, !"_entry", i1 false, i1 false}
!23 = !{ptr @vp1041_frontend_init._entry_ptr.15, !15, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !15, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vp1041_frontend_init._entry.16, !15, !"_entry", i1 false, i1 false}
!26 = !{ptr @vp1041_frontend_init._entry_ptr.18, !15, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @vp1041_frontend_init._entry.19, !15, !"_entry", i1 false, i1 false}
!28 = !{ptr @vp1041_frontend_init._entry_ptr.20, !15, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 312, i32 8}
!31 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.24, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @vp1041_frontend_init._entry.23, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @vp1041_frontend_init._entry_ptr.25, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 313, i32 10}
!37 = !{ptr @.str.27, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.29, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vp1041_frontend_init._entry.28, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @vp1041_frontend_init._entry_ptr.30, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.32, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 314, i32 6}
!43 = !{ptr @vp1041_frontend_init._entry.31, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vp1041_frontend_init._entry_ptr.33, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.35, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @vp1041_frontend_init._entry.34, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @vp1041_frontend_init._entry_ptr.36, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.38, !42, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vp1041_frontend_init._entry.37, !42, !"_entry", i1 false, i1 false}
!50 = !{ptr @vp1041_frontend_init._entry_ptr.39, !42, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.41, !42, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vp1041_frontend_init._entry.40, !42, !"_entry", i1 false, i1 false}
!53 = !{ptr @vp1041_frontend_init._entry_ptr.42, !42, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @vp1041_frontend_init._entry.43, !42, !"_entry", i1 false, i1 false}
!55 = !{ptr @vp1041_frontend_init._entry_ptr.44, !42, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.46, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 320, i32 3}
!58 = !{ptr @vp1041_frontend_init._entry.45, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @vp1041_frontend_init._entry_ptr.47, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.49, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @vp1041_frontend_init._entry.48, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @vp1041_frontend_init._entry_ptr.50, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.52, !57, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vp1041_frontend_init._entry.51, !57, !"_entry", i1 false, i1 false}
!65 = !{ptr @vp1041_frontend_init._entry_ptr.53, !57, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.55, !57, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @vp1041_frontend_init._entry.54, !57, !"_entry", i1 false, i1 false}
!68 = !{ptr @vp1041_frontend_init._entry_ptr.56, !57, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @vp1041_frontend_init._entry.57, !57, !"_entry", i1 false, i1 false}
!70 = !{ptr @vp1041_frontend_init._entry_ptr.58, !57, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.60, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 328, i32 2}
!73 = !{ptr @vp1041_frontend_init._entry.59, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @vp1041_frontend_init._entry_ptr.61, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.63, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @vp1041_frontend_init._entry.62, !72, !"_entry", i1 false, i1 false}
!77 = !{ptr @vp1041_frontend_init._entry_ptr.64, !72, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.66, !72, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @vp1041_frontend_init._entry.65, !72, !"_entry", i1 false, i1 false}
!80 = !{ptr @vp1041_frontend_init._entry_ptr.67, !72, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.69, !72, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @vp1041_frontend_init._entry.68, !72, !"_entry", i1 false, i1 false}
!83 = !{ptr @vp1041_frontend_init._entry_ptr.70, !72, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @vp1041_frontend_init._entry.71, !72, !"_entry", i1 false, i1 false}
!85 = !{ptr @vp1041_frontend_init._entry_ptr.72, !72, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @vp1041_stb0899_config, !87, !"vp1041_stb0899_config", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 254, i32 30}
!88 = !{ptr @vp1041_stb0899_s1_init_1, !89, !"vp1041_stb0899_s1_init_1", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 33, i32 36}
!90 = !{ptr @stb0899_s2_init_2, !91, !"stb0899_s2_init_2", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 13, i32 37}
!92 = !{ptr @vp1041_stb0899_s1_init_3, !93, !"vp1041_stb0899_s1_init_3", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 121, i32 36}
!94 = !{ptr @stb0899_s2_init_4, !95, !"stb0899_s2_init_4", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 195, i32 36}
!96 = !{ptr @stb0899_s1_init_5, !97, !"stb0899_s1_init_5", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 219, i32 36}
!98 = !{ptr @.str.73, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 44, i32 4}
!100 = !{ptr @.str.74, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.75, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @stb6100_set_frequency._entry, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @stb6100_set_frequency._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.76, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 22, i32 4}
!106 = !{ptr @stb6100_get_frequency._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @stb6100_get_frequency._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.77, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 82, i32 4}
!110 = !{ptr @stb6100_set_bandwidth._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @stb6100_set_bandwidth._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.78, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 60, i32 4}
!114 = !{ptr @stb6100_get_bandwidth._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @stb6100_get_bandwidth._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @vp1041_stb6100_config, !117, !"vp1041_stb6100_config", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/mantis/mantis_vp1041.c", i32 291, i32 30}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
