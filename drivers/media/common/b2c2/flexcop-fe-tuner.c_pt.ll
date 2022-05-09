; ModuleID = '/llk/IR_all_yes/drivers/media/common/b2c2/flexcop-fe-tuner.c_pt.bc'
source_filename = "../drivers/media/common/b2c2/flexcop-fe-tuner.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.189 = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s5h1420_config = type { i8, i8 }
%struct.itd1000_config = type { i8 }
%struct.cx24123_config = type { i8, ptr, i32, i8, ptr }
%struct.cx24113_config = type { i8, i32 }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nxt200x_config = type { i8, ptr }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.bcm3510_config = type { i8, ptr }
%struct.stv0297_config = type { i8, ptr, i8 }
%struct.mt312_config = type { i8, i8, [2 x i8] }
%struct.cx24120_config = type { i8, i32, %struct.cx24120_initial_mpeg_config, ptr, i16 }
%struct.cx24120_initial_mpeg_config = type { i8, i8, i8 }
%struct.flexcop_device = type { ptr, i32, i32, i32, i32, i32, %struct.dvb_adapter, ptr, %struct.dvb_net, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, ptr, [3 x %struct.flexcop_i2c_adapter], %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.flexcop_i2c_adapter = type { ptr, %struct.i2c_adapter, i8, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.108], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.108 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.109 }>
%union.anon.109 = type { i64 }
%union.flexcop_ibi_value = type { %struct.anon.177 }
%struct.anon.177 = type { i32, i16 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@flexcop_frontends = internal constant { [10 x %struct.anon.189], [48 x i8] } { [10 x %struct.anon.189] [%struct.anon.189 { i32 8, ptr @skystar2_rev27_attach }, %struct.anon.189 { i32 9, ptr @skystar2_rev28_attach }, %struct.anon.189 { i32 7, ptr @skystar2_rev26_attach }, %struct.anon.189 { i32 2, ptr @airstar_dvbt_attach }, %struct.anon.189 { i32 4, ptr @airstar_atsc2_attach }, %struct.anon.189 { i32 5, ptr @airstar_atsc3_attach }, %struct.anon.189 { i32 3, ptr @airstar_atsc1_attach }, %struct.anon.189 { i32 1, ptr @cablestar2_attach }, %struct.anon.189 { i32 6, ptr @skystar2_rev23_attach }, %struct.anon.189 { i32 10, ptr @skystarS2_rev33_attach }], [48 x i8] zeroinitializer }, align 32
@flexcop_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013b2c2-flexcop: no frontend driver found for this B2C2/FlexCop adapter\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flexcop_frontend_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/common/b2c2/flexcop-fe-tuner.c\00", [51 x i8] zeroinitializer }, align 32
@flexcop_frontend_init._entry_ptr = internal global ptr @flexcop_frontend_init._entry, section ".printk_index", align 4
@flexcop_frontend_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016b2c2-flexcop: found '%s' .\0A\00", [34 x i8] zeroinitializer }, align 32
@flexcop_frontend_init._entry_ptr.5 = internal global ptr @flexcop_frontend_init._entry.3, section ".printk_index", align 4
@flexcop_frontend_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013b2c2-flexcop: frontend registration failed!\0A\00", [49 x i8] zeroinitializer }, align 32
@flexcop_frontend_init._entry_ptr.8 = internal global ptr @flexcop_frontend_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1420_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1420_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev2_7_s5h1420_config = internal global { %struct.s5h1420_config, [30 x i8] } { %struct.s5h1420_config { i8 83, i8 -48 }, [30 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1420_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"skystar2_rev27_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry_ptr = internal global ptr @skystar2_rev27_attach._entry, section ".printk_index", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl6421_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:isl6421_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol isl6421_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry_ptr.17 = internal global ptr @skystar2_rev27_attach._entry.15, section ".printk_index", align 4
@skystar2_rev27_attach._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013b2c2-flexcop: ISL6421 could NOT be attached\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry_ptr.20 = internal global ptr @skystar2_rev27_attach._entry.18, section ".printk_index", align 4
@skystar2_rev27_attach._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.12, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016b2c2-flexcop: ISL6421 successfully attached\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry_ptr.23 = internal global ptr @skystar2_rev27_attach._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"itd1000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:itd1000_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev2_7_itd1000_config = internal global { %struct.itd1000_config, [31 x i8] } { %struct.itd1000_config { i8 97 }, [31 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol itd1000_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry_ptr.28 = internal global ptr @skystar2_rev27_attach._entry.26, section ".printk_index", align 4
@skystar2_rev27_attach._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.12, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013b2c2-flexcop: ITD1000 could NOT be attached\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry_ptr.31 = internal global ptr @skystar2_rev27_attach._entry.29, section ".printk_index", align 4
@skystar2_rev27_attach._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.12, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016b2c2-flexcop: ITD1000 successfully attached\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev27_attach._entry_ptr.34 = internal global ptr @skystar2_rev27_attach._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24123_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24123_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev2_8_cx24123_config = internal global { %struct.cx24123_config, [44 x i8] } { %struct.cx24123_config { i8 85, ptr null, i32 0, i8 1, ptr @cx24113_agc_callback }, [44 x i8] zeroinitializer }, align 32
@skystar2_rev28_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24123_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"skystar2_rev28_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev28_attach._entry_ptr = internal global ptr @skystar2_rev28_attach._entry, section ".printk_index", align 4
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24113_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24113_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev2_8_cx24113_config = internal constant { %struct.cx24113_config, [24 x i8] } { %struct.cx24113_config { i8 84, i32 10111 }, [24 x i8] zeroinitializer }, align 32
@skystar2_rev28_attach._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24113_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev28_attach._entry_ptr.43 = internal global ptr @skystar2_rev28_attach._entry.41, section ".printk_index", align 4
@skystar2_rev28_attach._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013b2c2-flexcop: CX24113 could NOT be attached\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev28_attach._entry_ptr.46 = internal global ptr @skystar2_rev28_attach._entry.44, section ".printk_index", align 4
@skystar2_rev28_attach._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.38, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016b2c2-flexcop: CX24113 successfully attached\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev28_attach._entry_ptr.49 = internal global ptr @skystar2_rev28_attach._entry.47, section ".printk_index", align 4
@skystar2_rev28_attach._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.38, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@skystar2_rev28_attach._entry_ptr.51 = internal global ptr @skystar2_rev28_attach._entry.50, section ".printk_index", align 4
@skystar2_rev28_attach._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.38, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@skystar2_rev28_attach._entry_ptr.53 = internal global ptr @skystar2_rev28_attach._entry.52, section ".printk_index", align 4
@skystar2_rev28_attach._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.38, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@skystar2_rev28_attach._entry_ptr.55 = internal global ptr @skystar2_rev28_attach._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0299_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0299_attach\00", [42 x i8] zeroinitializer }, align 32
@samsung_tbmu24112_config = internal global { %struct.stv0299_config, [36 x i8] } { %struct.stv0299_config { i8 104, ptr @samsung_tbmu24112_inittab, i32 88000000, i8 56, i32 100, ptr @samsung_tbmu24112_set_symbol_rate, ptr null }, [36 x i8] zeroinitializer }, align 32
@skystar2_rev26_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0299_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"skystar2_rev26_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev26_attach._entry_ptr = internal global ptr @skystar2_rev26_attach._entry, section ".printk_index", align 4
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev26_attach._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@skystar2_rev26_attach._entry_ptr.64 = internal global ptr @skystar2_rev26_attach._entry.62, section ".printk_index", align 4
@samsung_tbmu24112_inittab = internal global { [84 x i8], [44 x i8] } { [84 x i8] c"\01\15\020\03\00\04}\055\06\02\07\00\08\C3\0C\00\0D\81\0E#\0F\12\10~\11\84\12\B9\13\88\14\89\15\C9\16\00\17\\\18\00\19\00\1A\00\1C\00\1D\00\1E\00\1F: .!\80\22\FF#\C1(\00)\1E*\14+\0F,\09-\051\1F2\193\FE4\93\FF\FF", [44 x i8] zeroinitializer }, align 32
@b2c2_flexcop_debug = external dso_local local_unnamed_addr global i32, align 4
@flexcop_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"polarity/voltage = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flexcop_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@flexcop_set_voltage._entry_ptr = internal global ptr @flexcop_set_voltage._entry, section ".printk_index", align 4
@flexcop_set_voltage._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013b2c2-flexcop: unknown SEC_VOLTAGE value\0A\00", [53 x i8] zeroinitializer }, align 32
@flexcop_set_voltage._entry_ptr.69 = internal global ptr @flexcop_set_voltage._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@samsung_tdtc9251dh0_config = internal global { %struct.mt352_config, [44 x i8] } { %struct.mt352_config { i8 15, i32 0, i32 0, i32 0, ptr @samsung_tdtc9251dh0_demod_init }, [44 x i8] zeroinitializer }, align 32
@airstar_dvbt_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"airstar_dvbt_attach\00", [44 x i8] zeroinitializer }, align 32
@airstar_dvbt_attach._entry_ptr = internal global ptr @airstar_dvbt_attach._entry, section ".printk_index", align 4
@airstar_dvbt_attach._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.73, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@airstar_dvbt_attach._entry_ptr.75 = internal global ptr @airstar_dvbt_attach._entry.74, section ".printk_index", align 4
@samsung_tdtc9251dh0_demod_init.mt352_clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\89\18-", [29 x i8] zeroinitializer }, align 32
@samsung_tdtc9251dh0_demod_init.mt352_reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@samsung_tdtc9251dh0_demod_init.mt352_agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g(\A1", [29 x i8] zeroinitializer }, align 32
@samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"u2", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxt200x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:nxt200x_attach\00", [42 x i8] zeroinitializer }, align 32
@samsung_tbmv_config = internal constant { %struct.nxt200x_config, [24 x i8] } { %struct.nxt200x_config { i8 10, ptr null }, [24 x i8] zeroinitializer }, align 32
@airstar_atsc2_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol nxt200x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"airstar_atsc2_attach\00", [43 x i8] zeroinitializer }, align 32
@airstar_atsc2_attach._entry_ptr = internal global ptr @airstar_atsc2_attach._entry, section ".printk_index", align 4
@airstar_atsc2_attach._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.79, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@airstar_atsc2_attach._entry_ptr.81 = internal global ptr @airstar_atsc2_attach._entry.80, section ".printk_index", align 4
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt330x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt330x_attach\00", [41 x i8] zeroinitializer }, align 32
@air2pc_atsc_hd5000_config = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 4, ptr null, ptr null, i32 1, ptr null }, [40 x i8] zeroinitializer }, align 32
@airstar_atsc3_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt330x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"airstar_atsc3_attach\00", [43 x i8] zeroinitializer }, align 32
@airstar_atsc3_attach._entry_ptr = internal global ptr @airstar_atsc3_attach._entry, section ".printk_index", align 4
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@airstar_atsc3_attach._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.85, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@airstar_atsc3_attach._entry_ptr.90 = internal global ptr @airstar_atsc3_attach._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm3510_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:bcm3510_attach\00", [42 x i8] zeroinitializer }, align 32
@air2pc_atsc_first_gen_config = internal global { %struct.bcm3510_config, [24 x i8] } { %struct.bcm3510_config { i8 15, ptr @flexcop_fe_request_firmware }, [24 x i8] zeroinitializer }, align 32
@airstar_atsc1_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol bcm3510_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"airstar_atsc1_attach\00", [43 x i8] zeroinitializer }, align 32
@airstar_atsc1_attach._entry_ptr = internal global ptr @airstar_atsc1_attach._entry, section ".printk_index", align 4
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0297_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv0297_attach\00", [42 x i8] zeroinitializer }, align 32
@alps_tdee4_stv0297_config = internal global { %struct.stv0297_config, [20 x i8] } { %struct.stv0297_config { i8 28, ptr @alps_tdee4_stv0297_inittab, i8 0 }, [20 x i8] zeroinitializer }, align 32
@cablestar2_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv0297_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cablestar2_attach\00", [46 x i8] zeroinitializer }, align 32
@cablestar2_attach._entry_ptr = internal global ptr @cablestar2_attach._entry, section ".printk_index", align 4
@cablestar2_attach._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.98, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cablestar2_attach._entry_ptr.100 = internal global ptr @cablestar2_attach._entry.99, section ".printk_index", align 4
@alps_tdee4_stv0297_inittab = internal global { [140 x i8], [52 x i8] } { [140 x i8] c"\80\01\80\00\81\01\81\00\00H\01X\03\00\04\00\07\00\08\000\FF1\9D2\FF3\004)5U6\807n8\9C@\1AA\FEB3C\00D\FFE\00F\00I\04JQK\F8R0S\06Y\06Z^[\04aIb\0Ap\FFq\04r\00s\00t\0C\80 \81\00\820\83\00\84\04\85\22\86\08\87\1B\88\00\89\00\90\00\91\04\A0\86\A1\00\A2\00\B0\91\B1\0B\C0[\C1\10\C2\12\D0\02\D1\00\D2\00\D3\00\D4\02\D5\00\DE\00\DF\01\FF\FF", [52 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt312_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt312_attach\00", [44 x i8] zeroinitializer }, align 32
@skystar23_samsung_tbdu18132_config = internal global { %struct.mt312_config, [28 x i8] } { %struct.mt312_config { i8 14, i8 0, [2 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@skystar2_rev23_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt312_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"skystar2_rev23_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev23_attach._entry_ptr = internal global ptr @skystar2_rev23_attach._entry, section ".printk_index", align 4
@skystar2_rev23_attach._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.104, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@skystar2_rev23_attach._entry_ptr.106 = internal global ptr @skystar2_rev23_attach._entry.105, section ".printk_index", align 4
@flexcop_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tone = %u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flexcop_set_tone\00", [47 x i8] zeroinitializer }, align 32
@flexcop_set_tone._entry_ptr = internal global ptr @flexcop_set_tone._entry, section ".printk_index", align 4
@flexcop_set_tone._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013b2c2-flexcop: unknown SEC_TONE value\0A\00", [56 x i8] zeroinitializer }, align 32
@flexcop_set_tone._entry_ptr.111 = internal global ptr @flexcop_set_tone._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24120_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:cx24120_attach\00", [42 x i8] zeroinitializer }, align 32
@skystar2_rev3_3_cx24120_config = internal constant { %struct.cx24120_config, [44 x i8] } { %struct.cx24120_config { i8 85, i32 10111, %struct.cx24120_initial_mpeg_config { i8 -95, i8 118, i8 7 }, ptr @flexcop_fe_request_firmware, i16 4 }, [44 x i8] zeroinitializer }, align 32
@skystarS2_rev33_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol cx24120_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"skystarS2_rev33_attach\00", [41 x i8] zeroinitializer }, align 32
@skystarS2_rev33_attach._entry_ptr = internal global ptr @skystarS2_rev33_attach._entry, section ".printk_index", align 4
@skystarS2_rev33_attach._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.115, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@skystarS2_rev33_attach._entry_ptr.117 = internal global ptr @skystarS2_rev33_attach._entry.116, section ".printk_index", align 4
@skystarS2_rev33_attach._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.115, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013b2c2-flexcop: ISL6421 could NOT be attached!\0A\00", [48 x i8] zeroinitializer }, align 32
@skystarS2_rev33_attach._entry_ptr.120 = internal global ptr @skystarS2_rev33_attach._entry.118, section ".printk_index", align 4
@skystarS2_rev33_attach._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.115, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016b2c2-flexcop: ISL6421 successfully attached.\0A\00", [48 x i8] zeroinitializer }, align 32
@skystarS2_rev33_attach._entry_ptr.123 = internal global ptr @skystarS2_rev33_attach._entry.121, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"flexcop_frontends\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 667, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 699, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 703, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 705, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [31 x i8] c"skystar2_rev2_7_s5h1420_config\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 306, i32 30 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 325, i32 11 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 339, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 341, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 344, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [31 x i8] c"skystar2_rev2_7_itd1000_config\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 313, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 349, i32 7 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 351, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 355, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [31 x i8] c"skystar2_rev2_8_cx24123_config\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 372, i32 30 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 388, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant [31 x i8] c"skystar2_rev2_8_cx24113_config\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 378, i32 36 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 397, i32 7 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 399, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 402, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 405, i32 7 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 407, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 411, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [25 x i8] c"samsung_tbmu24112_config\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 271, i32 30 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 286, i32 11 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 290, i32 7 }
@___asan_gen_.306 = private unnamed_addr constant [26 x i8] c"samsung_tbmu24112_inittab\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 226, i32 11 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 47, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 63, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [27 x i8] c"samsung_tdtc9251dh0_config\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 439, i32 28 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 447, i32 11 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 451, i32 11 }
@___asan_gen_.345 = private unnamed_addr constant [19 x i8] c"mt352_clock_config\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 424, i32 12 }
@___asan_gen_.348 = private unnamed_addr constant [12 x i8] c"mt352_reset\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 425, i32 12 }
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c"mt352_adc_ctl_1_cfg\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 426, i32 12 }
@___asan_gen_.354 = private unnamed_addr constant [14 x i8] c"mt352_agc_cfg\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 427, i32 12 }
@___asan_gen_.357 = private unnamed_addr constant [21 x i8] c"mt352_capt_range_cfg\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 428, i32 12 }
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c"samsung_tbmv_config\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 477, i32 36 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 484, i32 11 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 488, i32 11 }
@___asan_gen_.387 = private unnamed_addr constant [26 x i8] c"air2pc_atsc_hd5000_config\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 497, i32 31 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 506, i32 11 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 511, i32 11 }
@___asan_gen_.417 = private unnamed_addr constant [29 x i8] c"air2pc_atsc_first_gen_config\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 460, i32 30 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 468, i32 11 }
@___asan_gen_.435 = private unnamed_addr constant [26 x i8] c"alps_tdee4_stv0297_config\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 593, i32 30 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 602, i32 11 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 612, i32 7 }
@___asan_gen_.450 = private unnamed_addr constant [27 x i8] c"alps_tdee4_stv0297_inittab\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 520, i32 11 }
@___asan_gen_.459 = private unnamed_addr constant [35 x i8] c"skystar23_samsung_tbdu18132_config\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 166, i32 28 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 175, i32 11 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 179, i32 7 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 89, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 99, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant [31 x i8] c"skystar2_rev3_3_cx24120_config\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 629, i32 36 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 640, i32 11 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 647, i32 7 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 649, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.520 = private constant [48 x i8] c"../drivers/media/common/b2c2/flexcop-fe-tuner.c\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 653, i32 2 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @airstar_atsc1_attach._entry, ptr @airstar_atsc1_attach._entry_ptr, ptr @airstar_atsc2_attach._entry, ptr @airstar_atsc2_attach._entry.80, ptr @airstar_atsc2_attach._entry_ptr, ptr @airstar_atsc2_attach._entry_ptr.81, ptr @airstar_atsc3_attach._entry, ptr @airstar_atsc3_attach._entry.88, ptr @airstar_atsc3_attach._entry_ptr, ptr @airstar_atsc3_attach._entry_ptr.90, ptr @airstar_dvbt_attach._entry, ptr @airstar_dvbt_attach._entry.74, ptr @airstar_dvbt_attach._entry_ptr, ptr @airstar_dvbt_attach._entry_ptr.75, ptr @cablestar2_attach._entry, ptr @cablestar2_attach._entry.99, ptr @cablestar2_attach._entry_ptr, ptr @cablestar2_attach._entry_ptr.100, ptr @flexcop_frontend_init._entry, ptr @flexcop_frontend_init._entry.3, ptr @flexcop_frontend_init._entry.6, ptr @flexcop_frontend_init._entry_ptr, ptr @flexcop_frontend_init._entry_ptr.5, ptr @flexcop_frontend_init._entry_ptr.8, ptr @flexcop_set_tone._entry, ptr @flexcop_set_tone._entry.109, ptr @flexcop_set_tone._entry_ptr, ptr @flexcop_set_tone._entry_ptr.111, ptr @flexcop_set_voltage._entry, ptr @flexcop_set_voltage._entry.67, ptr @flexcop_set_voltage._entry_ptr, ptr @flexcop_set_voltage._entry_ptr.69, ptr @skystar2_rev23_attach._entry, ptr @skystar2_rev23_attach._entry.105, ptr @skystar2_rev23_attach._entry_ptr, ptr @skystar2_rev23_attach._entry_ptr.106, ptr @skystar2_rev26_attach._entry, ptr @skystar2_rev26_attach._entry.62, ptr @skystar2_rev26_attach._entry_ptr, ptr @skystar2_rev26_attach._entry_ptr.64, ptr @skystar2_rev27_attach._entry, ptr @skystar2_rev27_attach._entry.15, ptr @skystar2_rev27_attach._entry.18, ptr @skystar2_rev27_attach._entry.21, ptr @skystar2_rev27_attach._entry.26, ptr @skystar2_rev27_attach._entry.29, ptr @skystar2_rev27_attach._entry.32, ptr @skystar2_rev27_attach._entry_ptr, ptr @skystar2_rev27_attach._entry_ptr.17, ptr @skystar2_rev27_attach._entry_ptr.20, ptr @skystar2_rev27_attach._entry_ptr.23, ptr @skystar2_rev27_attach._entry_ptr.28, ptr @skystar2_rev27_attach._entry_ptr.31, ptr @skystar2_rev27_attach._entry_ptr.34, ptr @skystar2_rev28_attach._entry, ptr @skystar2_rev28_attach._entry.41, ptr @skystar2_rev28_attach._entry.44, ptr @skystar2_rev28_attach._entry.47, ptr @skystar2_rev28_attach._entry.50, ptr @skystar2_rev28_attach._entry.52, ptr @skystar2_rev28_attach._entry.54, ptr @skystar2_rev28_attach._entry_ptr, ptr @skystar2_rev28_attach._entry_ptr.43, ptr @skystar2_rev28_attach._entry_ptr.46, ptr @skystar2_rev28_attach._entry_ptr.49, ptr @skystar2_rev28_attach._entry_ptr.51, ptr @skystar2_rev28_attach._entry_ptr.53, ptr @skystar2_rev28_attach._entry_ptr.55, ptr @skystarS2_rev33_attach._entry, ptr @skystarS2_rev33_attach._entry.116, ptr @skystarS2_rev33_attach._entry.118, ptr @skystarS2_rev33_attach._entry.121, ptr @skystarS2_rev33_attach._entry_ptr, ptr @skystarS2_rev33_attach._entry_ptr.117, ptr @skystarS2_rev33_attach._entry_ptr.120, ptr @skystarS2_rev33_attach._entry_ptr.123, ptr @flexcop_frontends, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @skystar2_rev2_7_s5h1420_config, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @skystar2_rev2_7_itd1000_config, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @skystar2_rev2_8_cx24123_config, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @skystar2_rev2_8_cx24113_config, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.56, ptr @.str.57, ptr @samsung_tbmu24112_config, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @samsung_tbmu24112_inittab, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @samsung_tdtc9251dh0_config, ptr @.str.72, ptr @.str.73, ptr @samsung_tdtc9251dh0_demod_init.mt352_clock_config, ptr @samsung_tdtc9251dh0_demod_init.mt352_reset, ptr @samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg, ptr @samsung_tdtc9251dh0_demod_init.mt352_agc_cfg, ptr @samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg, ptr @.str.76, ptr @.str.77, ptr @samsung_tbmv_config, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @air2pc_atsc_hd5000_config, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @air2pc_atsc_first_gen_config, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @alps_tdee4_stv0297_config, ptr @.str.97, ptr @.str.98, ptr @alps_tdee4_stv0297_inittab, ptr @.str.101, ptr @.str.102, ptr @skystar23_samsung_tbdu18132_config, ptr @.str.103, ptr @.str.104, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @skystar2_rev3_3_cx24120_config, ptr @.str.114, ptr @.str.115, ptr @.str.119, ptr @.str.122], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_frontends to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_frontend_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_frontend_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev2_7_s5h1420_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev27_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev27_attach._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev27_attach._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev27_attach._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev2_7_itd1000_config to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev27_attach._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev27_attach._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev27_attach._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev2_8_cx24123_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev28_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev2_8_cx24113_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev28_attach._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev28_attach._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev28_attach._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev28_attach._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev28_attach._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev28_attach._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_tbmu24112_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev26_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev26_attach._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_tbmu24112_inittab to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_set_voltage._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_tdtc9251dh0_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airstar_dvbt_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airstar_dvbt_attach._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_tdtc9251dh0_demod_init.mt352_clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_tdtc9251dh0_demod_init.mt352_reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_tdtc9251dh0_demod_init.mt352_agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_tbmv_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airstar_atsc2_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airstar_atsc2_attach._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @air2pc_atsc_hd5000_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airstar_atsc3_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airstar_atsc3_attach._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @air2pc_atsc_first_gen_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @airstar_atsc1_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_tdee4_stv0297_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cablestar2_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cablestar2_attach._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_tdee4_stv0297_inittab to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar23_samsung_tbdu18132_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev23_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev23_attach._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_set_tone._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystar2_rev3_3_cx24120_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystarS2_rev33_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystarS2_rev33_attach._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystarS2_rev33_attach._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skystarS2_rev33_attach._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flexcop_frontend_init(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 4
  %i2c_adap = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 1
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %entry
  %i.049 = phi i32 [ 0, %entry ], [ %inc, %for.inc.if.end_crit_edge ]
  %attach = getelementptr [10 x %struct.anon.189], ptr @flexcop_frontends, i32 0, i32 %i.049, i32 1
  %arrayidx = getelementptr [10 x %struct.anon.189], ptr @flexcop_frontends, i32 0, i32 %i.049
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dev_type, align 8
  %3 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attach, align 4
  %call = tail call i32 %4(ptr noundef %fc, ptr noundef %i2c_adap) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  %5 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe, align 8
  br i1 %tobool5.not, label %if.end7, label %do.end17

if.end7:                                          ; preds = %if.end
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end7.for.inc_crit_edge, label %if.then9

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dvb_frontend_detach(ptr noundef nonnull %6) #4
  %7 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %fe, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end7.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %dev_type, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

do.end17:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %ops) #7
  %dvb_adapter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 6
  %9 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe, align 8
  %call22 = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adapter, ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end32, label %do.end27

do.end27:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  %11 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe, align 8
  tail call void @dvb_frontend_detach(ptr noundef %12) #4
  %13 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %fe, align 8
  br label %cleanup

if.end32:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #6
  %init_state = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 1
  %14 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %init_state, align 4
  %or = or i32 %15, 4
  store i32 %or, ptr %init_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %do.end27, %for.end
  %retval.0 = phi i32 [ -22, %do.end27 ], [ 0, %if.end32 ], [ -19, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_frontend_exit(ptr nocapture noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %init_state = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 1
  %0 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %init_state, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 8
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef %3) #4
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 8
  tail call void @dvb_frontend_detach(ptr noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %init_state, align 4
  %and3 = and i32 %7, -5
  store i32 %and3, ptr %init_state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skystar2_rev27_attach(ptr noundef %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %no_base_addr = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 2
  %0 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %no_base_addr, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond134 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond134(ptr noundef nonnull @skystar2_rev2_7_s5h1420_config, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.9) #4
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe136 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %1 = ptrtoint ptr %fe136 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %fe136, align 8
  br label %fail

if.end12:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %fe, align 8
  %call14 = tail call ptr @s5h1420_get_tuner_i2c_adapter(ptr noundef nonnull %call4) #4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.fail_crit_edge, label %if.end17

if.end12.fail_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end17:                                         ; preds = %if.end12
  %3 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fe, align 8
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 1, i32 6
  %5 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sleep, align 4
  %fe_sleep = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 13
  %7 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %fe_sleep, align 8
  store ptr @flexcop_sleep, ptr %sleep, align 4
  %no_base_addr24 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 2
  %8 = ptrtoint ptr %no_base_addr24 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %no_base_addr24, align 8
  %call27 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.13) #4
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %cond.end33, label %if.end17.if.then36_crit_edge

if.end17.if.then36_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

cond.end33:                                       ; preds = %if.end17
  %call31 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.14) #4
  %call32 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.13) #4
  %tobool35.not = icmp eq ptr %call32, null
  br i1 %tobool35.not, label %do.end47, label %cond.end33.if.then36_crit_edge

cond.end33.if.then36_crit_edge:                   ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.then36:                                        ; preds = %cond.end33.if.then36_crit_edge, %if.end17.if.then36_crit_edge
  %cond34141 = phi ptr [ %call32, %cond.end33.if.then36_crit_edge ], [ %call27, %if.end17.if.then36_crit_edge ]
  %9 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe, align 8
  %i2c_adap = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1
  %call40 = tail call ptr %cond34141(ptr noundef %10, ptr noundef %i2c_adap, i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext 1, i1 noundef zeroext false) #4
  %cmp41 = icmp eq ptr %call40, null
  br i1 %cmp41, label %if.then42, label %do.end62

if.then42:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.13) #4
  br label %fail_isl

