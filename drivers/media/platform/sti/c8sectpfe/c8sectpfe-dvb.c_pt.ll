; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c_pt.bc'
source_filename = "../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.stv0367_config = type { i8, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tda18212_config = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.stv090x_config = type { i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stv6110x_config = type { i8, i32, i8, ptr, ptr }
%struct.channel_info = type { i32, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.completion, %struct.tasklet_struct, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.139, i32 }
%struct.atomic_t = type { i32 }
%union.anon.139 = type { ptr }
%struct.c8sectpfe = type { [7 x %struct.stdemux], %struct.mutex, %struct.dvb_adapter, ptr, i32, i32 }
%struct.stdemux = type { %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stv6110x_devctl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__const.c8sectpfe_frontend_attach.tda18212_info = private unnamed_addr constant %struct.i2c_board_info { [20 x i8] c"tda18212\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 96, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv0367ter_attach\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"symbol:stv0367ter_attach\00", [39 x i8] zeroinitializer }, align 32
@stv0367_tda18212_config = internal global { [3 x %struct.stv0367_config], [56 x i8] } { [3 x %struct.stv0367_config] [%struct.stv0367_config { i8 28, i32 16000000, i32 4500, i32 0, i32 1, i32 0 }, %struct.stv0367_config { i8 29, i32 16000000, i32 4500, i32 0, i32 1, i32 0 }, %struct.stv0367_config { i8 30, i32 16000000, i32 4500, i32 0, i32 1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013DVB: Unable to find symbol stv0367ter_attach()\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"c8sectpfe_frontend_attach\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c\00", [43 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr = internal global ptr @c8sectpfe_frontend_attach._entry, section ".printk_index", align 4
@c8sectpfe_frontend_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.6 = internal global ptr @c8sectpfe_frontend_attach._entry.5, section ".printk_index", align 4
@c8sectpfe_frontend_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.8 = internal global ptr @c8sectpfe_frontend_attach._entry.7, section ".printk_index", align 4
@c8sectpfe_frontend_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 143, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: stv0367ter_attach failed for NIM card %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.13 = internal global ptr @c8sectpfe_frontend_attach._entry.9, section ".printk_index", align 4
@c8sectpfe_frontend_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 159, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: devm_kzalloc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.16 = internal global ptr @c8sectpfe_frontend_attach._entry.14, section ".printk_index", align 4
@tda18212_conf = internal constant { %struct.tda18212_config, [40 x i8] } { %struct.tda18212_config { i16 4150, i16 4150, i16 4500, i16 0, i16 0, i16 0, i16 0, i16 5000, i16 0, i16 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda18212\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv090x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stv090x_attach\00", [42 x i8] zeroinitializer }, align 32
@stv090x_config = internal global { %struct.stv090x_config, [48 x i8] } { %struct.stv090x_config { i32 0, i32 1, i32 2, i32 0, i32 16000000, i8 105, i8 2, i8 2, i32 0, i32 0, i8 0, i32 2, i8 0, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stv090x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.22 = internal global ptr @c8sectpfe_frontend_attach._entry.20, section ".printk_index", align 4
@c8sectpfe_frontend_attach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 195, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: stv090x_attach failed\0A\09for NIM card %s\0A\00", [52 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.25 = internal global ptr @c8sectpfe_frontend_attach._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv6110x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:stv6110x_attach\00", [41 x i8] zeroinitializer }, align 32
@stv6110x_config = internal global { %struct.stv6110x_config, [44 x i8] } { %struct.stv6110x_config { i8 96, i32 16000000, i8 0, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol stv6110x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.30 = internal global ptr @c8sectpfe_frontend_attach._entry.28, section ".printk_index", align 4
@c8sectpfe_frontend_attach._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 204, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: stv6110x_attach failed for NIM card %s\0A\00", [52 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.33 = internal global ptr @c8sectpfe_frontend_attach._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbh24_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbh24_attach\00", [43 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbh24_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.38 = internal global ptr @c8sectpfe_frontend_attach._entry.36, section ".printk_index", align 4
@c8sectpfe_frontend_attach._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 225, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: DVB frontend card %s not yet supported\0A\00", [52 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.41 = internal global ptr @c8sectpfe_frontend_attach._entry.39, section ".printk_index", align 4
@c8sectpfe_frontend_attach._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.3, ptr @.str.4, i32 233, ptr @.str.44, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DVB frontend card %s successfully attached\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@c8sectpfe_frontend_attach._entry_ptr.45 = internal global ptr @c8sectpfe_frontend_attach._entry.42, section ".printk_index", align 4
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STV0367_TDA18212_NIMA_1\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STV0367_TDA18212_NIMA_2\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STV0367_TDA18212_NIMB_1\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STV0367_TDA18212_NIMB_2\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STV0903_6110_LNB24_NIMA\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"STV0903_6110_LNB24_NIMB\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown dvb frontend card\00", [38 x i8] zeroinitializer }, align 32
@switch.table.c8sectpfe_frontend_attach = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [40 x i8] zeroinitializer }, align 32
@switch.table.c8sectpfe_frontend_attach.53 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [40 x i8] zeroinitializer }, align 32
@switch.table.c8sectpfe_frontend_attach.54 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [40 x i8] zeroinitializer }, align 32
@switch.table.c8sectpfe_frontend_attach.55 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"stv0367_tda18212_config\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 74, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 128, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 132, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 136, i32 10 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 141, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 158, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"tda18212_conf\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 99, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 171, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"stv090x_config\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 42, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 190, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 193, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"stv6110x_config\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 66, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 199, i32 9 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 202, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 219, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 223, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 231, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 32, i32 39 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 33, i32 39 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 34, i32 39 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 35, i32 39 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 36, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 37, i32 39 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [56 x i8] c"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 38, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant [39 x i8] c"switch.table.c8sectpfe_frontend_attach\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [42 x i8] c"switch.table.c8sectpfe_frontend_attach.53\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [42 x i8] c"switch.table.c8sectpfe_frontend_attach.54\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [42 x i8] c"switch.table.c8sectpfe_frontend_attach.55\00", align 1
@llvm.compiler.used = appending global [63 x ptr] [ptr @c8sectpfe_frontend_attach._entry, ptr @c8sectpfe_frontend_attach._entry.14, ptr @c8sectpfe_frontend_attach._entry.20, ptr @c8sectpfe_frontend_attach._entry.23, ptr @c8sectpfe_frontend_attach._entry.28, ptr @c8sectpfe_frontend_attach._entry.31, ptr @c8sectpfe_frontend_attach._entry.36, ptr @c8sectpfe_frontend_attach._entry.39, ptr @c8sectpfe_frontend_attach._entry.42, ptr @c8sectpfe_frontend_attach._entry.5, ptr @c8sectpfe_frontend_attach._entry.7, ptr @c8sectpfe_frontend_attach._entry.9, ptr @c8sectpfe_frontend_attach._entry_ptr, ptr @c8sectpfe_frontend_attach._entry_ptr.13, ptr @c8sectpfe_frontend_attach._entry_ptr.16, ptr @c8sectpfe_frontend_attach._entry_ptr.22, ptr @c8sectpfe_frontend_attach._entry_ptr.25, ptr @c8sectpfe_frontend_attach._entry_ptr.30, ptr @c8sectpfe_frontend_attach._entry_ptr.33, ptr @c8sectpfe_frontend_attach._entry_ptr.38, ptr @c8sectpfe_frontend_attach._entry_ptr.41, ptr @c8sectpfe_frontend_attach._entry_ptr.45, ptr @c8sectpfe_frontend_attach._entry_ptr.6, ptr @c8sectpfe_frontend_attach._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @stv0367_tda18212_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @tda18212_conf, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @stv090x_config, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @stv6110x_config, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @switch.table.c8sectpfe_frontend_attach, ptr @switch.table.c8sectpfe_frontend_attach.53, ptr @switch.table.c8sectpfe_frontend_attach.54, ptr @switch.table.c8sectpfe_frontend_attach.55], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0367_tda18212_config to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18212_conf to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv090x_config to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv6110x_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c8sectpfe_frontend_attach._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.c8sectpfe_frontend_attach to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.c8sectpfe_frontend_attach.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.c8sectpfe_frontend_attach.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.c8sectpfe_frontend_attach.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c8sectpfe_frontend_attach(ptr nocapture noundef %fe, ptr nocapture noundef readonly %c8sectpfe, ptr noundef %tsin, i32 noundef %chan_num) local_unnamed_addr #0 align 64 {
entry:
  %tda18212_info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tda18212_info) #4
  %0 = call ptr @memcpy(ptr %tda18212_info, ptr @__const.c8sectpfe_frontend_attach.tda18212_info, i32 56)
  %tobool.not = icmp eq ptr %tsin, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dvb_card = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 5
  %1 = ptrtoint ptr %dvb_card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dvb_card, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.end196 [
    i32 4, label %sw.bb100
    i32 0, label %if.then2
    i32 2, label %if.then18
    i32 1, label %if.end.if.else44_crit_edge
    i32 3, label %if.end.if.else44_crit_edge336
  ]

if.end.if.else44_crit_edge336:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else44

if.end.if.else44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else44

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %cond.end, label %if.then2.if.then7_crit_edge

if.then2.if.then7_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

cond.end:                                         ; preds = %if.then2
  %call4 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #4
  %call5 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %cond.end.if.then7_crit_edge

cond.end.if.then7_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %cond.end.if.then7_crit_edge, %if.then2.if.then7_crit_edge
  %cond307 = phi ptr [ %call5, %cond.end.if.then7_crit_edge ], [ %call, %if.then2.if.then7_crit_edge ]
  %i2c_adapter = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 7
  %4 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_adapter, align 4
  %call8 = tail call ptr %cond307(ptr noundef nonnull @stv0367_tda18212_config, ptr noundef %5) #4
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.then10, label %if.then7.if.end71_crit_edge

if.then7.if.end71_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str) #4
  br label %if.end71

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %if.end71

if.then18:                                        ; preds = %if.end
  %call21 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %cond.end27, label %if.then18.if.then30_crit_edge

if.then18.if.then30_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30

cond.end27:                                       ; preds = %if.then18
  %call25 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #4
  %call26 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool29.not = icmp eq ptr %call26, null
  br i1 %tobool29.not, label %do.end39, label %cond.end27.if.then30_crit_edge

cond.end27.if.then30_crit_edge:                   ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then30

if.then30:                                        ; preds = %cond.end27.if.then30_crit_edge, %if.then18.if.then30_crit_edge
  %cond28310 = phi ptr [ %call26, %cond.end27.if.then30_crit_edge ], [ %call21, %if.then18.if.then30_crit_edge ]
  %i2c_adapter31 = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 7
  %6 = ptrtoint ptr %i2c_adapter31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_adapter31, align 4
  %call32 = tail call ptr %cond28310(ptr noundef getelementptr inbounds ([3 x %struct.stv0367_config], ptr @stv0367_tda18212_config, i32 0, i32 1), ptr noundef %7) #4
  %cmp33 = icmp eq ptr %call32, null
  br i1 %cmp33, label %if.then34, label %if.then30.if.end71_crit_edge

if.then30.if.end71_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str) #4
  br label %if.end71

do.end39:                                         ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #6
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %if.end71

if.else44:                                        ; preds = %if.end.if.else44_crit_edge, %if.end.if.else44_crit_edge336
  %call47 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %cond.end53, label %if.else44.if.then56_crit_edge

if.else44.if.then56_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

cond.end53:                                       ; preds = %if.else44
  %call51 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #4
  %call52 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool55.not = icmp eq ptr %call52, null
  br i1 %tobool55.not, label %do.end65, label %cond.end53.if.then56_crit_edge

cond.end53.if.then56_crit_edge:                   ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then56

if.then56:                                        ; preds = %cond.end53.if.then56_crit_edge, %if.else44.if.then56_crit_edge
  %cond54313 = phi ptr [ %call52, %cond.end53.if.then56_crit_edge ], [ %call47, %if.else44.if.then56_crit_edge ]
  %i2c_adapter57 = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 7
  %8 = ptrtoint ptr %i2c_adapter57 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_adapter57, align 4
  %call58 = tail call ptr %cond54313(ptr noundef getelementptr inbounds ([3 x %struct.stv0367_config], ptr @stv0367_tda18212_config, i32 0, i32 2), ptr noundef %9) #4
  %cmp59 = icmp eq ptr %call58, null
  br i1 %cmp59, label %if.then60, label %if.then56.if.end71_crit_edge

if.then56.if.end71_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str) #4
  br label %if.end71

do.end65:                                         ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #6
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %if.end71

if.end71:                                         ; preds = %do.end65, %if.then60, %if.then56.if.end71_crit_edge, %do.end39, %if.then34, %if.then30.if.end71_crit_edge, %do.end, %if.then10, %if.then7.if.end71_crit_edge
  %__r19.0.sink = phi ptr [ null, %if.then10 ], [ %call8, %if.then7.if.end71_crit_edge ], [ null, %do.end ], [ null, %if.then34 ], [ %call32, %if.then30.if.end71_crit_edge ], [ null, %do.end39 ], [ null, %if.then60 ], [ %call58, %if.then56.if.end71_crit_edge ], [ null, %do.end65 ]
  %10 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %__r19.0.sink, ptr %fe, align 4
  %tobool72.not = icmp eq ptr %__r19.0.sink, null
  br i1 %tobool72.not, label %do.end76, label %if.end79

do.end76:                                         ; preds = %if.end71
  %device = getelementptr inbounds %struct.c8sectpfe, ptr %c8sectpfe, i32 0, i32 3
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %13 = ptrtoint ptr %dvb_card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dvb_card, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %15 = icmp ult i32 %14, 6
  br i1 %15, label %switch.lookup, label %do.end76.dvb_card_str.exit_crit_edge

do.end76.dvb_card_str.exit_crit_edge:             ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvb_card_str.exit

switch.lookup:                                    ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.c8sectpfe_frontend_attach, i32 0, i32 %14
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dvb_card_str.exit

dvb_card_str.exit:                                ; preds = %switch.lookup, %do.end76.dvb_card_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.52, %do.end76.dvb_card_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, ptr noundef nonnull %retval.0.i) #7
  br label %cleanup

if.end79:                                         ; preds = %if.end71
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %__r19.0.sink, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init, align 4
  %call80 = tail call i32 %18(ptr noundef nonnull %__r19.0.sink) #4
  %device81 = getelementptr inbounds %struct.c8sectpfe, ptr %c8sectpfe, i32 0, i32 3
  %19 = ptrtoint ptr %device81 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device81, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef 24, i32 noundef 3520) #4
  %tobool83.not = icmp eq ptr %call.i, null
  br i1 %tobool83.not, label %do.end87, label %if.end89

do.end87:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %device81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device81, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end89:                                         ; preds = %if.end79
  %23 = call ptr @memcpy(ptr %call.i, ptr @tda18212_conf, i32 20)
  %24 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fe, align 4
  %fe90 = getelementptr inbounds %struct.tda18212_config, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %fe90 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %fe90, align 4
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %tda18212_info, i32 0, i32 4
  %27 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %platform_data, align 4
  %call91 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.17) #4
  %i2c_adapter92 = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 7
  %28 = ptrtoint ptr %i2c_adapter92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_adapter92, align 4
  %call93 = call ptr @i2c_new_client_device(ptr noundef %29, ptr noundef nonnull %tda18212_info) #4
  %tobool.not.i.i = icmp eq ptr %call93, null
  %cmp.i.i = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end89.if.then95_crit_edge, label %i2c_client_has_driver.exit

if.end89.if.then95_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then95

i2c_client_has_driver.exit:                       ; preds = %if.end89
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call93, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %31, null
  br i1 %tobool.i.not, label %i2c_client_has_driver.exit.if.then95_crit_edge, label %if.end96

i2c_client_has_driver.exit.if.then95_crit_edge:   ; preds = %i2c_client_has_driver.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then95

if.then95:                                        ; preds = %i2c_client_has_driver.exit.if.then95_crit_edge, %if.end89.if.then95_crit_edge
  %32 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fe, align 4
  call void @dvb_frontend_detach(ptr noundef %33) #4
  br label %cleanup

if.end96:                                         ; preds = %i2c_client_has_driver.exit
  %34 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver.i, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %owner, align 4
  %call97 = call zeroext i1 @try_module_get(ptr noundef %37) #4
  br i1 %call97, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  call void @i2c_unregister_device(ptr noundef nonnull %call93) #4
  %38 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fe, align 4
  call void @dvb_frontend_detach(ptr noundef %39) #4
  br label %cleanup

if.end99:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_client = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 10
  %40 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call93, ptr %i2c_client, align 4
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.end
  %call103 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #4
  %tobool104.not = icmp eq ptr %call103, null
  br i1 %tobool104.not, label %cond.end109, label %sw.bb100.if.then112_crit_edge

sw.bb100.if.then112_crit_edge:                    ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then112

cond.end109:                                      ; preds = %sw.bb100
  %call107 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #4
  %call108 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #4
  %tobool111.not = icmp eq ptr %call108, null
  br i1 %tobool111.not, label %do.end121, label %cond.end109.if.then112_crit_edge

cond.end109.if.then112_crit_edge:                 ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then112

if.then112:                                       ; preds = %cond.end109.if.then112_crit_edge, %sw.bb100.if.then112_crit_edge
  %cond110316 = phi ptr [ %call108, %cond.end109.if.then112_crit_edge ], [ %call103, %sw.bb100.if.then112_crit_edge ]
  %i2c_adapter113 = getelementptr inbounds %struct.channel_info, ptr %tsin, i32 0, i32 7
  %41 = ptrtoint ptr %i2c_adapter113 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c_adapter113, align 4
  %call114 = tail call ptr %cond110316(ptr noundef nonnull @stv090x_config, ptr noundef %42, i32 noundef 1) #4
  %cmp115 = icmp eq ptr %call114, null
  br i1 %cmp115, label %if.then116, label %if.end134

if.then116:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #4
  br label %do.end130

do.end121:                                        ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #6
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #7
  br label %do.end130

do.end130:                                        ; preds = %do.end121, %if.then116
  %43 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %fe, align 4
  %device131 = getelementptr inbounds %struct.c8sectpfe, ptr %c8sectpfe, i32 0, i32 3
  %44 = ptrtoint ptr %device131 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device131, align 4
  %46 = ptrtoint ptr %dvb_card to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dvb_card, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %47)
  %48 = icmp ult i32 %47, 6
  br i1 %48, label %switch.lookup327, label %do.end130.dvb_card_str.exit280_crit_edge