do.end47:                                         ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  br label %fail_isl

do.end62:                                         ; preds = %if.then36
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #7
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %11 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_ibi_reg, align 8
  %call65 = tail call i32 %12(ptr noundef %fc, i32 noundef 264, [2 x i32] [i32 1286, i32 -1]) #4
  %call68 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.24) #4
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %cond.end74, label %do.end62.if.then77_crit_edge

do.end62.if.then77_crit_edge:                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

cond.end74:                                       ; preds = %do.end62
  %call72 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.25) #4
  %call73 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.24) #4
  %tobool76.not = icmp eq ptr %call73, null
  br i1 %tobool76.not, label %do.end86, label %cond.end74.if.then77_crit_edge

cond.end74.if.then77_crit_edge:                   ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77

if.then77:                                        ; preds = %cond.end74.if.then77_crit_edge, %do.end62.if.then77_crit_edge
  %cond75147 = phi ptr [ %call73, %cond.end74.if.then77_crit_edge ], [ %call68, %do.end62.if.then77_crit_edge ]
  %13 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fe, align 8
  %call79 = tail call ptr %cond75147(ptr noundef %14, ptr noundef nonnull %call14, ptr noundef nonnull @skystar2_rev2_7_itd1000_config) #4
  %cmp80 = icmp eq ptr %call79, null
  br i1 %cmp80, label %if.then81, label %do.end101

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.24) #4
  br label %fail_isl

do.end86:                                         ; preds = %cond.end74
  call void @__sanitizer_cov_trace_pc() #6
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #7
  br label %fail_isl

do.end101:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #6
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #7
  br label %cleanup

fail_isl:                                         ; preds = %do.end86, %if.then81, %do.end47, %if.then42
  %.str.30.sink = phi ptr [ @.str.19, %if.then42 ], [ @.str.19, %do.end47 ], [ @.str.30, %if.then81 ], [ @.str.30, %do.end86 ]
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.30.sink) #7
  %15 = ptrtoint ptr %no_base_addr24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %no_base_addr24, align 8
  br label %fail

fail:                                             ; preds = %fail_isl, %if.end12.fail_crit_edge, %if.end7.thread
  %16 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %no_base_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end101
  %retval.0 = phi i32 [ 1, %do.end101 ], [ 0, %fail ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skystar2_rev28_attach(ptr noundef %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.35) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.36) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.35) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond115 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond115(ptr noundef nonnull @skystar2_rev2_8_cx24123_config, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.35) #4
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #7
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe117 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %0 = ptrtoint ptr %fe117 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fe117, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %1 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %fe, align 8
  %call14 = tail call ptr @cx24123_get_tuner_i2c_adapter(ptr noundef nonnull %call4) #4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call20 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #4
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %cond.end26, label %if.end17.if.then29_crit_edge