do.end130.dvb_card_str.exit280_crit_edge:         ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvb_card_str.exit280

switch.lookup327:                                 ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep328 = getelementptr inbounds [6 x ptr], ptr @switch.table.c8sectpfe_frontend_attach.53, i32 0, i32 %47
  %49 = ptrtoint ptr %switch.gep328 to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load329 = load ptr, ptr %switch.gep328, align 4
  br label %dvb_card_str.exit280

dvb_card_str.exit280:                             ; preds = %switch.lookup327, %do.end130.dvb_card_str.exit280_crit_edge
  %retval.0.i279 = phi ptr [ %switch.load329, %switch.lookup327 ], [ @.str.52, %do.end130.dvb_card_str.exit280_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, ptr noundef nonnull %retval.0.i279) #7
  br label %cleanup

if.end134:                                        ; preds = %if.then112
  %50 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call114, ptr %fe, align 4
  %call137 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #4
  %tobool138.not = icmp eq ptr %call137, null
  br i1 %tobool138.not, label %cond.end143, label %if.end134.if.then146_crit_edge

if.end134.if.then146_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then146

cond.end143:                                      ; preds = %if.end134
  %call141 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.27) #4
  %call142 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.26) #4
  %tobool145.not = icmp eq ptr %call142, null
  br i1 %tobool145.not, label %do.end155, label %cond.end143.if.then146_crit_edge