if.end17.if.then29_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

cond.end26:                                       ; preds = %if.end17
  %call24 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.40) #4
  %call25 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.39) #4
  %tobool28.not = icmp eq ptr %call25, null
  br i1 %tobool28.not, label %do.end38, label %cond.end26.if.then29_crit_edge

cond.end26.if.then29_crit_edge:                   ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

if.then29:                                        ; preds = %cond.end26.if.then29_crit_edge, %if.end17.if.then29_crit_edge
  %cond27122 = phi ptr [ %call25, %cond.end26.if.then29_crit_edge ], [ %call20, %if.end17.if.then29_crit_edge ]
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 8
  %call31 = tail call ptr %cond27122(ptr noundef %3, ptr noundef nonnull @skystar2_rev2_8_cx24113_config, ptr noundef nonnull %call14) #4
  %cmp32 = icmp eq ptr %call31, null
  br i1 %cmp32, label %if.then33, label %do.end53

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.39) #4
  br label %do.end47

do.end38:                                         ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #6
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #7
  br label %do.end47

do.end47:                                         ; preds = %do.end38, %if.then33
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #7
  br label %cleanup

do.end53:                                         ; preds = %if.then29
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #7
  %no_base_addr = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 2
  %4 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %no_base_addr, align 8
  %call58 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.13) #4
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %cond.end64, label %do.end53.if.then67_crit_edge

do.end53.if.then67_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

cond.end64:                                       ; preds = %do.end53
  %call62 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.14) #4
  %call63 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.13) #4
  %tobool66.not = icmp eq ptr %call63, null
  br i1 %tobool66.not, label %do.end78, label %cond.end64.if.then67_crit_edge

cond.end64.if.then67_crit_edge:                   ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then67

if.then67:                                        ; preds = %cond.end64.if.then67_crit_edge, %do.end53.if.then67_crit_edge
  %cond65128 = phi ptr [ %call63, %cond.end64.if.then67_crit_edge ], [ %call58, %do.end53.if.then67_crit_edge ]
  %5 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe, align 8
  %i2c_adap = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1
  %call71 = tail call ptr %cond65128(ptr noundef %6, ptr noundef %i2c_adap, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  %cmp72 = icmp eq ptr %call71, null
  br i1 %cmp72, label %if.then73, label %do.end96

if.then73:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.13) #4
  br label %do.end87

do.end78:                                         ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #6
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  br label %do.end87

do.end87:                                         ; preds = %do.end78, %if.then73
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #7
  %7 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %no_base_addr, align 8
  br label %cleanup

do.end96:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end96, %do.end87, %do.end47, %if.end12.cleanup_crit_edge, %if.end7.thread
  %retval.0 = phi i32 [ 1, %do.end96 ], [ 0, %do.end87 ], [ 0, %do.end47 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skystar2_rev26_attach(ptr nocapture noundef %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.57) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.56) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond60 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond60(ptr noundef nonnull @samsung_tbmu24112_config, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.56) #4
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #7
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe62 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %0 = ptrtoint ptr %fe62 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fe62, align 8
  br label %return

if.end12:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %1 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %fe, align 8
  %call15 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %cond.end21, label %if.end12.if.then24_crit_edge

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

cond.end21:                                       ; preds = %if.end12
  %call19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.61) #4
  %call20 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end33, label %cond.end21.if.then24_crit_edge

cond.end21.if.then24_crit_edge:                   ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %cond.end21.if.then24_crit_edge, %if.end12.if.then24_crit_edge
  %cond2267 = phi ptr [ %call20, %cond.end21.if.then24_crit_edge ], [ %call15, %if.end12.if.then24_crit_edge ]
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 8
  %call26 = tail call ptr %cond2267(ptr noundef %3, i32 noundef 97, ptr noundef %i2c, i32 noundef 17) #4
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.end40

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.60) #4
  br label %return

do.end33:                                         ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #7
  br label %return

if.end40:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 25
  %6 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @flexcop_set_voltage, ptr %set_voltage, align 4
  %7 = load ptr, ptr %fe, align 8
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %7, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sleep, align 4
  %fe_sleep = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 13
  %10 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %fe_sleep, align 8
  store ptr @flexcop_sleep, ptr %sleep, align 4
  br label %return

return:                                           ; preds = %if.end40, %do.end33, %if.then28, %if.end7.thread
  %retval.0 = phi i32 [ 1, %if.end40 ], [ 0, %if.end7.thread ], [ 0, %if.then28 ], [ 0, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airstar_dvbt_attach(ptr nocapture noundef %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.70) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.71) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.70) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond48 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond48(ptr noundef nonnull @samsung_tdtc9251dh0_config, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.70) #4
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #7
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe50 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %0 = ptrtoint ptr %fe50 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fe50, align 8
  br label %return

if.end12:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %1 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %fe, align 8
  %call15 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %cond.end21, label %if.end12.if.then24_crit_edge

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

cond.end21:                                       ; preds = %if.end12
  %call19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.61) #4
  %call20 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end33, label %cond.end21.if.then24_crit_edge

cond.end21.if.then24_crit_edge:                   ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %cond.end21.if.then24_crit_edge, %if.end12.if.then24_crit_edge
  %cond2254 = phi ptr [ %call20, %cond.end21.if.then24_crit_edge ], [ %call15, %if.end12.if.then24_crit_edge ]
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 8
  %call26 = tail call ptr %cond2254(ptr noundef %3, i32 noundef 97, ptr noundef null, i32 noundef 15) #4
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.then24.if.end36_crit_edge

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.60) #4
  br label %if.end36

do.end33:                                         ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.then28, %if.then24.if.end36_crit_edge
  %__r13.0 = phi ptr [ null, %if.then28 ], [ %call26, %if.then24.if.end36_crit_edge ], [ null, %do.end33 ]
  %tobool38 = icmp ne ptr %__r13.0, null
  %lnot.ext = zext i1 %tobool38 to i32
  br label %return

return:                                           ; preds = %if.end36, %if.end7.thread
  %retval.0 = phi i32 [ %lnot.ext, %if.end36 ], [ 0, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airstar_atsc2_attach(ptr nocapture noundef %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.76) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.77) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.76) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond48 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond48(ptr noundef nonnull @samsung_tbmv_config, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.76) #4
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #7
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe50 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %0 = ptrtoint ptr %fe50 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fe50, align 8
  br label %return

if.end12:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %1 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %fe, align 8
  %call15 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %cond.end21, label %if.end12.if.then24_crit_edge

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

cond.end21:                                       ; preds = %if.end12
  %call19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.61) #4
  %call20 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end33, label %cond.end21.if.then24_crit_edge

cond.end21.if.then24_crit_edge:                   ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %cond.end21.if.then24_crit_edge, %if.end12.if.then24_crit_edge
  %cond2254 = phi ptr [ %call20, %cond.end21.if.then24_crit_edge ], [ %call15, %if.end12.if.then24_crit_edge ]
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 8
  %call26 = tail call ptr %cond2254(ptr noundef %3, i32 noundef 97, ptr noundef null, i32 noundef 11) #4
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.then24.if.end36_crit_edge

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.60) #4
  br label %if.end36

do.end33:                                         ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.then28, %if.then24.if.end36_crit_edge
  %__r13.0 = phi ptr [ null, %if.then28 ], [ %call26, %if.then24.if.end36_crit_edge ], [ null, %do.end33 ]
  %tobool38 = icmp ne ptr %__r13.0, null
  %lnot.ext = zext i1 %tobool38 to i32
  br label %return

return:                                           ; preds = %if.end36, %if.end7.thread
  %retval.0 = phi i32 [ %lnot.ext, %if.end36 ], [ 0, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airstar_atsc3_attach(ptr nocapture noundef %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.82) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.83) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.82) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond49 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond49(ptr noundef nonnull @air2pc_atsc_hd5000_config, i8 noundef zeroext 89, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.82) #4
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #7
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe51 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %0 = ptrtoint ptr %fe51 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fe51, align 8
  br label %return

if.end12:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %1 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %fe, align 8
  %call15 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.86) #4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %cond.end21, label %if.end12.if.then24_crit_edge

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

cond.end21:                                       ; preds = %if.end12
  %call19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.87) #4
  %call20 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.86) #4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end33, label %cond.end21.if.then24_crit_edge

cond.end21.if.then24_crit_edge:                   ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %cond.end21.if.then24_crit_edge, %if.end12.if.then24_crit_edge
  %cond2255 = phi ptr [ %call20, %cond.end21.if.then24_crit_edge ], [ %call15, %if.end12.if.then24_crit_edge ]
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 8
  %call26 = tail call ptr %cond2255(ptr noundef %3, ptr noundef %i2c, i8 noundef zeroext 97, i32 noundef 64) #4
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.then24.if.end36_crit_edge

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.86) #4
  br label %if.end36

do.end33:                                         ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.then28, %if.then24.if.end36_crit_edge
  %__r13.0 = phi ptr [ null, %if.then28 ], [ %call26, %if.then24.if.end36_crit_edge ], [ null, %do.end33 ]
  %tobool38 = icmp ne ptr %__r13.0, null
  %lnot.ext = zext i1 %tobool38 to i32
  br label %return

return:                                           ; preds = %if.end36, %if.end7.thread
  %retval.0 = phi i32 [ %lnot.ext, %if.end36 ], [ 0, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @airstar_atsc1_attach(ptr nocapture noundef writeonly %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.91) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.92) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.91) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond16 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond16(ptr noundef nonnull @air2pc_atsc_first_gen_config, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.91) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %__r.0, ptr %fe, align 8
  %cmp10 = icmp ne ptr %__r.0, null
  %conv = zext i1 %cmp10 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cablestar2_attach(ptr noundef %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %no_base_addr = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 2
  %0 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %no_base_addr, align 8
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond73 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond73(ptr noundef nonnull @alps_tdee4_stv0297_config, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.95) #4
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97) #7
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe75 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %1 = ptrtoint ptr %fe75 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %fe75, align 8
  br label %fail

if.end12:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %fe, align 8
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %call4, i32 0, i32 1, i32 28
  %3 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool14.not = icmp eq ptr %4, null
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %if.then15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call i32 %4(ptr noundef nonnull %call4, i32 noundef 0) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end12.if.end21_crit_edge
  %5 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fe, align 8
  %i2c_gate_ctrl24 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %i2c_gate_ctrl24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %i2c_gate_ctrl24, align 4
  %call27 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %cond.end33, label %if.end21.if.then36_crit_edge

if.end21.if.then36_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

cond.end33:                                       ; preds = %if.end21
  %call31 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.61) #4
  %call32 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool35.not = icmp eq ptr %call32, null
  br i1 %tobool35.not, label %do.end47, label %cond.end33.if.then36_crit_edge

cond.end33.if.then36_crit_edge:                   ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then36

if.then36:                                        ; preds = %cond.end33.if.then36_crit_edge, %if.end21.if.then36_crit_edge
  %cond3479 = phi ptr [ %call32, %cond.end33.if.then36_crit_edge ], [ %call27, %if.end21.if.then36_crit_edge ]
  %8 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe, align 8
  %i2c_adap = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1
  %call40 = tail call ptr %cond3479(ptr noundef %9, i32 noundef 97, ptr noundef %i2c_adap, i32 noundef 18) #4
  %cmp41 = icmp eq ptr %call40, null
  br i1 %cmp41, label %if.then42, label %if.then36.return_crit_edge

if.then36.return_crit_edge:                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then42:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.60) #4
  br label %fail

do.end47:                                         ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #7
  br label %fail

fail:                                             ; preds = %do.end47, %if.then42, %if.end7.thread
  %10 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %no_base_addr, align 8
  br label %return

return:                                           ; preds = %fail, %if.then36.return_crit_edge
  %retval.0 = phi i32 [ 0, %fail ], [ 1, %if.then36.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skystar2_rev23_attach(ptr nocapture noundef %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.101) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.102) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.101) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond60 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond60(ptr noundef nonnull @skystar23_samsung_tbdu18132_config, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.101) #4
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #7
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe62 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %0 = ptrtoint ptr %fe62 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fe62, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %1 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %fe, align 8
  %call15 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %cond.end21, label %if.end12.if.then24_crit_edge

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

cond.end21:                                       ; preds = %if.end12
  %call19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.61) #4
  %call20 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.60) #4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end33, label %cond.end21.if.then24_crit_edge

cond.end21.if.then24_crit_edge:                   ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %cond.end21.if.then24_crit_edge, %if.end12.if.then24_crit_edge
  %cond2267 = phi ptr [ %call20, %cond.end21.if.then24_crit_edge ], [ %call15, %if.end12.if.then24_crit_edge ]
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 8
  %call26 = tail call ptr %cond2267(ptr noundef %3, i32 noundef 97, ptr noundef %i2c, i32 noundef 16) #4
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.end40

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.60) #4
  br label %cleanup

do.end33:                                         ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #7
  br label %cleanup

if.end40:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 8
  %diseqc_send_master_cmd = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 21
  %6 = ptrtoint ptr %diseqc_send_master_cmd to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @flexcop_diseqc_send_master_cmd, ptr %diseqc_send_master_cmd, align 4
  %diseqc_send_burst = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 23
  %7 = ptrtoint ptr %diseqc_send_burst to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @flexcop_diseqc_send_burst, ptr %diseqc_send_burst, align 4
  %set_tone = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 24
  %8 = ptrtoint ptr %set_tone to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @flexcop_set_tone, ptr %set_tone, align 4
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 25
  %9 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @flexcop_set_voltage, ptr %set_voltage, align 4
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sleep, align 4
  %fe_sleep = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 13
  %12 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %fe_sleep, align 8
  store ptr @flexcop_sleep, ptr %sleep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end33, %if.then28, %if.end7.thread
  %retval.0 = phi i32 [ 1, %if.end40 ], [ 0, %if.end7.thread ], [ 0, %if.then28 ], [ 0, %do.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skystarS2_rev33_attach(ptr noundef %fc, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.112) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.113) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.112) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond73 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %call4 = tail call ptr %cond73(ptr noundef nonnull @skystar2_rev3_3_cx24120_config, ptr noundef %i2c) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.112) #4
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #7
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe75 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %0 = ptrtoint ptr %fe75 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fe75, align 8
  br label %return

if.end12:                                         ; preds = %if.then
  %fe = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 7
  %1 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %fe, align 8
  %dev_type = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 4
  %2 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %dev_type, align 8
  %no_base_addr = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 2
  %3 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %no_base_addr, align 8
  %call15 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.13) #4
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %cond.end21, label %if.end12.if.then24_crit_edge

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

cond.end21:                                       ; preds = %if.end12
  %call19 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.14) #4
  %call20 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.13) #4
  %tobool23.not = icmp eq ptr %call20, null
  br i1 %tobool23.not, label %do.end35, label %cond.end21.if.then24_crit_edge