cond.end143.if.then146_crit_edge:                 ; preds = %cond.end143
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then146

if.then146:                                       ; preds = %cond.end143.if.then146_crit_edge, %if.end134.if.then146_crit_edge
  %cond144321 = phi ptr [ %call142, %cond.end143.if.then146_crit_edge ], [ %call137, %if.end134.if.then146_crit_edge ]
  %51 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fe, align 4
  %53 = ptrtoint ptr %i2c_adapter113 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c_adapter113, align 4
  %call148 = tail call ptr %cond144321(ptr noundef %52, ptr noundef nonnull @stv6110x_config, ptr noundef %54) #4
  %cmp149 = icmp eq ptr %call148, null
  br i1 %cmp149, label %if.then150, label %if.end168

if.then150:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.26) #4
  br label %do.end164

do.end155:                                        ; preds = %cond.end143
  call void @__sanitizer_cov_trace_pc() #6
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #7
  br label %do.end164

do.end164:                                        ; preds = %do.end155, %if.then150
  %device165 = getelementptr inbounds %struct.c8sectpfe, ptr %c8sectpfe, i32 0, i32 3
  %55 = ptrtoint ptr %device165 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device165, align 4
  %57 = ptrtoint ptr %dvb_card to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dvb_card, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %58)
  %59 = icmp ult i32 %58, 6
  br i1 %59, label %switch.lookup330, label %do.end164.dvb_card_str.exit288_crit_edge

do.end164.dvb_card_str.exit288_crit_edge:         ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvb_card_str.exit288

switch.lookup330:                                 ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep331 = getelementptr inbounds [6 x ptr], ptr @switch.table.c8sectpfe_frontend_attach.54, i32 0, i32 %58
  %60 = ptrtoint ptr %switch.gep331 to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load332 = load ptr, ptr %switch.gep331, align 4
  br label %dvb_card_str.exit288

dvb_card_str.exit288:                             ; preds = %switch.lookup330, %do.end164.dvb_card_str.exit288_crit_edge
  %retval.0.i287 = phi ptr [ %switch.load332, %switch.lookup330 ], [ @.str.52, %do.end164.dvb_card_str.exit288_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.3, ptr noundef nonnull %retval.0.i287) #7
  br label %cleanup

if.end168:                                        ; preds = %if.then146
  %61 = ptrtoint ptr %call148 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call148, align 4
  store ptr %62, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 16), align 4
  %tuner_set_mode = getelementptr inbounds %struct.stv6110x_devctl, ptr %call148, i32 0, i32 2
  %63 = ptrtoint ptr %tuner_set_mode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tuner_set_mode, align 4
  store ptr %64, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 18), align 4
  %tuner_set_frequency = getelementptr inbounds %struct.stv6110x_devctl, ptr %call148, i32 0, i32 3
  %65 = ptrtoint ptr %tuner_set_frequency to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tuner_set_frequency, align 4
  store ptr %66, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 19), align 4
  %tuner_get_frequency = getelementptr inbounds %struct.stv6110x_devctl, ptr %call148, i32 0, i32 4
  %67 = ptrtoint ptr %tuner_get_frequency to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tuner_get_frequency, align 4
  store ptr %68, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 20), align 4
  %tuner_set_bandwidth = getelementptr inbounds %struct.stv6110x_devctl, ptr %call148, i32 0, i32 5
  %69 = ptrtoint ptr %tuner_set_bandwidth to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tuner_set_bandwidth, align 4
  store ptr %70, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 21), align 4
  %tuner_get_bandwidth = getelementptr inbounds %struct.stv6110x_devctl, ptr %call148, i32 0, i32 6
  %71 = ptrtoint ptr %tuner_get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tuner_get_bandwidth, align 4
  store ptr %72, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 22), align 4
  %tuner_set_bbgain = getelementptr inbounds %struct.stv6110x_devctl, ptr %call148, i32 0, i32 7
  %73 = ptrtoint ptr %tuner_set_bbgain to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tuner_set_bbgain, align 4
  store ptr %74, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 23), align 4
  %tuner_get_bbgain = getelementptr inbounds %struct.stv6110x_devctl, ptr %call148, i32 0, i32 8
  %75 = ptrtoint ptr %tuner_get_bbgain to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tuner_get_bbgain, align 4
  store ptr %76, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 24), align 4
  %tuner_set_refclk = getelementptr inbounds %struct.stv6110x_devctl, ptr %call148, i32 0, i32 9
  %77 = ptrtoint ptr %tuner_set_refclk to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tuner_set_refclk, align 4
  store ptr %78, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 25), align 4
  %tuner_get_status = getelementptr inbounds %struct.stv6110x_devctl, ptr %call148, i32 0, i32 10
  %79 = ptrtoint ptr %tuner_get_status to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tuner_get_status, align 4
  store ptr %80, ptr getelementptr inbounds (%struct.stv090x_config, ptr @stv090x_config, i32 0, i32 26), align 4
  %call171 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.34) #4
  %tobool172.not = icmp eq ptr %call171, null
  br i1 %tobool172.not, label %cond.end177, label %if.end168.if.then180_crit_edge