cond.end21.if.then24_crit_edge:                   ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %cond.end21.if.then24_crit_edge, %if.end12.if.then24_crit_edge
  %cond2279 = phi ptr [ %call20, %cond.end21.if.then24_crit_edge ], [ %call15, %if.end12.if.then24_crit_edge ]
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 8
  %i2c_adap = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1
  %call28 = tail call ptr %cond2279(ptr noundef %5, ptr noundef %i2c_adap, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %if.then30, label %do.end53

if.then30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.13) #4
  br label %do.end44

do.end35:                                         ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  br label %do.end44

do.end44:                                         ; preds = %do.end35, %if.then30
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #7
  %6 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %no_base_addr, align 8
  br label %return

do.end53:                                         ; preds = %if.then24
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #7
  %has_32_hw_pid_filter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 2
  %7 = ptrtoint ptr %has_32_hw_pid_filter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %has_32_hw_pid_filter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool56.not = icmp eq i32 %8, 0
  br i1 %tobool56.not, label %do.end53.return_crit_edge, label %if.then57

do.end53.return_crit_edge:                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then57:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #6
  %skip_6_hw_pid_filter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 21
  %9 = ptrtoint ptr %skip_6_hw_pid_filter to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %skip_6_hw_pid_filter, align 8
  br label %return

return:                                           ; preds = %if.then57, %do.end53.return_crit_edge, %do.end44, %if.end7.thread
  %retval.0 = phi i32 [ 0, %do.end44 ], [ 1, %if.then57 ], [ 1, %do.end53.return_crit_edge ], [ 0, %if.end7.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @s5h1420_get_tuner_i2c_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_sleep(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %fe_sleep = getelementptr inbounds %struct.flexcop_device, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe_sleep, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %5(ptr noundef %fe) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx24123_get_tuner_i2c_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx24113_agc_callback(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %tmp4 = alloca %union.flexcop_ibi_value, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %4 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %voltage) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp4) #4
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_ibi_reg, align 4
  call void %6(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp4, ptr noundef %3, i32 noundef 516) #4
  %7 = ptrtoint ptr %tmp4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %v.sroa.0.0.copyload26 = load i32, ptr %tmp4, align 4
  %v.sroa.15.0.tmp4.sroa_idx = getelementptr inbounds i8, ptr %tmp4, i32 4
  %8 = ptrtoint ptr %v.sroa.15.0.tmp4.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %v.sroa.15.0.copyload27 = load i32, ptr %v.sroa.15.0.tmp4.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp4) #4
  %9 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %do.end21 [
    i32 2, label %sw.bb
    i32 0, label %sw.bb5
    i32 1, label %sw.bb12
  ]

sw.bb:                                            ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set = or i32 %v.sroa.0.0.copyload26, 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear10 = and i32 %v.sroa.0.0.copyload26, -6
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  %bf.clear17 = and i32 %v.sroa.0.0.copyload26, -6
  %bf.set18 = or i32 %bf.clear17, 4
  br label %sw.epilog

do.end21:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb5, %sw.bb
  %v.sroa.0.0 = phi i32 [ %bf.set18, %sw.bb12 ], [ %bf.clear10, %sw.bb5 ], [ %bf.set, %sw.bb ]
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %3, i32 0, i32 23
  %10 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_ibi_reg, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %v.sroa.0.0, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 %v.sroa.15.0.copyload27, 1
  %call24 = call i32 %11(ptr noundef %3, i32 noundef 516, [2 x i32] %.fca.1.insert) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end21
  %retval.0 = phi i32 [ -22, %do.end21 ], [ %call24, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_tbmu24112_set_symbol_rate(ptr noundef %fe, i32 noundef %srate, i32 noundef %ratio) #0 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_tdtc9251dh0_demod_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @samsung_tdtc9251dh0_demod_init.mt352_clock_config, i32 noundef 3) #4
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496000) #4
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i10 = icmp eq ptr %4, null
  br i1 %tobool.not.i10, label %mt352_write.exit.mt352_write.exit28_crit_edge, label %mt352_write.exit13

mt352_write.exit.mt352_write.exit28_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt352_write.exit28

mt352_write.exit13:                               ; preds = %mt352_write.exit
  %call.i11 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @samsung_tdtc9251dh0_demod_init.mt352_reset, i32 noundef 2) #4
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i15 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i15, label %mt352_write.exit13.mt352_write.exit28_crit_edge, label %mt352_write.exit18

mt352_write.exit13.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit13
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt352_write.exit28

mt352_write.exit18:                               ; preds = %mt352_write.exit13
  %call.i16 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg, i32 noundef 2) #4
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr30 = load ptr, ptr %write.i, align 4
  %tobool.not.i20 = icmp eq ptr %.pr30, null
  br i1 %tobool.not.i20, label %mt352_write.exit18.mt352_write.exit28_crit_edge, label %mt352_write.exit23

mt352_write.exit18.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit18
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt352_write.exit28

mt352_write.exit23:                               ; preds = %mt352_write.exit18
  %call.i21 = tail call i32 %.pr30(ptr noundef %fe, ptr noundef nonnull @samsung_tdtc9251dh0_demod_init.mt352_agc_cfg, i32 noundef 3) #4
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr32.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i25 = icmp eq ptr %.pr32.pr, null
  br i1 %tobool.not.i25, label %mt352_write.exit23.mt352_write.exit28_crit_edge, label %if.then.i27

mt352_write.exit23.mt352_write.exit28_crit_edge:  ; preds = %mt352_write.exit23
  call void @__sanitizer_cov_trace_pc() #6
  br label %mt352_write.exit28

if.then.i27:                                      ; preds = %mt352_write.exit23
  call void @__sanitizer_cov_trace_pc() #6
  %call.i26 = tail call i32 %.pr32.pr(ptr noundef %fe, ptr noundef nonnull @samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg, i32 noundef 2) #4
  br label %mt352_write.exit28

mt352_write.exit28:                               ; preds = %if.then.i27, %mt352_write.exit23.mt352_write.exit28_crit_edge, %mt352_write.exit18.mt352_write.exit28_crit_edge, %mt352_write.exit13.mt352_write.exit28_crit_edge, %mt352_write.exit.mt352_write.exit28_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_fe_request_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %name, ptr noundef %5) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_diseqc_send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %1 to i32
  tail call fastcc void @flexcop_send_diseqc_msg(ptr noundef %fe, i32 noundef %conv, ptr noundef %cmd, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %minicmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @flexcop_send_diseqc_msg(ptr noundef %fe, i32 noundef 0, ptr noundef null, i32 noundef %minicmd)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %4 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %tone) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %tone, label %do.end7 [
    i32 0, label %do.end3.sw.epilog_crit_edge
    i32 1, label %6
  ]

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110) #7
  br label %cleanup

6:                                                ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %6, %do.end3.sw.epilog_crit_edge
  %ax.029 = phi i32 [ 1090486272, %6 ], [ 1090486783, %do.end3.sw.epilog_crit_edge ]
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %3, i32 0, i32 23
  %7 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_ibi_reg, align 8
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %ax.029, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 -1, 1
  %call20 = tail call i32 %8(ptr noundef %3, i32 noundef 512, [2 x i32] %.fca.1.insert) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ %call20, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flexcop_send_diseqc_msg(ptr nocapture noundef readonly %fe, i32 noundef %len, ptr nocapture noundef readonly %msg, i32 noundef %burst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %4 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.flexcop_set_tone.exit_crit_edge, label %do.end.i

entry.flexcop_set_tone.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %flexcop_set_tone.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 1) #7
  br label %flexcop_set_tone.exit

flexcop_set_tone.exit:                            ; preds = %do.end.i, %entry.flexcop_set_tone.exit_crit_edge
  %write_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %3, i32 0, i32 23
  %5 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_ibi_reg.i, align 8
  %call20.i = tail call i32 %6(ptr noundef %3, i32 noundef 512, [2 x i32] [i32 1090486272, i32 -1]) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp20 = icmp sgt i32 %len, 0
  br i1 %cmp20, label %flexcop_set_tone.exit.for.body_crit_edge, label %flexcop_set_tone.exit.while.cond2.preheader_crit_edge

flexcop_set_tone.exit.while.cond2.preheader_crit_edge: ; preds = %flexcop_set_tone.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond2.preheader

flexcop_set_tone.exit.for.body_crit_edge:         ; preds = %flexcop_set_tone.exit
  br label %for.body

while.cond2.preheader:                            ; preds = %for.body.while.cond2.preheader_crit_edge, %flexcop_set_tone.exit.while.cond2.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #4
  %39 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %burst, label %if.then10 [
    i32 -1, label %while.cond2.preheader.if.end19_crit_edge
    i32 0, label %if.else
  ]

while.cond2.preheader.if.end19_crit_edge:         ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

for.body:                                         ; preds = %for.body.for.body_crit_edge, %flexcop_set_tone.exit.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %flexcop_set_tone.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %msg, i32 %i.021
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %41 to i32
  tail call fastcc void @flexcop_diseqc_send_byte(ptr noundef %fe, i32 noundef %conv)
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.while.cond2.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.while.cond2.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond2.preheader

if.then10:                                        ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @flexcop_diseqc_send_byte(ptr noundef %fe, i32 noundef 255)
  br label %if.end

if.else:                                          ; preds = %while.cond2.preheader
  %42 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dvb.i, align 4
  %priv.i2 = getelementptr inbounds %struct.dvb_adapter, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %priv.i2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv.i2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %46 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i3 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i4 = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i4, label %if.else.flexcop_set_tone.exit9_crit_edge, label %do.end.i6