if.end168.if.then180_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then180

cond.end177:                                      ; preds = %if.end168
  %call175 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.35) #4
  %call176 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.34) #4
  %tobool179.not = icmp eq ptr %call176, null
  br i1 %tobool179.not, label %do.end189, label %cond.end177.if.then180_crit_edge

cond.end177.if.then180_crit_edge:                 ; preds = %cond.end177
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then180

if.then180:                                       ; preds = %cond.end177.if.then180_crit_edge, %if.end168.if.then180_crit_edge
  %cond178326 = phi ptr [ %call176, %cond.end177.if.then180_crit_edge ], [ %call171, %if.end168.if.then180_crit_edge ]
  %81 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fe, align 4
  %83 = ptrtoint ptr %i2c_adapter113 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c_adapter113, align 4
  %call182 = tail call ptr %cond178326(ptr noundef %82, ptr noundef %84, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 9) #4
  %cmp183 = icmp eq ptr %call182, null
  br i1 %cmp183, label %if.then184, label %if.then180.sw.epilog_crit_edge

if.then180.sw.epilog_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then184:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.34) #4
  br label %sw.epilog

do.end189:                                        ; preds = %cond.end177
  call void @__sanitizer_cov_trace_pc() #6
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #7
  br label %sw.epilog

do.end196:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %device197 = getelementptr inbounds %struct.c8sectpfe, ptr %c8sectpfe, i32 0, i32 3
  %85 = ptrtoint ptr %device197 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device197, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cond = icmp eq i32 %2, 5
  %.str.51..str.52 = select i1 %cond, ptr @.str.51, ptr @.str.52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.51..str.52) #7
  br label %cleanup

sw.epilog:                                        ; preds = %do.end189, %if.then184, %if.then180.sw.epilog_crit_edge, %if.end99
  %87 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fe, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %88, i32 0, i32 10
  %89 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %chan_num, ptr %id, align 4
  %device203 = getelementptr inbounds %struct.c8sectpfe, ptr %c8sectpfe, i32 0, i32 3
  %90 = ptrtoint ptr %device203 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device203, align 4
  %92 = ptrtoint ptr %dvb_card to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dvb_card, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %93)
  %94 = icmp ult i32 %93, 6
  br i1 %94, label %switch.lookup333, label %sw.epilog.dvb_card_str.exit304_crit_edge

sw.epilog.dvb_card_str.exit304_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvb_card_str.exit304

switch.lookup333:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep334 = getelementptr inbounds [6 x ptr], ptr @switch.table.c8sectpfe_frontend_attach.55, i32 0, i32 %93
  %95 = ptrtoint ptr %switch.gep334 to i32
  call void @__asan_load4_noabort(i32 %95)
  %switch.load335 = load ptr, ptr %switch.gep334, align 4
  br label %dvb_card_str.exit304

dvb_card_str.exit304:                             ; preds = %switch.lookup333, %sw.epilog.dvb_card_str.exit304_crit_edge
  %retval.0.i303 = phi ptr [ %switch.load335, %switch.lookup333 ], [ @.str.52, %sw.epilog.dvb_card_str.exit304_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.43, ptr noundef nonnull %retval.0.i303) #7
  br label %cleanup