if.else.flexcop_set_tone.exit9_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %flexcop_set_tone.exit9

do.end.i6:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call.i5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 0) #7
  br label %flexcop_set_tone.exit9

flexcop_set_tone.exit9:                           ; preds = %do.end.i6, %if.else.flexcop_set_tone.exit9_crit_edge
  %write_ibi_reg.i7 = getelementptr inbounds %struct.flexcop_device, ptr %45, i32 0, i32 23
  %47 = ptrtoint ptr %write_ibi_reg.i7 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write_ibi_reg.i7, align 8
  %call20.i8 = tail call i32 %48(ptr noundef %45, i32 noundef 512, [2 x i32] [i32 1090486783, i32 -1]) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 107374000) #4
  %62 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dvb.i, align 4
  %priv.i11 = getelementptr inbounds %struct.dvb_adapter, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %priv.i11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %priv.i11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %66 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i12 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %flexcop_set_tone.exit9.flexcop_set_tone.exit18_crit_edge, label %do.end.i15

flexcop_set_tone.exit9.flexcop_set_tone.exit18_crit_edge: ; preds = %flexcop_set_tone.exit9
  call void @__sanitizer_cov_trace_pc() #6
  br label %flexcop_set_tone.exit18

do.end.i15:                                       ; preds = %flexcop_set_tone.exit9
  call void @__sanitizer_cov_trace_pc() #6
  %call.i14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 1) #7
  br label %flexcop_set_tone.exit18

flexcop_set_tone.exit18:                          ; preds = %do.end.i15, %flexcop_set_tone.exit9.flexcop_set_tone.exit18_crit_edge
  %write_ibi_reg.i16 = getelementptr inbounds %struct.flexcop_device, ptr %65, i32 0, i32 23
  %67 = ptrtoint ptr %write_ibi_reg.i16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_ibi_reg.i16, align 8
  %call20.i17 = tail call i32 %68(ptr noundef %65, i32 noundef 512, [2 x i32] [i32 1090486272, i32 -1]) #4
  br label %if.end

if.end:                                           ; preds = %flexcop_set_tone.exit18, %if.then10
  tail call void @msleep(i32 noundef 20) #4
  br label %if.end19

if.end19:                                         ; preds = %if.end, %while.cond2.preheader.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flexcop_diseqc_send_byte(ptr nocapture noundef readonly %fe, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %flexcop_set_tone.exit43.i.for.body_crit_edge, %entry
  %par.036 = phi i32 [ 1, %entry ], [ %xor, %flexcop_set_tone.exit43.i.for.body_crit_edge ]
  %i.035 = phi i32 [ 7, %entry ], [ %dec, %flexcop_set_tone.exit43.i.for.body_crit_edge ]
  %shr6 = lshr i32 %data, %i.035
  %and = and i32 %shr6, 1
  %xor = xor i32 %and, %par.036
  %0 = ptrtoint ptr %dvb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %4 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.flexcop_set_tone.exit.i_crit_edge, label %do.end.i.i

for.body.flexcop_set_tone.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %flexcop_set_tone.exit.i

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 0) #7
  br label %flexcop_set_tone.exit.i

flexcop_set_tone.exit.i:                          ; preds = %do.end.i.i, %for.body.flexcop_set_tone.exit.i_crit_edge
  %write_ibi_reg.i.i = getelementptr inbounds %struct.flexcop_device, ptr %3, i32 0, i32 23
  %5 = ptrtoint ptr %write_ibi_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_ibi_reg.i.i, align 8
  %call20.i.i = tail call i32 %6(ptr noundef %3, i32 noundef 512, [2 x i32] [i32 1090486783, i32 -1]) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i = icmp eq i32 %and, 0
  %cond.i = select i1 %tobool.not.i, i32 1000, i32 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %cond.i) #4
  %8 = ptrtoint ptr %dvb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb.i.i, align 4
  %priv.i36.i = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv.i36.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i36.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %12 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i37.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i)
  %tobool.not.i38.i = icmp eq i32 %and.i37.i, 0
  br i1 %tobool.not.i38.i, label %flexcop_set_tone.exit.i.flexcop_set_tone.exit43.i_crit_edge, label %do.end.i40.i

flexcop_set_tone.exit.i.flexcop_set_tone.exit43.i_crit_edge: ; preds = %flexcop_set_tone.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %flexcop_set_tone.exit43.i

do.end.i40.i:                                     ; preds = %flexcop_set_tone.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 1) #7
  br label %flexcop_set_tone.exit43.i

flexcop_set_tone.exit43.i:                        ; preds = %do.end.i40.i, %flexcop_set_tone.exit.i.flexcop_set_tone.exit43.i_crit_edge
  %write_ibi_reg.i41.i = getelementptr inbounds %struct.flexcop_device, ptr %11, i32 0, i32 23
  %13 = ptrtoint ptr %write_ibi_reg.i41.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_ibi_reg.i41.i, align 8
  %call20.i42.i = tail call i32 %14(ptr noundef %11, i32 noundef 512, [2 x i32] [i32 1090486272, i32 -1]) #4
  %cond12.i = select i1 %tobool.not.i, i32 500, i32 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %cond12.i) #4
  %dec = add nsw i32 %i.035, -1
  %cmp.not = icmp eq i32 %i.035, 0
  br i1 %cmp.not, label %for.end, label %flexcop_set_tone.exit43.i.for.body_crit_edge

flexcop_set_tone.exit43.i.for.body_crit_edge:     ; preds = %flexcop_set_tone.exit43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %flexcop_set_tone.exit43.i
  %16 = ptrtoint ptr %dvb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dvb.i.i, align 4
  %priv.i.i8 = getelementptr inbounds %struct.dvb_adapter, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %priv.i.i8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i.i8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %20 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i.i9 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.not.i.i10, label %for.end.flexcop_set_tone.exit.i17_crit_edge, label %do.end.i.i12

for.end.flexcop_set_tone.exit.i17_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %flexcop_set_tone.exit.i17

do.end.i.i12:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 0) #7
  br label %flexcop_set_tone.exit.i17

flexcop_set_tone.exit.i17:                        ; preds = %do.end.i.i12, %for.end.flexcop_set_tone.exit.i17_crit_edge
  %write_ibi_reg.i.i13 = getelementptr inbounds %struct.flexcop_device, ptr %19, i32 0, i32 23
  %21 = ptrtoint ptr %write_ibi_reg.i.i13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_ibi_reg.i.i13, align 8
  %call20.i.i14 = tail call i32 %22(ptr noundef %19, i32 noundef 512, [2 x i32] [i32 1090486783, i32 -1]) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool.not.i15 = icmp eq i32 %xor, 0
  %cond.i16 = select i1 %tobool.not.i15, i32 1000, i32 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %23(i32 noundef %cond.i16) #4
  %24 = ptrtoint ptr %dvb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dvb.i.i, align 4
  %priv.i36.i21 = getelementptr inbounds %struct.dvb_adapter, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %priv.i36.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv.i36.i21, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %28 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i37.i22 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i22)
  %tobool.not.i38.i23 = icmp eq i32 %and.i37.i22, 0
  br i1 %tobool.not.i38.i23, label %flexcop_set_tone.exit.i17.flexcop_set_tone.exit43.i30_crit_edge, label %do.end.i40.i26

flexcop_set_tone.exit.i17.flexcop_set_tone.exit43.i30_crit_edge: ; preds = %flexcop_set_tone.exit.i17
  call void @__sanitizer_cov_trace_pc() #6
  br label %flexcop_set_tone.exit43.i30

do.end.i40.i26:                                   ; preds = %flexcop_set_tone.exit.i17
  call void @__sanitizer_cov_trace_pc() #6
  %call.i39.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef 1) #7
  br label %flexcop_set_tone.exit43.i30

flexcop_set_tone.exit43.i30:                      ; preds = %do.end.i40.i26, %flexcop_set_tone.exit.i17.flexcop_set_tone.exit43.i30_crit_edge
  %write_ibi_reg.i41.i27 = getelementptr inbounds %struct.flexcop_device, ptr %27, i32 0, i32 23
  %29 = ptrtoint ptr %write_ibi_reg.i41.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_ibi_reg.i41.i27, align 8
  %call20.i42.i28 = tail call i32 %30(ptr noundef %27, i32 noundef 512, [2 x i32] [i32 1090486272, i32 -1]) #4
  %cond12.i29 = select i1 %tobool.not.i15, i32 500, i32 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %cond12.i29) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !87, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !121, !122, !124, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !143, !144, !146, !147, !149, !151, !152, !153, !154, !155, !156, !158, !159, !160, !161, !162, !164, !166, !167, !168, !169, !170, !171, !173, !175, !176, !177, !178, !179, !180, !182, !183, !185, !187, !189, !190, !191, !192, !193, !194, !196, !197, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !214, !215, !217, !218, !220, !221, !222, !224, !225, !226}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 699, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @flexcop_frontend_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @flexcop_frontend_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 703, i32 2}