cleanup:                                          ; preds = %dvb_card_str.exit304, %do.end196, %dvb_card_str.exit288, %dvb_card_str.exit280, %if.then98, %if.then95, %do.end87, %dvb_card_str.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end196 ], [ 0, %dvb_card_str.exit304 ], [ -19, %dvb_card_str.exit288 ], [ -19, %dvb_card_str.exit280 ], [ -19, %if.then98 ], [ -19, %if.then95 ], [ -12, %do.end87 ], [ -19, %dvb_card_str.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tda18212_info) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 128, i32 10}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @c8sectpfe_frontend_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @c8sectpfe_frontend_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @c8sectpfe_frontend_attach._entry.5, !9, !"_entry", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 132, i32 10}
!10 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @c8sectpfe_frontend_attach._entry.7, !12, !"_entry", i1 false, i1 false}
!12 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 136, i32 10}
!13 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 141, i32 4}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.12, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @c8sectpfe_frontend_attach._entry.9, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.13, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 158, i32 4}
!22 = !{ptr @c8sectpfe_frontend_attach._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 171, i32 3}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 190, i32 9}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.21, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @c8sectpfe_frontend_attach._entry.20, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.22, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 193, i32 4}
!34 = !{ptr @c8sectpfe_frontend_attach._entry.23, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.25, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.26, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 199, i32 9}
!38 = !{ptr @.str.27, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.29, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @c8sectpfe_frontend_attach._entry.28, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.30, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.32, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 202, i32 4}
!44 = !{ptr @c8sectpfe_frontend_attach._entry.31, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.33, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.34, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 219, i32 3}
!48 = !{ptr @.str.35, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.37, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @c8sectpfe_frontend_attach._entry.36, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.38, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.40, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 223, i32 3}
!54 = !{ptr @c8sectpfe_frontend_attach._entry.39, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.41, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.43, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 231, i32 2}
!58 = !{ptr @.str.44, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @c8sectpfe_frontend_attach._entry.42, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @c8sectpfe_frontend_attach._entry_ptr.45, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @stv0367_tda18212_config, !62, !"stv0367_tda18212_config", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 74, i32 30}
!63 = !{ptr @.str.46, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 32, i32 39}
!65 = !{ptr @.str.47, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 33, i32 39}
!67 = !{ptr @.str.48, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 34, i32 39}
!69 = !{ptr @.str.49, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 35, i32 39}
!71 = !{ptr @.str.50, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 36, i32 39}
!73 = !{ptr @.str.51, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 37, i32 39}
!75 = !{ptr @.str.52, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 38, i32 20}
!77 = !{ptr @tda18212_conf, !78, !"tda18212_conf", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 99, i32 31}
!79 = !{ptr @stv090x_config, !80, !"stv090x_config", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 42, i32 30}
!81 = !{ptr @stv6110x_config, !82, !"stv6110x_config", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/sti/c8sectpfe/c8sectpfe-dvb.c", i32 66, i32 31}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