!8 = !{ptr @flexcop_frontend_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @flexcop_frontend_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 705, i32 3}
!12 = !{ptr @flexcop_frontend_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @flexcop_frontend_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @flexcop_frontends, !15, !"flexcop_frontends", i1 false, i1 false}
!15 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 667, i32 3}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 325, i32 11}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @skystar2_rev27_attach._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @skystar2_rev27_attach._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 339, i32 7}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @skystar2_rev27_attach._entry.15, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @skystar2_rev27_attach._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 341, i32 3}
!31 = !{ptr @skystar2_rev27_attach._entry.18, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @skystar2_rev27_attach._entry_ptr.20, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 344, i32 2}
!35 = !{ptr @skystar2_rev27_attach._entry.21, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @skystar2_rev27_attach._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 349, i32 7}
!39 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.27, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @skystar2_rev27_attach._entry.26, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @skystar2_rev27_attach._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 351, i32 3}
!45 = !{ptr @skystar2_rev27_attach._entry.29, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @skystar2_rev27_attach._entry_ptr.31, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 355, i32 2}
!49 = !{ptr @skystar2_rev27_attach._entry.32, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @skystar2_rev27_attach._entry_ptr.34, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @skystar2_rev2_7_s5h1420_config, !52, !"skystar2_rev2_7_s5h1420_config", i1 false, i1 false}
!52 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 306, i32 30}
!53 = !{ptr @skystar2_rev2_7_itd1000_config, !54, !"skystar2_rev2_7_itd1000_config", i1 false, i1 false}
!54 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 313, i32 30}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 388, i32 11}
!57 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.37, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.38, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @skystar2_rev28_attach._entry, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @skystar2_rev28_attach._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 397, i32 7}
!64 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.42, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @skystar2_rev28_attach._entry.41, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @skystar2_rev28_attach._entry_ptr.43, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.45, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 399, i32 3}
!70 = !{ptr @skystar2_rev28_attach._entry.44, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @skystar2_rev28_attach._entry_ptr.46, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 402, i32 2}
!74 = !{ptr @skystar2_rev28_attach._entry.47, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @skystar2_rev28_attach._entry_ptr.49, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @skystar2_rev28_attach._entry.50, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 405, i32 7}
!78 = !{ptr @skystar2_rev28_attach._entry_ptr.51, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @skystar2_rev28_attach._entry.52, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 407, i32 3}
!81 = !{ptr @skystar2_rev28_attach._entry_ptr.53, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @skystar2_rev28_attach._entry.54, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 411, i32 2}
!84 = !{ptr @skystar2_rev28_attach._entry_ptr.55, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @skystar2_rev2_8_cx24123_config, !86, !"skystar2_rev2_8_cx24123_config", i1 false, i1 false}
!86 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 372, i32 30}
!87 = !{ptr @skystar2_rev2_8_cx24113_config, !88, !"skystar2_rev2_8_cx24113_config", i1 false, i1 false}
!88 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 378, i32 36}
!89 = !{ptr @.str.56, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 286, i32 11}
!91 = !{ptr @.str.57, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.58, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.59, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @skystar2_rev26_attach._entry, !90, !"_entry", i1 false, i1 false}
!95 = !{ptr @skystar2_rev26_attach._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.60, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 290, i32 7}
!98 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.63, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @skystar2_rev26_attach._entry.62, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @skystar2_rev26_attach._entry_ptr.64, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @samsung_tbmu24112_config, !103, !"samsung_tbmu24112_config", i1 false, i1 false}
!103 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 271, i32 30}
!104 = !{ptr @samsung_tbmu24112_inittab, !105, !"samsung_tbmu24112_inittab", i1 false, i1 false}
!105 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 226, i32 11}
!106 = !{ptr @.str.65, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 47, i32 2}
!108 = !{ptr @.str.66, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @flexcop_set_voltage._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @flexcop_set_voltage._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.68, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 63, i32 3}
!113 = !{ptr @flexcop_set_voltage._entry.67, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @flexcop_set_voltage._entry_ptr.69, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.70, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 447, i32 11}
!117 = !{ptr @.str.71, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.72, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.73, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @airstar_dvbt_attach._entry, !116, !"_entry", i1 false, i1 false}
!121 = !{ptr @airstar_dvbt_attach._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @airstar_dvbt_attach._entry.74, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 451, i32 11}
!124 = !{ptr @airstar_dvbt_attach._entry_ptr.75, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @samsung_tdtc9251dh0_config, !126, !"samsung_tdtc9251dh0_config", i1 false, i1 false}
!126 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 439, i32 28}
!127 = !{ptr @samsung_tdtc9251dh0_demod_init.mt352_clock_config, !128, !"mt352_clock_config", i1 false, i1 false}
!128 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 424, i32 12}
!129 = !{ptr @samsung_tdtc9251dh0_demod_init.mt352_reset, !130, !"mt352_reset", i1 false, i1 false}
!130 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 425, i32 12}
!131 = !{ptr @samsung_tdtc9251dh0_demod_init.mt352_adc_ctl_1_cfg, !132, !"mt352_adc_ctl_1_cfg", i1 false, i1 false}
!132 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 426, i32 12}
!133 = !{ptr @samsung_tdtc9251dh0_demod_init.mt352_agc_cfg, !134, !"mt352_agc_cfg", i1 false, i1 false}
!134 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 427, i32 12}
!135 = !{ptr @samsung_tdtc9251dh0_demod_init.mt352_capt_range_cfg, !136, !"mt352_capt_range_cfg", i1 false, i1 false}
!136 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 428, i32 12}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 484, i32 11}
!139 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.78, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.79, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @airstar_atsc2_attach._entry, !138, !"_entry", i1 false, i1 false}
!143 = !{ptr @airstar_atsc2_attach._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @airstar_atsc2_attach._entry.80, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 488, i32 11}
!146 = !{ptr @airstar_atsc2_attach._entry_ptr.81, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @samsung_tbmv_config, !148, !"samsung_tbmv_config", i1 false, i1 false}
!148 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 477, i32 36}
!149 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 506, i32 11}
!151 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.85, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @airstar_atsc3_attach._entry, !150, !"_entry", i1 false, i1 false}
!155 = !{ptr @airstar_atsc3_attach._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 511, i32 11}
!158 = !{ptr @.str.87, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.89, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @airstar_atsc3_attach._entry.88, !157, !"_entry", i1 false, i1 false}
!161 = !{ptr @airstar_atsc3_attach._entry_ptr.90, !157, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @air2pc_atsc_hd5000_config, !163, !"air2pc_atsc_hd5000_config", i1 false, i1 false}
!163 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 497, i32 31}
!164 = !{ptr @.str.91, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 468, i32 11}
!166 = !{ptr @.str.92, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.94, !165, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @airstar_atsc1_attach._entry, !165, !"_entry", i1 false, i1 false}
!170 = !{ptr @airstar_atsc1_attach._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @air2pc_atsc_first_gen_config, !172, !"air2pc_atsc_first_gen_config", i1 false, i1 false}
!172 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 460, i32 30}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 602, i32 11}
!175 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.97, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.98, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @cablestar2_attach._entry, !174, !"_entry", i1 false, i1 false}
!179 = !{ptr @cablestar2_attach._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @cablestar2_attach._entry.99, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 612, i32 7}
!182 = !{ptr @cablestar2_attach._entry_ptr.100, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @alps_tdee4_stv0297_config, !184, !"alps_tdee4_stv0297_config", i1 false, i1 false}
!184 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 593, i32 30}
!185 = !{ptr @alps_tdee4_stv0297_inittab, !186, !"alps_tdee4_stv0297_inittab", i1 false, i1 false}
!186 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 520, i32 11}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 175, i32 11}
!189 = !{ptr @.str.102, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @skystar2_rev23_attach._entry, !188, !"_entry", i1 false, i1 false}
!193 = !{ptr @skystar2_rev23_attach._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @skystar2_rev23_attach._entry.105, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 179, i32 7}
!196 = !{ptr @skystar2_rev23_attach._entry_ptr.106, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @skystar23_samsung_tbdu18132_config, !198, !"skystar23_samsung_tbdu18132_config", i1 false, i1 false}
!198 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 166, i32 28}
!199 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 89, i32 2}
!201 = !{ptr @.str.108, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @flexcop_set_tone._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @flexcop_set_tone._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.110, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 99, i32 3}
!206 = !{ptr @flexcop_set_tone._entry.109, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @flexcop_set_tone._entry_ptr.111, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.112, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 640, i32 11}
!210 = !{ptr @.str.113, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.115, !209, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @skystarS2_rev33_attach._entry, !209, !"_entry", i1 false, i1 false}
!214 = !{ptr @skystarS2_rev33_attach._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @skystarS2_rev33_attach._entry.116, !216, !"_entry", i1 false, i1 false}
!216 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 647, i32 7}
!217 = !{ptr @skystarS2_rev33_attach._entry_ptr.117, !216, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.119, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 649, i32 3}
!220 = !{ptr @skystarS2_rev33_attach._entry.118, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @skystarS2_rev33_attach._entry_ptr.120, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.122, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 653, i32 2}
!224 = !{ptr @skystarS2_rev33_attach._entry.121, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @skystarS2_rev33_attach._entry_ptr.123, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @skystar2_rev3_3_cx24120_config, !227, !"skystar2_rev3_3_cx24120_config", i1 false, i1 false}
!227 = !{!"../drivers/media/common/b2c2/flexcop-fe-tuner.c", i32 629, i32 36}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 1, !"min_enum_size", i32 4}
!230 = !{i32 8, !"branch-target-enforcement", i32 0}
!231 = !{i32 8, !"sign-return-address", i32 0}
!232 = !{i32 8, !"sign-return-address-all", i32 0}
!233 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!234 = !{i32 7, !"uwtable", i32 1}
!235 = !{i32 7, !"frame-pointer", i32 2}
!236 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
