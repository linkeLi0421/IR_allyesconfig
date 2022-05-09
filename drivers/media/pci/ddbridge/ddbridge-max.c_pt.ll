; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ddbridge/ddbridge-max.c_pt.bc'
source_filename = "../drivers/media/pci/ddbridge/ddbridge-max.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mxl5xx_cfg = type { i8, i8, i32, i32, i32, ptr, i32, ptr, ptr }
%struct.mci_cfg = type { i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.ddb_link = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.mutex, %struct.ddb_lnb, %struct.tasklet_struct, %struct.ddb_ids, %struct.spinlock, i32, [11 x i8], [256 x %struct.ddb_irq] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ddb_lnb = type { %struct.mutex, i32, [4 x i32], [4 x i32], i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.125, i32 }
%union.anon.125 = type { ptr }
%struct.ddb_ids = type { i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ddb_irq = type { ptr, ptr }
%struct.ddb = type { ptr, ptr, ptr, i32, ptr, i32, [4 x %struct.ddb_link], ptr, i32, i32, [32 x %struct.ddb_port], i32, [32 x %struct.ddb_i2c], [64 x %struct.ddb_io], [32 x %struct.ddb_io], [64 x %struct.dvb_adapter], [64 x %struct.ddb_dma], [32 x %struct.ddb_dma], ptr, i32, i32, [1028 x i8], i8, i32, i32, %struct.mutex, [4096 x i8] }
%struct.ddb_port = type { ptr, i32, i32, i32, i32, ptr, %struct.mutex, i32, ptr, ptr, i32, [2 x ptr], ptr, ptr, i8, [2 x %struct.ddb_dvb], i32, i32, i8 }
%struct.ddb_dvb = type { ptr, i32, ptr, [1 x ptr], ptr, ptr, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.ddb_i2c = type { ptr, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, %struct.completion }
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
%struct.ddb_io = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.ddb_dma = type { ptr, i32, i32, [32 x i32], [32 x ptr], i32, i32, i32, i32, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.131], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.131 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.132 }>
%union.anon.132 = type { i64 }

@__param_str_fmode = internal constant [15 x i8] c"ddbridge.fmode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@fmode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_fmode = internal constant %struct.kernel_param { ptr @__param_str_fmode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @fmode } }, section "__param", align 4
@__UNIQUE_ID_fmodetype385 = internal constant [28 x i8] c"ddbridge.parmtype=fmode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fmode386 = internal constant [44 x i8] c"ddbridge.parm=fmode:frontend emulation mode\00", section ".modinfo", align 1
@__param_str_fmode_sat = internal constant [19 x i8] c"ddbridge.fmode_sat\00", align 1
@fmode_sat = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_fmode_sat = internal constant %struct.kernel_param { ptr @__param_str_fmode_sat, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @fmode_sat } }, section "__param", align 4
@__UNIQUE_ID_fmode_sattype387 = internal constant [32 x i8] c"ddbridge.parmtype=fmode_sat:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fmode_sat388 = internal constant [56 x i8] c"ddbridge.parm=fmode_sat:set frontend emulation mode sat\00", section ".modinfo", align 1
@__param_str_old_quattro = internal constant [21 x i8] c"ddbridge.old_quattro\00", align 1
@old_quattro = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_old_quattro = internal constant %struct.kernel_param { ptr @__param_str_old_quattro, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @old_quattro } }, section "__param", align 4
@__UNIQUE_ID_old_quattrotype389 = internal constant [34 x i8] c"ddbridge.parmtype=old_quattro:int\00", section ".modinfo", align 1
@__UNIQUE_ID_old_quattro390 = internal constant [55 x i8] c"ddbridge.parm=old_quattro:old quattro LNB input order \00", section ".modinfo", align 1
@ddb_lnb_init_fmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 370, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set fmode link %u = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ddb_lnb_init_fmode\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/ddbridge/ddbridge-max.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ddb_lnb_init_fmode._entry_ptr = internal global ptr @ddb_lnb_init_fmode._entry, section ".printk_index", align 4
@mxl5xx = internal constant { %struct.mxl5xx_cfg, [32 x i8] } { %struct.mxl5xx_cfg { i8 96, i8 1, i32 12, i32 27000000, i32 139, ptr null, i32 0, ptr @mxl_fw_read, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxl5xx_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mxl5xx_attach\00", [43 x i8] zeroinitializer }, align 32
@ddb_fe_attach_mxl5xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mxl5xx_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ddb_fe_attach_mxl5xx\00", [43 x i8] zeroinitializer }, align 32
@ddb_fe_attach_mxl5xx._entry_ptr = internal global ptr @ddb_fe_attach_mxl5xx._entry, section ".printk_index", align 4
@ddb_fe_attach_mxl5xx._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 431, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No MXL5XX found!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ddb_fe_attach_mxl5xx._entry_ptr.12 = internal global ptr @ddb_fe_attach_mxl5xx._entry.9, section ".printk_index", align 4
@ddb_fe_attach_mxl5xx._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 436, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No mxl5xx_set_input function pointer!\0A\00", [57 x i8] zeroinitializer }, align 32
@ddb_fe_attach_mxl5xx._entry_ptr.15 = internal global ptr @ddb_fe_attach_mxl5xx._entry.13, section ".printk_index", align 4
@ddb_max_sx8_cfg = external dso_local local_unnamed_addr constant %struct.mci_cfg, align 4
@ddb_fe_attach_mci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 482, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No MCI card found!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ddb_fe_attach_mci\00", [46 x i8] zeroinitializer }, align 32
@ddb_fe_attach_mci._entry_ptr = internal global ptr @ddb_fe_attach_mci._entry, section ".printk_index", align 4
@ddb_fe_attach_mci._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 486, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No MCI set_input function pointer!\0A\00", [60 x i8] zeroinitializer }, align 32
@ddb_fe_attach_mci._entry_ptr.20 = internal global ptr @ddb_fe_attach_mci._entry.18, section ".printk_index", align 4
@__const.lnb_set_sat.cmd = private unnamed_addr constant %struct.dvb_diseqc_master_cmd { [6 x i8] c"\E0\108\F0\00\00", i8 4 }, align 1
@mxl_fw_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 359, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Read mxl_fw from link %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mxl_fw_read\00", [20 x i8] zeroinitializer }, align 32
@mxl_fw_read._entry_ptr = internal global ptr @mxl_fw_read._entry, section ".printk_index", align 4
@lnb_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 72, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s lnb = %08x  cmd = %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lnb_command\00", [20 x i8] zeroinitializer }, align 32
@lnb_command._entry_ptr = internal global ptr @lnb_command._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"fmode\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 44, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"fmode_sat\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 48, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"old_quattro\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 52, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 370, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"mxl5xx\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 399, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 427, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 431, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 436, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 482, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 486, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 359, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [45 x i8] c"../drivers/media/pci/ddbridge/ddbridge-max.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 71, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_fmode386, ptr @__UNIQUE_ID_fmode_sat388, ptr @__UNIQUE_ID_fmode_sattype387, ptr @__UNIQUE_ID_fmodetype385, ptr @__UNIQUE_ID_old_quattro390, ptr @__UNIQUE_ID_old_quattrotype389, ptr @__param_fmode, ptr @__param_fmode_sat, ptr @__param_old_quattro, ptr @ddb_fe_attach_mci._entry, ptr @ddb_fe_attach_mci._entry.18, ptr @ddb_fe_attach_mci._entry_ptr, ptr @ddb_fe_attach_mci._entry_ptr.20, ptr @ddb_fe_attach_mxl5xx._entry, ptr @ddb_fe_attach_mxl5xx._entry.13, ptr @ddb_fe_attach_mxl5xx._entry.9, ptr @ddb_fe_attach_mxl5xx._entry_ptr, ptr @ddb_fe_attach_mxl5xx._entry_ptr.12, ptr @ddb_fe_attach_mxl5xx._entry_ptr.15, ptr @ddb_lnb_init_fmode._entry, ptr @ddb_lnb_init_fmode._entry_ptr, ptr @lnb_command._entry, ptr @lnb_command._entry_ptr, ptr @mxl_fw_read._entry, ptr @mxl_fw_read._entry_ptr, ptr @fmode, ptr @fmode_sat, ptr @old_quattro, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mxl5xx, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmode_sat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @old_quattro to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_lnb_init_fmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl5xx to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_fe_attach_mxl5xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_fe_attach_mxl5xx._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_fe_attach_mxl5xx._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_fe_attach_mci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_fe_attach_mci._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl_fw_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lnb_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddb_lnb_init_fmode(ptr nocapture noundef %dev, ptr noundef %link, i32 noundef %fm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nr = getelementptr inbounds %struct.ddb_link, ptr %link, i32 0, i32 2
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr, align 4
  %lnb = getelementptr inbounds %struct.ddb_link, ptr %link, i32 0, i32 6
  %fmode = getelementptr inbounds %struct.ddb_link, ptr %link, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %fmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %fm)
  %cmp = icmp eq i32 %3, %fm
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %fm) #9
  tail call void @mutex_lock_nested(ptr noundef %lnb, i32 noundef 0) #6
  %fm.off = add i32 %fm, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fm.off)
  %switch = icmp ult i32 %fm.off, 2
  br i1 %switch, label %if.then5, label %do.end.if.end26_crit_edge

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then5:                                         ; preds = %do.end
  %6 = load i32, ptr @fmode_sat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp6 = icmp sgt i32 %6, -1
  br i1 %cmp6, label %if.then7, label %if.then5.if.end15_crit_edge

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then7:                                         ; preds = %if.then5
  tail call fastcc void @lnb_set_sat(ptr noundef %dev, i32 noundef %1, i32 noundef 0, i32 noundef %6, i32 noundef 0, i32 noundef 0)
  %7 = load i32, ptr @old_quattro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = load i32, ptr @fmode_sat, align 4
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_set_sat(ptr noundef %dev, i32 noundef %1, i32 noundef 1, i32 noundef %8, i32 noundef 0, i32 noundef 1)
  %9 = load i32, ptr @fmode_sat, align 4
  tail call fastcc void @lnb_set_sat(ptr noundef %dev, i32 noundef %1, i32 noundef 2, i32 noundef %9, i32 noundef 1, i32 noundef 0)
  br label %if.end13

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_set_sat(ptr noundef %dev, i32 noundef %1, i32 noundef 1, i32 noundef %8, i32 noundef 1, i32 noundef 0)
  %10 = load i32, ptr @fmode_sat, align 4
  tail call fastcc void @lnb_set_sat(ptr noundef %dev, i32 noundef %1, i32 noundef 2, i32 noundef %10, i32 noundef 0, i32 noundef 1)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  %11 = load i32, ptr @fmode_sat, align 4
  tail call fastcc void @lnb_set_sat(ptr noundef %dev, i32 noundef %1, i32 noundef 3, i32 noundef %11, i32 noundef 1, i32 noundef 1)
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.then5.if.end15_crit_edge
  %tone2.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 6, i32 %1, i32 6, i32 1
  %12 = ptrtoint ptr %tone2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tone2.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end15.lnb_set_tone.exit_crit_edge, label %if.end.i

if.end15.lnb_set_tone.exit_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_tone.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %conv11.i = and i32 %13, -2
  %14 = ptrtoint ptr %tone2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv11.i, ptr %tone2.i, align 4
  tail call fastcc void @lnb_command(ptr noundef %dev, i32 noundef %1, i32 noundef 0, i32 noundef 0) #6
  br label %lnb_set_tone.exit

lnb_set_tone.exit:                                ; preds = %if.end.i, %if.end15.lnb_set_tone.exit_crit_edge
  %15 = load i32, ptr @old_quattro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %tone2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tone2.i, align 4
  %and17.i71 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i71)
  %tobool18.not.i72 = icmp eq i32 %and17.i71, 0
  br i1 %tobool17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %lnb_set_tone.exit
  br i1 %tobool18.not.i72, label %if.then18.lnb_set_tone.exit68_crit_edge, label %if.end.i67

if.then18.lnb_set_tone.exit68_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_tone.exit68

if.end.i67:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %conv11.i66 = and i32 %17, -3
  %18 = ptrtoint ptr %tone2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv11.i66, ptr %tone2.i, align 4
  tail call fastcc void @lnb_command(ptr noundef %dev, i32 noundef %1, i32 noundef 1, i32 noundef 0) #6
  br label %lnb_set_tone.exit68

lnb_set_tone.exit68:                              ; preds = %if.end.i67, %if.then18.lnb_set_tone.exit68_crit_edge
  %19 = ptrtoint ptr %tone2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tone2.i, align 4
  %and17.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %lnb_set_tone.exit68.if.end24_crit_edge

lnb_set_tone.exit68.if.end24_crit_edge:           ; preds = %lnb_set_tone.exit68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end20.i:                                       ; preds = %lnb_set_tone.exit68
  call void @__sanitizer_cov_trace_pc() #8
  %conv28.i = or i32 %20, 4
  br label %if.end24.sink.split

if.else21:                                        ; preds = %lnb_set_tone.exit
  br i1 %tobool18.not.i72, label %if.end20.i74, label %if.else21.lnb_set_tone.exit75_crit_edge

if.else21.lnb_set_tone.exit75_crit_edge:          ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_tone.exit75

if.end20.i74:                                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %conv28.i73 = or i32 %17, 2
  %21 = ptrtoint ptr %tone2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv28.i73, ptr %tone2.i, align 4
  tail call fastcc void @lnb_command(ptr noundef %dev, i32 noundef %1, i32 noundef 1, i32 noundef 0) #6
  br label %lnb_set_tone.exit75

lnb_set_tone.exit75:                              ; preds = %if.end20.i74, %if.else21.lnb_set_tone.exit75_crit_edge
  %22 = ptrtoint ptr %tone2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tone2.i, align 4
  %and.i77 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %lnb_set_tone.exit75.if.end24_crit_edge, label %if.end.i80

lnb_set_tone.exit75.if.end24_crit_edge:           ; preds = %lnb_set_tone.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i80:                                       ; preds = %lnb_set_tone.exit75
  call void @__sanitizer_cov_trace_pc() #8
  %conv11.i79 = and i32 %23, -5
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.end.i80, %if.end20.i
  %conv11.i79.sink = phi i32 [ %conv11.i79, %if.end.i80 ], [ %conv28.i, %if.end20.i ]
  %24 = ptrtoint ptr %tone2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv11.i79.sink, ptr %tone2.i, align 4
  tail call fastcc void @lnb_command(ptr noundef %dev, i32 noundef %1, i32 noundef 2, i32 noundef 0) #6
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %lnb_set_tone.exit75.if.end24_crit_edge, %lnb_set_tone.exit68.if.end24_crit_edge
  %25 = ptrtoint ptr %tone2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tone2.i, align 4
  %and17.i83 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i83)
  %tobool18.not.i84 = icmp eq i32 %and17.i83, 0
  br i1 %tobool18.not.i84, label %if.end20.i86, label %if.end24.if.end26_crit_edge

if.end24.if.end26_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end20.i86:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %conv28.i85 = or i32 %26, 8
  %27 = ptrtoint ptr %tone2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv28.i85, ptr %tone2.i, align 4
  tail call fastcc void @lnb_command(ptr noundef %dev, i32 noundef %1, i32 noundef 3, i32 noundef 0) #6
  br label %if.end26

if.end26:                                         ; preds = %if.end20.i86, %if.end24.if.end26_crit_edge, %do.end.if.end26_crit_edge
  %28 = ptrtoint ptr %fmode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %fm, ptr %fmode, align 4
  tail call void @mutex_unlock(ptr noundef %lnb) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lnb_set_sat(ptr nocapture noundef readonly %dev, i32 noundef %link, i32 noundef %input, i32 noundef %sat, i32 noundef %band, i32 noundef %hor) unnamed_addr #0 align 64 {
for.body.lr.ph.i:
  %cmd = alloca %struct.dvb_diseqc_master_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd) #6
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.lnb_set_sat.cmd, i32 7)
  %shl = shl i32 %sat, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %tobool.not = icmp ne i32 %band, 0
  %cond = zext i1 %tobool.not to i32
  %or = or i32 %shl, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hor)
  %tobool1.not = icmp eq i32 %hor, 0
  %cond2 = select i1 %tobool1.not, i32 0, i32 2
  %or3 = or i32 %or, %cond2
  %1 = trunc i32 %or3 to i8
  %conv = or i8 %1, -16
  %arrayidx = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %shl.i = shl i32 %link, 28
  %mul.i = shl i32 %input, 5
  %add1.i = add i32 %mul.i, 1040
  %or.i = or i32 %add1.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %regs.i.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 7
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %or.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !79
  %add6.i = add i32 %mul.i, 1044
  %or7.i = or i32 %add6.i, %shl.i
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd, align 1
  %conv3.i = zext i8 %6 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %7 = shl nuw i32 %conv3.i, 24
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %9, i32 %or7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %7) #6, !srcloc !79
  %arrayidx.i.1 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.1, align 1
  %conv3.i.1 = zext i8 %11 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %12 = shl nuw i32 %conv3.i.1, 24
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i2.i.1 = getelementptr i8, ptr %14, i32 %or7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.1, i32 %12) #6, !srcloc !79
  %arrayidx.i.2 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.2, align 1
  %conv3.i.2 = zext i8 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %17 = shl nuw i32 %conv3.i.2, 24
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i2.i.2 = getelementptr i8, ptr %19, i32 %or7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.2, i32 %17) #6, !srcloc !79
  %arrayidx.i.3 = getelementptr inbounds [6 x i8], ptr %cmd, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.3, align 1
  %conv3.i.3 = zext i8 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %22 = shl nuw i32 %conv3.i.3, 24
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i2.i.3 = getelementptr i8, ptr %24, i32 %or7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.3, i32 %22) #6, !srcloc !79
  tail call fastcc void @lnb_command(ptr noundef %dev, i32 noundef %link, i32 noundef %input, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddb_fe_attach_mxl5xx(ptr noundef %input) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.mxl5xx_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %i2c3 = getelementptr inbounds %struct.ddb_port, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c3, align 4
  %adap = getelementptr inbounds %struct.ddb_i2c, ptr %5, i32 0, i32 4
  %nr = getelementptr inbounds %struct.ddb_io, ptr %input, i32 0, i32 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %and = and i32 %7, 1
  %lnr = getelementptr inbounds %struct.ddb_port, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lnr, align 8
  %arrayidx9 = getelementptr %struct.ddb, ptr %3, i32 0, i32 6, i32 %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cfg) #6
  %10 = call ptr @memcpy(ptr %cfg, ptr @mxl5xx, i32 28)
  %fw_priv = getelementptr inbounds %struct.mxl5xx_cfg, ptr %cfg, i32 0, i32 8
  %11 = ptrtoint ptr %fw_priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx9, ptr %fw_priv, align 4
  %set_input = getelementptr %struct.ddb_port, ptr %1, i32 0, i32 15, i32 %and, i32 18
  %12 = ptrtoint ptr %set_input to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %set_input, align 4
  %13 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr, align 4
  %and11 = and i32 %14, 3
  %15 = load i32, ptr @fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp = icmp eq i32 %15, 3
  %spec.store.select = select i1 %cmp, i32 0, i32 %and11
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.5) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then15_crit_edge

entry.if.then15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

cond.end:                                         ; preds = %entry
  %call12 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6) #6
  %call13 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.5) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %cond.end.if.then15_crit_edge

cond.end.if.then15_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %cond.end.if.then15_crit_edge, %entry.if.then15_crit_edge
  %cond109 = phi ptr [ %call13, %cond.end.if.then15_crit_edge ], [ %call, %entry.if.then15_crit_edge ]
  %call17 = call ptr %cond109(ptr noundef %adap, ptr noundef nonnull %cfg, i32 noundef %14, i32 noundef %spec.store.select, ptr noundef %set_input) #6
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  call void @__symbol_put(ptr noundef nonnull @.str.5) #6
  br label %do.end29

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %do.end29

do.end29:                                         ; preds = %do.end, %if.then19
  %fe111 = getelementptr %struct.ddb_port, ptr %1, i32 0, i32 15, i32 %and, i32 4
  %16 = ptrtoint ptr %fe111 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %fe111, align 8
  %dev30 = getelementptr inbounds %struct.ddb, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev30, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end31:                                         ; preds = %if.then15
  %fe = getelementptr %struct.ddb_port, ptr %1, i32 0, i32 15, i32 %and, i32 4
  %19 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call17, ptr %fe, align 8
  %20 = ptrtoint ptr %set_input to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_input, align 4
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr inbounds %struct.ddb, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev38, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %24 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp41 = icmp ult i32 %25, 4
  br i1 %cmp41, label %if.then42, label %if.end39.if.end49_crit_edge

if.end39.if.end49_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then42:                                        ; preds = %if.end39
  %26 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %lnr, align 8
  call fastcc void @lnb_command(ptr noundef %3, i32 noundef %27, i32 noundef %25, i32 noundef 1)
  %28 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lnr, align 8
  %30 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr, align 4
  %arrayidx2.i = getelementptr %struct.ddb, ptr %3, i32 0, i32 6, i32 %29, i32 6, i32 2, i32 %31
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.i = icmp eq i32 %33, 2
  br i1 %cmp.i, label %if.then42.if.end49_crit_edge, label %if.end.i

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end.i:                                         ; preds = %if.then42
  %arrayidx7.i = getelementptr %struct.ddb, ptr %3, i32 0, i32 6, i32 %29, i32 6, i32 3, i32 %31
  %34 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %sw.epilog.sink.split.i, label %if.end.i.if.end49_crit_edge

if.end.i.if.end49_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

sw.epilog.sink.split.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @lnb_command(ptr noundef %3, i32 noundef %29, i32 noundef %31, i32 noundef 5) #6
  %36 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %arrayidx2.i, align 4
  br label %if.end49

if.end49:                                         ; preds = %sw.epilog.sink.split.i, %if.end.i.if.end49_crit_edge, %if.then42.if.end49_crit_edge, %if.end39.if.end49_crit_edge
  %37 = load i32, ptr @fmode, align 4
  %call50 = call i32 @ddb_lnb_init_fmode(ptr noundef %3, ptr noundef %arrayidx9, i32 noundef %37)
  %38 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fe, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %39, i32 0, i32 1, i32 25
  %40 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @max_set_voltage, ptr %set_voltage, align 4
  %41 = load ptr, ptr %fe, align 8
  %enable_high_lnb_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %41, i32 0, i32 1, i32 26
  %42 = ptrtoint ptr %enable_high_lnb_voltage to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @max_enable_high_lnb_voltage, ptr %enable_high_lnb_voltage, align 4
  %43 = load ptr, ptr %fe, align 8
  %set_tone = getelementptr inbounds %struct.dvb_frontend, ptr %43, i32 0, i32 1, i32 24
  %44 = ptrtoint ptr %set_tone to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @max_set_tone, ptr %set_tone, align 4
  %45 = load ptr, ptr %fe, align 8
  %diseqc_send_master_cmd = getelementptr inbounds %struct.dvb_frontend, ptr %45, i32 0, i32 1, i32 21
  %46 = ptrtoint ptr %diseqc_send_master_cmd to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %diseqc_send_master_cmd, align 4
  %diseqc_send_master_cmd58 = getelementptr %struct.ddb_port, ptr %1, i32 0, i32 15, i32 %and, i32 19
  %48 = ptrtoint ptr %diseqc_send_master_cmd58 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %diseqc_send_master_cmd58, align 8
  store ptr @max_send_master_cmd, ptr %diseqc_send_master_cmd, align 4
  %49 = load ptr, ptr %fe, align 8
  %diseqc_send_burst = getelementptr inbounds %struct.dvb_frontend, ptr %49, i32 0, i32 1, i32 23
  %50 = ptrtoint ptr %diseqc_send_burst to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @max_send_burst, ptr %diseqc_send_burst, align 4
  %51 = load ptr, ptr %fe, align 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %input, ptr %sec_priv, align 4
  %conv = trunc i32 %spec.store.select to i8
  %input65 = getelementptr %struct.ddb_port, ptr %1, i32 0, i32 15, i32 %and, i32 13
  %53 = ptrtoint ptr %input65 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv, ptr %input65, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end37, %do.end29
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -19, %do.end37 ], [ -19, %do.end29 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cfg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lnb_command(ptr nocapture noundef readonly %dev, i32 noundef %link, i32 noundef %lnb, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %link, 28
  %tone = getelementptr %struct.ddb, ptr %dev, i32 0, i32 6, i32 %link, i32 6, i32 1
  %0 = ptrtoint ptr %tone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tone, align 4
  %sub = sub i32 15, %lnb
  %shl3 = shl i32 %1, %sub
  %2 = and i32 %shl3, 32768
  %or = or i32 %2, %cmd
  %mul = shl i32 %lnb, 5
  %add = add i32 %mul, 1024
  %or6 = or i32 %add, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %or6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #6, !srcloc !79
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %7, i32 %or6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %9 = and i32 %8, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14 = icmp eq i32 %9, 0
  br i1 %cmp14, label %entry.if.end20_crit_edge, label %if.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #6
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2.1 = getelementptr i8, ptr %11, i32 %or6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.1) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp14.1 = icmp eq i32 %13, 0
  br i1 %cmp14.1, label %if.end.if.end20_crit_edge, label %if.end.1

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 20) #6
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2.2 = getelementptr i8, ptr %15, i32 %or6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.2) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %17 = and i32 %16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp14.2 = icmp eq i32 %17, 0
  br i1 %cmp14.2, label %if.end.1.if.end20_crit_edge, label %if.end.2

if.end.1.if.end20_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 20) #6
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2.3 = getelementptr i8, ptr %19, i32 %or6
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.3) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %21 = and i32 %20, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14.3 = icmp eq i32 %21, 0
  br i1 %cmp14.3, label %if.end.2.if.end20_crit_edge, label %if.end.3

if.end.2.if.end20_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 20) #6
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2.4 = getelementptr i8, ptr %23, i32 %or6
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.4) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %25 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp14.4 = icmp eq i32 %25, 0
  br i1 %cmp14.4, label %if.end.3.if.end20_crit_edge, label %if.end.4

if.end.3.if.end20_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 20) #6
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2.5 = getelementptr i8, ptr %27, i32 %or6
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.5) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %29 = and i32 %28, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp14.5 = icmp eq i32 %29, 0
  br i1 %cmp14.5, label %if.end.4.if.end20_crit_edge, label %if.end.5

if.end.4.if.end20_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 20) #6
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2.6 = getelementptr i8, ptr %31, i32 %or6
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.6) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %33 = and i32 %32, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp14.6 = icmp eq i32 %33, 0
  br i1 %cmp14.6, label %if.end.5.if.end20_crit_edge, label %if.end.6

if.end.5.if.end20_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 20) #6
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2.7 = getelementptr i8, ptr %35, i32 %or6
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.7) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %37 = and i32 %36, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp14.7 = icmp eq i32 %37, 0
  br i1 %cmp14.7, label %if.end.6.if.end20_crit_edge, label %if.end.7

if.end.6.if.end20_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 20) #6
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2.8 = getelementptr i8, ptr %39, i32 %or6
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.8) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %41 = and i32 %40, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp14.8 = icmp eq i32 %41, 0
  br i1 %cmp14.8, label %if.end.7.if.end20_crit_edge, label %if.end.8

if.end.7.if.end20_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 20) #6
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 8
  %add.ptr.i2.9 = getelementptr i8, ptr %43, i32 %or6
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.9) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %45 = and i32 %44, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp14.9 = icmp eq i32 %45, 0
  br i1 %cmp14.9, label %if.end.8.if.end20_crit_edge, label %do.end

if.end.8.if.end20_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  %dev19 = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 2
  %46 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev19, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %47, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %lnb, i32 noundef %cmd) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end.8.if.end20_crit_edge, %if.end.7.if.end20_crit_edge, %if.end.6.if.end20_crit_edge, %if.end.5.if.end20_crit_edge, %if.end.4.if.end20_crit_edge, %if.end.3.if.end20_crit_edge, %if.end.2.if.end20_crit_edge, %if.end.1.if.end20_crit_edge, %if.end.if.end20_crit_edge, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_set_voltage(ptr noundef %fe, i32 noundef %voltage) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %nr = getelementptr inbounds %struct.ddb_io, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %and = and i32 %7, 1
  %lnr = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lnr, align 8
  %lnb = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %9, i32 6
  %voltages = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %9, i32 6, i32 4
  %10 = ptrtoint ptr %voltages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %voltages, align 4
  %fmode9 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %9, i32 6, i32 5
  %12 = ptrtoint ptr %fmode9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmode9, align 4
  tail call void @mutex_lock_nested(ptr noundef %lnb, i32 noundef 0) #6
  %voltage14 = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 15
  %14 = ptrtoint ptr %voltage14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %voltage, ptr %voltage14, align 8
  %.off = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb46, label %sw.bb15

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp = icmp eq i32 %13, 3
  br i1 %cmp, label %if.then, label %sw.bb15.if.end_crit_edge

sw.bb15.if.end_crit_edge:                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb15
  %15 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sec_priv, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %nr.i = getelementptr inbounds %struct.ddb_io, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i, align 4
  %and.i = and i32 %20, 1
  %input4.i = getelementptr %struct.ddb_port, ptr %18, i32 0, i32 15, i32 %and.i, i32 13
  %21 = ptrtoint ptr %input4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %input4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp5.not.i = icmp eq i8 %22, 0
  br i1 %cmp5.not.i, label %if.then.max_set_input_unlocked.exit_crit_edge, label %if.then7.i

if.then.max_set_input_unlocked.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %max_set_input_unlocked.exit

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 8
  %sh_prom.i = zext i32 %20 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %conv9.i = trunc i64 %shl.i to i32
  %lnr.i = getelementptr inbounds %struct.ddb_port, ptr %18, i32 0, i32 4
  %25 = ptrtoint ptr %lnr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lnr.i, align 8
  %27 = and i8 %22, 3
  %and13.i = zext i8 %27 to i32
  %arrayidx14.i = getelementptr %struct.ddb, ptr %24, i32 0, i32 6, i32 %26, i32 6, i32 3, i32 %and13.i
  %28 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx14.i, align 4
  %and15.i = and i32 %29, %conv9.i
  %neg.i = xor i32 %conv9.i, -1
  %and25.i = and i32 %29, %neg.i
  store i32 %and25.i, ptr %arrayidx14.i, align 4
  %30 = ptrtoint ptr %input4.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %input4.i, align 8
  %31 = load i32, ptr %lnr.i, align 8
  %arrayidx36.i = getelementptr %struct.ddb, ptr %24, i32 0, i32 6, i32 %31, i32 6, i32 3, i32 0
  %32 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx36.i, align 4
  %or.i = or i32 %33, %and15.i
  store i32 %or.i, ptr %arrayidx36.i, align 4
  br label %max_set_input_unlocked.exit

max_set_input_unlocked.exit:                      ; preds = %if.then7.i, %if.then.max_set_input_unlocked.exit_crit_edge
  %set_input.i = getelementptr %struct.ddb_port, ptr %18, i32 0, i32 15, i32 %and.i, i32 18
  %34 = ptrtoint ptr %set_input.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %set_input.i, align 4
  %call.i = tail call i32 %35(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %max_set_input_unlocked.exit, %sw.bb15.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %voltage)
  %cmp16 = icmp eq i32 %voltage, 2
  %36 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr, align 4
  %sh_prom = zext i32 %37 to i64
  %shl = shl nuw i64 1, %sh_prom
  %38 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lnr, align 8
  %input24 = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 13
  %40 = ptrtoint ptr %input24 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %input24, align 8
  %idxprom = zext i8 %41 to i32
  %arrayidx25 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %39, i32 6, i32 3, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx25, align 4
  %44 = trunc i64 %shl to i32
  %conv40 = or i32 %43, %44
  %45 = xor i32 %44, -1
  %conv27 = and i32 %43, %45
  %conv40.sink = select i1 %cmp16, i32 %conv27, i32 %conv40
  store i32 %conv40.sink, ptr %arrayidx25, align 4
  %46 = load i32, ptr %lnr, align 8
  %input43 = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 13
  %47 = ptrtoint ptr %input43 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %input43, align 8
  %conv44 = zext i8 %48 to i32
  %arrayidx2.i = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %46, i32 6, i32 2, i32 %conv44
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %voltage)
  %cmp.i = icmp eq i32 %50, %voltage
  br i1 %cmp.i, label %if.end.sw.epilog_crit_edge, label %if.end.i

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end
  %51 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %if.end.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 0, label %if.end.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb12.i
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %arrayidx7.i = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %46, i32 6, i32 3, i32 %conv44
  %52 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.epilog.sink.split.i_crit_edge, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i.sw.epilog.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb12.i, %sw.bb.i.sw.epilog.sink.split.i_crit_edge, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 4, %sw.bb12.i ], [ 5, %sw.bb.i.sw.epilog.sink.split.i_crit_edge ], [ 3, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %46, i32 noundef %conv44, i32 noundef %.sink.i) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end.i.sw.epilog.i_crit_edge
  %s.0.i = phi i32 [ -22, %if.end.i.sw.epilog.i_crit_edge ], [ 0, %sw.epilog.sink.split.i ]
  %54 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %voltage, ptr %arrayidx2.i, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %voltage)
  %cmp47 = icmp eq i32 %voltage, 2
  %55 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr, align 4
  %sh_prom51 = zext i32 %56 to i64
  %shl52 = shl nuw i64 1, %sh_prom51
  %57 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lnr, align 8
  %voltages58 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %58, i32 6, i32 4
  %59 = ptrtoint ptr %voltages58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %voltages58, align 4
  %61 = trunc i64 %shl52 to i32
  %conv73 = or i32 %60, %61
  %62 = xor i32 %61, -1
  %conv61 = and i32 %60, %62
  %conv73.sink = select i1 %cmp47, i32 %conv61, i32 %conv73
  store i32 %conv73.sink, ptr %voltages58, align 4
  %63 = load i32, ptr %lnr, align 8
  %voltages79 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %63, i32 6, i32 4
  %64 = ptrtoint ptr %voltages79 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %voltages79, align 4
  %66 = load i32, ptr @old_quattro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not = icmp eq i32 %66, 0
  %tone93 = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 14
  %67 = ptrtoint ptr %tone93 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tone93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp94 = icmp eq i32 %68, 0
  br i1 %tobool.not, label %if.else92, label %if.then80

if.then80:                                        ; preds = %sw.bb46
  %spec.select = select i1 %cmp94, i32 2, i32 0
  %69 = ptrtoint ptr %voltage14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %voltage14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp87 = icmp eq i32 %70, 1
  %or90 = or i32 %spec.select, 1
  br i1 %cmp87, label %if.then80.if.end105_crit_edge, label %if.then80.if.end.i231_crit_edge

if.then80.if.end.i231_crit_edge:                  ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i231

if.then80.if.end105_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.else92:                                        ; preds = %sw.bb46
  %spec.select221 = zext i1 %cmp94 to i32
  %71 = ptrtoint ptr %voltage14 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %voltage14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp100 = icmp eq i32 %72, 1
  %or103 = or i32 %spec.select221, 2
  br i1 %cmp100, label %if.else92.if.end105_crit_edge, label %if.else92.if.end.i231_crit_edge

if.else92.if.end.i231_crit_edge:                  ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i231

if.else92.if.end105_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.end105:                                        ; preds = %if.else92.if.end105_crit_edge, %if.then80.if.end105_crit_edge
  %tuner.2 = phi i32 [ %or90, %if.then80.if.end105_crit_edge ], [ %or103, %if.else92.if.end105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tuner.2)
  %cmp.i227 = icmp sgt i32 %tuner.2, 3
  br i1 %cmp.i227, label %if.end105.max_set_input_unlocked.exit247_crit_edge, label %if.end105.if.end.i231_crit_edge

if.end105.if.end.i231_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i231

if.end105.max_set_input_unlocked.exit247_crit_edge: ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %max_set_input_unlocked.exit247

if.end.i231:                                      ; preds = %if.end105.if.end.i231_crit_edge, %if.else92.if.end.i231_crit_edge, %if.then80.if.end.i231_crit_edge
  %tuner.2367 = phi i32 [ %tuner.2, %if.end105.if.end.i231_crit_edge ], [ %spec.select221, %if.else92.if.end.i231_crit_edge ], [ %spec.select, %if.then80.if.end.i231_crit_edge ]
  %73 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn = load ptr, ptr %sec_priv, align 4
  %74 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %.pn, align 4
  %.in = getelementptr inbounds %struct.ddb_io, ptr %.pn, i32 0, i32 1
  %76 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %.in, align 4
  %and.i226369 = and i32 %77, 1
  %input4.i228 = getelementptr %struct.ddb_port, ptr %75, i32 0, i32 15, i32 %and.i226369, i32 13
  %78 = ptrtoint ptr %input4.i228 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %input4.i228, align 8
  %conv.i229 = zext i8 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tuner.2367, i32 %conv.i229)
  %cmp5.not.i230 = icmp eq i32 %tuner.2367, %conv.i229
  br i1 %cmp5.not.i230, label %if.end.i231.if.end37.i_crit_edge, label %if.then7.i243

if.end.i231.if.end37.i_crit_edge:                 ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then7.i243:                                    ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %75, align 8
  %sh_prom.i232 = zext i32 %77 to i64
  %shl.i233 = shl nuw i64 1, %sh_prom.i232
  %conv9.i234 = trunc i64 %shl.i233 to i32
  %lnr.i235 = getelementptr inbounds %struct.ddb_port, ptr %75, i32 0, i32 4
  %82 = ptrtoint ptr %lnr.i235 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %lnr.i235, align 8
  %and13.i236 = and i32 %conv.i229, 3
  %arrayidx14.i237 = getelementptr %struct.ddb, ptr %81, i32 0, i32 6, i32 %83, i32 6, i32 3, i32 %and13.i236
  %84 = ptrtoint ptr %arrayidx14.i237 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx14.i237, align 4
  %and15.i238 = and i32 %85, %conv9.i234
  %neg.i239 = xor i32 %conv9.i234, -1
  %and25.i240 = and i32 %85, %neg.i239
  store i32 %and25.i240, ptr %arrayidx14.i237, align 4
  %conv26.i = trunc i32 %tuner.2367 to i8
  %86 = ptrtoint ptr %input4.i228 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv26.i, ptr %input4.i228, align 8
  %87 = load i32, ptr %lnr.i235, align 8
  %and35.i = and i32 %tuner.2367, 3
  %arrayidx36.i241 = getelementptr %struct.ddb, ptr %81, i32 0, i32 6, i32 %87, i32 6, i32 3, i32 %and35.i
  %88 = ptrtoint ptr %arrayidx36.i241 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx36.i241, align 4
  %or.i242 = or i32 %89, %and15.i238
  store i32 %or.i242, ptr %arrayidx36.i241, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then7.i243, %if.end.i231.if.end37.i_crit_edge
  %set_input.i244 = getelementptr %struct.ddb_port, ptr %75, i32 0, i32 15, i32 %and.i226369, i32 18
  %90 = ptrtoint ptr %set_input.i244 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %set_input.i244, align 4
  %call.i245 = tail call i32 %91(ptr noundef %fe, i32 noundef %tuner.2367) #6
  br label %max_set_input_unlocked.exit247

max_set_input_unlocked.exit247:                   ; preds = %if.end37.i, %if.end105.max_set_input_unlocked.exit247_crit_edge
  %retval.0.i246 = phi i32 [ %call.i245, %if.end37.i ], [ -22, %if.end105.max_set_input_unlocked.exit247_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %11)
  %cmp107.not = icmp eq i32 %65, %11
  br i1 %cmp107.not, label %max_set_input_unlocked.exit247.sw.epilog_crit_edge, label %if.then109

max_set_input_unlocked.exit247.sw.epilog_crit_edge: ; preds = %max_set_input_unlocked.exit247
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then109:                                       ; preds = %max_set_input_unlocked.exit247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool110.not = icmp eq i32 %65, 0
  %92 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lnr, align 8
  %arrayidx2.i314 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %93, i32 6, i32 2, i32 0
  %94 = ptrtoint ptr %arrayidx2.i314 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx2.i314, align 4
  br i1 %tobool110.not, label %if.else134, label %if.then111

if.then111:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i249 = icmp eq i32 %95, 0
  br i1 %cmp.i249, label %if.then111.lnb_set_voltage.exit256_crit_edge, label %if.end.i250

if.then111.lnb_set_voltage.exit256_crit_edge:     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit256

if.end.i250:                                      ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %93, i32 noundef 0, i32 noundef 3) #6
  %96 = ptrtoint ptr %arrayidx2.i314 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %arrayidx2.i314, align 4
  br label %lnb_set_voltage.exit256

lnb_set_voltage.exit256:                          ; preds = %if.end.i250, %if.then111.lnb_set_voltage.exit256_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp114 = icmp eq i32 %13, 1
  br i1 %cmp114, label %if.then116, label %lnb_set_voltage.exit256.sw.epilog_crit_edge

lnb_set_voltage.exit256.sw.epilog_crit_edge:      ; preds = %lnb_set_voltage.exit256
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then116:                                       ; preds = %lnb_set_voltage.exit256
  %97 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %lnr, align 8
  %arrayidx2.i257 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %98, i32 6, i32 2, i32 0
  %99 = ptrtoint ptr %arrayidx2.i257 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx2.i257, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i258 = icmp eq i32 %100, 0
  br i1 %cmp.i258, label %if.then116.lnb_set_voltage.exit265_crit_edge, label %if.end.i259

if.then116.lnb_set_voltage.exit265_crit_edge:     ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit265

if.end.i259:                                      ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %98, i32 noundef 0, i32 noundef 3) #6
  %101 = ptrtoint ptr %arrayidx2.i257 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %arrayidx2.i257, align 4
  br label %lnb_set_voltage.exit265

lnb_set_voltage.exit265:                          ; preds = %if.end.i259, %if.then116.lnb_set_voltage.exit265_crit_edge
  %102 = load i32, ptr @old_quattro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool119.not = icmp eq i32 %102, 0
  %103 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %lnr, align 8
  %arrayidx2.i285 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %104, i32 6, i32 2, i32 1
  %105 = ptrtoint ptr %arrayidx2.i285 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx2.i285, align 4
  br i1 %tobool119.not, label %if.else125, label %if.then120

if.then120:                                       ; preds = %lnb_set_voltage.exit265
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp.i267 = icmp eq i32 %106, 1
  br i1 %cmp.i267, label %if.then120.lnb_set_voltage.exit275_crit_edge, label %if.end.i268

if.then120.lnb_set_voltage.exit275_crit_edge:     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit275

if.end.i268:                                      ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %104, i32 noundef 1, i32 noundef 4) #6
  %107 = ptrtoint ptr %arrayidx2.i285 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %arrayidx2.i285, align 4
  br label %lnb_set_voltage.exit275

lnb_set_voltage.exit275:                          ; preds = %if.end.i268, %if.then120.lnb_set_voltage.exit275_crit_edge
  %108 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lnr, align 8
  %arrayidx2.i276 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %109, i32 6, i32 2, i32 2
  %110 = ptrtoint ptr %arrayidx2.i276 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx2.i276, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i277 = icmp eq i32 %111, 0
  br i1 %cmp.i277, label %lnb_set_voltage.exit275.if.end130_crit_edge, label %if.end.i278

lnb_set_voltage.exit275.if.end130_crit_edge:      ; preds = %lnb_set_voltage.exit275
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.end.i278:                                      ; preds = %lnb_set_voltage.exit275
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %109, i32 noundef 2, i32 noundef 3) #6
  %112 = ptrtoint ptr %arrayidx2.i276 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %arrayidx2.i276, align 4
  br label %if.end130

if.else125:                                       ; preds = %lnb_set_voltage.exit265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp.i286 = icmp eq i32 %106, 0
  br i1 %cmp.i286, label %if.else125.lnb_set_voltage.exit293_crit_edge, label %if.end.i287

if.else125.lnb_set_voltage.exit293_crit_edge:     ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit293

if.end.i287:                                      ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %104, i32 noundef 1, i32 noundef 3) #6
  %113 = ptrtoint ptr %arrayidx2.i285 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %arrayidx2.i285, align 4
  br label %lnb_set_voltage.exit293

lnb_set_voltage.exit293:                          ; preds = %if.end.i287, %if.else125.lnb_set_voltage.exit293_crit_edge
  %114 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %lnr, align 8
  %arrayidx2.i294 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %115, i32 6, i32 2, i32 2
  %116 = ptrtoint ptr %arrayidx2.i294 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx2.i294, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp.i295 = icmp eq i32 %117, 1
  br i1 %cmp.i295, label %lnb_set_voltage.exit293.if.end130_crit_edge, label %if.end.i296

lnb_set_voltage.exit293.if.end130_crit_edge:      ; preds = %lnb_set_voltage.exit293
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.end.i296:                                      ; preds = %lnb_set_voltage.exit293
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %115, i32 noundef 2, i32 noundef 4) #6
  %118 = ptrtoint ptr %arrayidx2.i294 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %arrayidx2.i294, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end.i296, %lnb_set_voltage.exit293.if.end130_crit_edge, %if.end.i278, %lnb_set_voltage.exit275.if.end130_crit_edge
  %119 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %lnr, align 8
  %arrayidx2.i304 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %120, i32 6, i32 2, i32 3
  %121 = ptrtoint ptr %arrayidx2.i304 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx2.i304, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %122)
  %cmp.i305 = icmp eq i32 %122, 1
  br i1 %cmp.i305, label %if.end130.sw.epilog_crit_edge, label %if.end.i306

if.end130.sw.epilog_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i306:                                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %120, i32 noundef 3, i32 noundef 4) #6
  %123 = ptrtoint ptr %arrayidx2.i304 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %arrayidx2.i304, align 4
  br label %sw.epilog

if.else134:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp.i315 = icmp eq i32 %95, 2
  br i1 %cmp.i315, label %if.else134.lnb_set_voltage.exit325_crit_edge, label %if.end.i316

if.else134.lnb_set_voltage.exit325_crit_edge:     ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit325

if.end.i316:                                      ; preds = %if.else134
  %arrayidx7.i317 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %93, i32 6, i32 3, i32 0
  %124 = ptrtoint ptr %arrayidx7.i317 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx7.i317, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i318 = icmp eq i32 %125, 0
  br i1 %tobool.not.i318, label %sw.epilog.sink.split.i321, label %if.end.i316.lnb_set_voltage.exit325_crit_edge

if.end.i316.lnb_set_voltage.exit325_crit_edge:    ; preds = %if.end.i316
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit325

sw.epilog.sink.split.i321:                        ; preds = %if.end.i316
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %93, i32 noundef 0, i32 noundef 5) #6
  %126 = ptrtoint ptr %arrayidx2.i314 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 2, ptr %arrayidx2.i314, align 4
  br label %lnb_set_voltage.exit325

lnb_set_voltage.exit325:                          ; preds = %sw.epilog.sink.split.i321, %if.end.i316.lnb_set_voltage.exit325_crit_edge, %if.else134.lnb_set_voltage.exit325_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp137 = icmp eq i32 %13, 1
  br i1 %cmp137, label %if.then139, label %lnb_set_voltage.exit325.sw.epilog_crit_edge

lnb_set_voltage.exit325.sw.epilog_crit_edge:      ; preds = %lnb_set_voltage.exit325
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then139:                                       ; preds = %lnb_set_voltage.exit325
  %127 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %lnr, align 8
  %arrayidx2.i326 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %128, i32 6, i32 2, i32 1
  %129 = ptrtoint ptr %arrayidx2.i326 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx2.i326, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp.i327 = icmp eq i32 %130, 2
  br i1 %cmp.i327, label %if.then139.lnb_set_voltage.exit337_crit_edge, label %if.end.i328

if.then139.lnb_set_voltage.exit337_crit_edge:     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit337

if.end.i328:                                      ; preds = %if.then139
  %arrayidx7.i329 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %128, i32 6, i32 3, i32 1
  %131 = ptrtoint ptr %arrayidx7.i329 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx7.i329, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i330 = icmp eq i32 %132, 0
  br i1 %tobool.not.i330, label %sw.epilog.sink.split.i333, label %if.end.i328.lnb_set_voltage.exit337_crit_edge

if.end.i328.lnb_set_voltage.exit337_crit_edge:    ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit337

sw.epilog.sink.split.i333:                        ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %128, i32 noundef 1, i32 noundef 5) #6
  %133 = ptrtoint ptr %arrayidx2.i326 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 2, ptr %arrayidx2.i326, align 4
  br label %lnb_set_voltage.exit337

lnb_set_voltage.exit337:                          ; preds = %sw.epilog.sink.split.i333, %if.end.i328.lnb_set_voltage.exit337_crit_edge, %if.then139.lnb_set_voltage.exit337_crit_edge
  %134 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %lnr, align 8
  %arrayidx2.i338 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %135, i32 6, i32 2, i32 2
  %136 = ptrtoint ptr %arrayidx2.i338 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx2.i338, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %137)
  %cmp.i339 = icmp eq i32 %137, 2
  br i1 %cmp.i339, label %lnb_set_voltage.exit337.lnb_set_voltage.exit349_crit_edge, label %if.end.i340

lnb_set_voltage.exit337.lnb_set_voltage.exit349_crit_edge: ; preds = %lnb_set_voltage.exit337
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit349

if.end.i340:                                      ; preds = %lnb_set_voltage.exit337
  %arrayidx7.i341 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %135, i32 6, i32 3, i32 2
  %138 = ptrtoint ptr %arrayidx7.i341 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx7.i341, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i342 = icmp eq i32 %139, 0
  br i1 %tobool.not.i342, label %sw.epilog.sink.split.i345, label %if.end.i340.lnb_set_voltage.exit349_crit_edge

if.end.i340.lnb_set_voltage.exit349_crit_edge:    ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #8
  br label %lnb_set_voltage.exit349

sw.epilog.sink.split.i345:                        ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %135, i32 noundef 2, i32 noundef 5) #6
  %140 = ptrtoint ptr %arrayidx2.i338 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 2, ptr %arrayidx2.i338, align 4
  br label %lnb_set_voltage.exit349

lnb_set_voltage.exit349:                          ; preds = %sw.epilog.sink.split.i345, %if.end.i340.lnb_set_voltage.exit349_crit_edge, %lnb_set_voltage.exit337.lnb_set_voltage.exit349_crit_edge
  %141 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %lnr, align 8
  %arrayidx2.i350 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %142, i32 6, i32 2, i32 3
  %143 = ptrtoint ptr %arrayidx2.i350 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx2.i350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %cmp.i351 = icmp eq i32 %144, 2
  br i1 %cmp.i351, label %lnb_set_voltage.exit349.sw.epilog_crit_edge, label %if.end.i352

lnb_set_voltage.exit349.sw.epilog_crit_edge:      ; preds = %lnb_set_voltage.exit349
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i352:                                      ; preds = %lnb_set_voltage.exit349
  %arrayidx7.i353 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %142, i32 6, i32 3, i32 3
  %145 = ptrtoint ptr %arrayidx7.i353 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx7.i353, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i354 = icmp eq i32 %146, 0
  br i1 %tobool.not.i354, label %sw.epilog.sink.split.i357, label %if.end.i352.sw.epilog_crit_edge

if.end.i352.sw.epilog_crit_edge:                  ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split.i357:                        ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %142, i32 noundef 3, i32 noundef 5) #6
  %147 = ptrtoint ptr %arrayidx2.i350 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 2, ptr %arrayidx2.i350, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split.i357, %if.end.i352.sw.epilog_crit_edge, %lnb_set_voltage.exit349.sw.epilog_crit_edge, %lnb_set_voltage.exit325.sw.epilog_crit_edge, %if.end.i306, %if.end130.sw.epilog_crit_edge, %lnb_set_voltage.exit256.sw.epilog_crit_edge, %max_set_input_unlocked.exit247.sw.epilog_crit_edge, %sw.epilog.i, %sw.bb.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %res.0 = phi i32 [ %retval.0.i246, %lnb_set_voltage.exit256.sw.epilog_crit_edge ], [ %retval.0.i246, %lnb_set_voltage.exit325.sw.epilog_crit_edge ], [ %retval.0.i246, %max_set_input_unlocked.exit247.sw.epilog_crit_edge ], [ %s.0.i, %sw.epilog.i ], [ 0, %if.end.sw.epilog_crit_edge ], [ 0, %sw.bb.i.sw.epilog_crit_edge ], [ %retval.0.i246, %if.end130.sw.epilog_crit_edge ], [ %retval.0.i246, %if.end.i306 ], [ %retval.0.i246, %lnb_set_voltage.exit349.sw.epilog_crit_edge ], [ %retval.0.i246, %if.end.i352.sw.epilog_crit_edge ], [ %retval.0.i246, %sw.epilog.sink.split.i357 ]
  %148 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %lnr, align 8
  %lnb152 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %149, i32 6
  tail call void @mutex_unlock(ptr noundef %lnb152) #6
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max_enable_high_lnb_voltage(ptr nocapture noundef readnone %fe, i32 noundef %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_set_tone(ptr noundef %fe, i32 noundef %tone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %nr = getelementptr inbounds %struct.ddb_io, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %and = and i32 %7, 1
  %lnr = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lnr, align 8
  %lnb = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %9, i32 6
  %fmode5 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %9, i32 6, i32 5
  %10 = ptrtoint ptr %fmode5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmode5, align 4
  tail call void @mutex_lock_nested(ptr noundef %lnb, i32 noundef 0) #6
  %tone10 = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 14
  %12 = ptrtoint ptr %tone10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %tone, ptr %tone10, align 4
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb13, label %sw.bb

sw.bb:                                            ; preds = %entry
  %13 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lnr, align 8
  %input12 = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 13
  %15 = ptrtoint ptr %input12 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %input12, align 8
  %conv = zext i8 %16 to i32
  %sh_prom.i = zext i8 %16 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %conv.i = trunc i64 %shl.i to i32
  %17 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %tone, label %sw.bb.sw.epilog_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb12.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  %tone2.i = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %14, i32 6, i32 1
  %18 = ptrtoint ptr %tone2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tone2.i, align 4
  %and.i = and i32 %19, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.sw.epilog_crit_edge, label %if.end.i

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = xor i32 %conv.i, -1
  %conv11.i = and i32 %19, %20
  %21 = ptrtoint ptr %tone2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv11.i, ptr %tone2.i, align 4
  br label %if.then30.i

sw.bb12.i:                                        ; preds = %sw.bb
  %tone16.i = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %14, i32 6, i32 1
  %22 = ptrtoint ptr %tone16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tone16.i, align 4
  %and17.i = and i32 %23, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %sw.bb12.i.sw.epilog_crit_edge

sw.bb12.i.sw.epilog_crit_edge:                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end20.i:                                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv28.i = or i32 %23, %conv.i
  %24 = ptrtoint ptr %tone16.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv28.i, ptr %tone16.i, align 4
  br label %if.then30.i

if.then30.i:                                      ; preds = %if.end20.i, %if.end.i
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %14, i32 noundef %conv, i32 noundef 0) #6
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %25 = load i32, ptr @old_quattro, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tone)
  %cmp23 = icmp eq i32 %tone, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb13
  %spec.select = select i1 %cmp23, i32 2, i32 0
  %voltage = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 15
  %26 = ptrtoint ptr %voltage to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %voltage, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp17 = icmp eq i32 %27, 1
  %or20 = or i32 %spec.select, 1
  br i1 %cmp17, label %if.then.if.end34_crit_edge, label %if.then.if.end.i66_crit_edge

if.then.if.end.i66_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i66

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.else:                                          ; preds = %sw.bb13
  %spec.select61 = zext i1 %cmp23 to i32
  %voltage28 = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 15
  %28 = ptrtoint ptr %voltage28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %voltage28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp29 = icmp eq i32 %29, 1
  %or32 = or i32 %spec.select61, 2
  br i1 %cmp29, label %if.else.if.end34_crit_edge, label %if.else.if.end.i66_crit_edge

if.else.if.end.i66_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i66

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.then.if.end34_crit_edge
  %tuner.2 = phi i32 [ %or20, %if.then.if.end34_crit_edge ], [ %or32, %if.else.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %tuner.2)
  %cmp.i = icmp sgt i32 %tuner.2, 3
  br i1 %cmp.i, label %if.end34.sw.epilog_crit_edge, label %if.end34.if.end.i66_crit_edge

if.end34.if.end.i66_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i66

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i66:                                       ; preds = %if.end34.if.end.i66_crit_edge, %if.else.if.end.i66_crit_edge, %if.then.if.end.i66_crit_edge
  %tuner.275 = phi i32 [ %tuner.2, %if.end34.if.end.i66_crit_edge ], [ %spec.select61, %if.else.if.end.i66_crit_edge ], [ %spec.select, %if.then.if.end.i66_crit_edge ]
  %30 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %sec_priv, align 4
  %31 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn, align 4
  %.in = getelementptr inbounds %struct.ddb_io, ptr %.pn, i32 0, i32 1
  %33 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %.in, align 4
  %and.i6477 = and i32 %34, 1
  %input4.i = getelementptr %struct.ddb_port, ptr %32, i32 0, i32 15, i32 %and.i6477, i32 13
  %35 = ptrtoint ptr %input4.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %input4.i, align 8
  %conv.i65 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tuner.275, i32 %conv.i65)
  %cmp5.not.i = icmp eq i32 %tuner.275, %conv.i65
  br i1 %cmp5.not.i, label %if.end.i66.if.end37.i_crit_edge, label %if.then7.i

if.end.i66.if.end37.i_crit_edge:                  ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then7.i:                                       ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %32, align 8
  %sh_prom.i67 = zext i32 %34 to i64
  %shl.i68 = shl nuw i64 1, %sh_prom.i67
  %conv9.i = trunc i64 %shl.i68 to i32
  %lnr.i = getelementptr inbounds %struct.ddb_port, ptr %32, i32 0, i32 4
  %39 = ptrtoint ptr %lnr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lnr.i, align 8
  %and13.i = and i32 %conv.i65, 3
  %arrayidx14.i = getelementptr %struct.ddb, ptr %38, i32 0, i32 6, i32 %40, i32 6, i32 3, i32 %and13.i
  %41 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx14.i, align 4
  %and15.i = and i32 %42, %conv9.i
  %neg.i = xor i32 %conv9.i, -1
  %and25.i = and i32 %42, %neg.i
  store i32 %and25.i, ptr %arrayidx14.i, align 4
  %conv26.i = trunc i32 %tuner.275 to i8
  %43 = ptrtoint ptr %input4.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv26.i, ptr %input4.i, align 8
  %44 = load i32, ptr %lnr.i, align 8
  %and35.i = and i32 %tuner.275, 3
  %arrayidx36.i = getelementptr %struct.ddb, ptr %38, i32 0, i32 6, i32 %44, i32 6, i32 3, i32 %and35.i
  %45 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx36.i, align 4
  %or.i = or i32 %46, %and15.i
  store i32 %or.i, ptr %arrayidx36.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then7.i, %if.end.i66.if.end37.i_crit_edge
  %set_input.i = getelementptr %struct.ddb_port, ptr %32, i32 0, i32 15, i32 %and.i6477, i32 18
  %47 = ptrtoint ptr %set_input.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_input.i, align 4
  %call.i = tail call i32 %48(ptr noundef %fe, i32 noundef %tuner.275) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end37.i, %if.end34.sw.epilog_crit_edge, %if.then30.i, %sw.bb12.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %res.0 = phi i32 [ 0, %sw.bb.i.sw.epilog_crit_edge ], [ 0, %sw.bb12.i.sw.epilog_crit_edge ], [ 0, %if.then30.i ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ %call.i, %if.end37.i ], [ -22, %if.end34.sw.epilog_crit_edge ]
  %49 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lnr, align 8
  %lnb39 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %50, i32 6
  tail call void @mutex_unlock(ptr noundef %lnb39) #6
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_send_master_cmd(ptr noundef %fe, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %nr = getelementptr inbounds %struct.ddb_io, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %and = and i32 %7, 1
  %lnr = getelementptr inbounds %struct.ddb_port, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lnr, align 8
  %shl = shl i32 %9, 28
  %fmode6 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %9, i32 6, i32 5
  %10 = ptrtoint ptr %fmode6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmode6, align 4
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %diseqc_send_master_cmd = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 19
  %12 = ptrtoint ptr %diseqc_send_master_cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %diseqc_send_master_cmd, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %13(ptr noundef %fe, ptr noundef %cmd) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %14 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lnr, align 8
  %lnb14 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %15, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lnb14, i32 noundef 0) #6
  %input15 = getelementptr %struct.ddb_port, ptr %3, i32 0, i32 15, i32 %and, i32 13
  %16 = ptrtoint ptr %input15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %input15, align 8
  %conv = zext i8 %17 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add16 = add nuw nsw i32 %mul, 1040
  %or = or i32 %add16, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %5, i32 0, i32 7
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 %or
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !79
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %20 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp1870.not = icmp eq i8 %21, 0
  br i1 %cmp1870.not, label %if.end10.for.end_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %arrayidx20 = getelementptr [6 x i8], ptr %cmd, i32 0, i32 %i.071
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %23 to i32
  %24 = ptrtoint ptr %input15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %input15, align 8
  %conv23 = zext i8 %25 to i32
  %mul24 = shl nuw nsw i32 %conv23, 5
  %add26 = add nuw nsw i32 %mul24, 1044
  %or27 = or i32 %add26, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %26 = shl nuw i32 %conv21, 24
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  %add.ptr.i68 = getelementptr i8, ptr %28, i32 %or27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %26) #6, !srcloc !79
  %inc = add nuw nsw i32 %i.071, 1
  %29 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %msg_len, align 1
  %conv17 = zext i8 %30 to i32
  %cmp18 = icmp ult i32 %inc, %conv17
  br i1 %cmp18, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end10.for.end_crit_edge
  %31 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lnr, align 8
  %33 = ptrtoint ptr %input15 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %input15, align 8
  %conv30 = zext i8 %34 to i32
  tail call fastcc void @lnb_command(ptr noundef %5, i32 noundef %32, i32 noundef %conv30, i32 noundef 6)
  %35 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lnr, align 8
  %lnb35 = getelementptr %struct.ddb, ptr %5, i32 0, i32 6, i32 %36, i32 6
  tail call void @mutex_unlock(ptr noundef %lnb35) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max_send_burst(ptr nocapture noundef readnone %fe, i32 noundef %burst) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddb_fe_attach_mci(ptr noundef %input, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.mci_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %nr = getelementptr inbounds %struct.ddb_io, ptr %input, i32 0, i32 1
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  %and = and i32 %5, 1
  %lnr = getelementptr inbounds %struct.ddb_port, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lnr, align 8
  %arrayidx7 = getelementptr %struct.ddb, ptr %3, i32 0, i32 6, i32 %7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %type)
  %cond = icmp eq i32 %type, 48
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %8 = call ptr @memcpy(ptr %cfg, ptr @ddb_max_sx8_cfg, i32 28)
  %9 = load i32, ptr @fmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  %set_input = getelementptr %struct.ddb_port, ptr %1, i32 0, i32 15, i32 %and, i32 18
  %call = call ptr @ddb_mci_attach(ptr noundef %input, ptr noundef nonnull %cfg, i32 noundef %5, ptr noundef %set_input) #6
  %fe = getelementptr %struct.ddb_port, ptr %1, i32 0, i32 15, i32 %and, i32 4
  %10 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %fe, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end13

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev12 = getelementptr inbounds %struct.ddb, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev12, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16) #9
  br label %cleanup

if.end13:                                         ; preds = %sw.bb
  %13 = ptrtoint ptr %set_input to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_input, align 4
  %tobool15.not = icmp eq ptr %14, null
  br i1 %tobool15.not, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.ddb, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev20, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp23 = icmp ult i32 %18, 4
  br i1 %cmp23, label %if.then24, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then24:                                        ; preds = %if.end21
  %19 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lnr, align 8
  call fastcc void @lnb_command(ptr noundef %3, i32 noundef %20, i32 noundef %18, i32 noundef 1)
  %21 = ptrtoint ptr %lnr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lnr, align 8
  %23 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr, align 4
  %arrayidx2.i = getelementptr %struct.ddb, ptr %3, i32 0, i32 6, i32 %22, i32 6, i32 2, i32 %24
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i = icmp eq i32 %26, 2
  br i1 %cmp.i, label %if.then24.if.end31_crit_edge, label %if.end.i

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.end.i:                                         ; preds = %if.then24
  %arrayidx7.i = getelementptr %struct.ddb, ptr %3, i32 0, i32 6, i32 %22, i32 6, i32 3, i32 %24
  %27 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %sw.epilog.sink.split.i, label %if.end.i.if.end31_crit_edge

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

sw.epilog.sink.split.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @lnb_command(ptr noundef %3, i32 noundef %22, i32 noundef %24, i32 noundef 5) #6
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %arrayidx2.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %sw.epilog.sink.split.i, %if.end.i.if.end31_crit_edge, %if.then24.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %30 = load i32, ptr @fmode, align 4
  %call32 = call i32 @ddb_lnb_init_fmode(ptr noundef %3, ptr noundef %arrayidx7, i32 noundef %30)
  %31 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fe, align 8
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %32, i32 0, i32 1, i32 25
  %33 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @max_set_voltage, ptr %set_voltage, align 4
  %34 = load ptr, ptr %fe, align 8
  %enable_high_lnb_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %34, i32 0, i32 1, i32 26
  %35 = ptrtoint ptr %enable_high_lnb_voltage to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @max_enable_high_lnb_voltage, ptr %enable_high_lnb_voltage, align 4
  %36 = load ptr, ptr %fe, align 8
  %set_tone = getelementptr inbounds %struct.dvb_frontend, ptr %36, i32 0, i32 1, i32 24
  %37 = ptrtoint ptr %set_tone to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @max_set_tone, ptr %set_tone, align 4
  %38 = load ptr, ptr %fe, align 8
  %diseqc_send_master_cmd = getelementptr inbounds %struct.dvb_frontend, ptr %38, i32 0, i32 1, i32 21
  %39 = ptrtoint ptr %diseqc_send_master_cmd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %diseqc_send_master_cmd, align 4
  %diseqc_send_master_cmd40 = getelementptr %struct.ddb_port, ptr %1, i32 0, i32 15, i32 %and, i32 19
  %41 = ptrtoint ptr %diseqc_send_master_cmd40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %diseqc_send_master_cmd40, align 8
  store ptr @max_send_master_cmd, ptr %diseqc_send_master_cmd, align 4
  %42 = load ptr, ptr %fe, align 8
  %diseqc_send_burst = getelementptr inbounds %struct.dvb_frontend, ptr %42, i32 0, i32 1, i32 23
  %43 = ptrtoint ptr %diseqc_send_burst to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @max_send_burst, ptr %diseqc_send_burst, align 4
  %44 = load ptr, ptr %fe, align 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %input, ptr %sec_priv, align 4
  %46 = trunc i32 %5 to i8
  %47 = and i8 %46, 3
  %conv = select i1 %cmp, i8 0, i8 %47
  %input47 = getelementptr %struct.ddb_port, ptr %1, i32 0, i32 15, i32 %and, i32 13
  %48 = ptrtoint ptr %input47 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv, ptr %input47, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -19, %do.end19 ], [ -19, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ddb_mci_attach(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxl_fw_read(ptr nocapture noundef readonly %priv, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev2 = getelementptr inbounds %struct.ddb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %nr = getelementptr inbounds %struct.ddb_link, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %5) #9
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %call = tail call i32 @ddbridge_flashread(ptr noundef %1, i32 noundef %7, ptr noundef %buf, i32 noundef 786432, i32 noundef %len) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ddbridge_flashread(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__param_fmode, !1, !"__param_fmode", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_fmodetype385, !1, !"__UNIQUE_ID_fmodetype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fmode386, !4, !"__UNIQUE_ID_fmode386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 46, i32 1}
!5 = !{ptr @__param_fmode_sat, !6, !"__param_fmode_sat", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 49, i32 1}
!7 = !{ptr @__UNIQUE_ID_fmode_sattype387, !6, !"__UNIQUE_ID_fmode_sattype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_fmode_sat388, !9, !"__UNIQUE_ID_fmode_sat388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 50, i32 1}
!10 = !{ptr @__param_old_quattro, !11, !"__param_old_quattro", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 53, i32 1}
!12 = !{ptr @__UNIQUE_ID_old_quattrotype389, !11, !"__UNIQUE_ID_old_quattrotype389", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_old_quattro390, !14, !"__UNIQUE_ID_old_quattro390", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 54, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 370, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ddb_lnb_init_fmode._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ddb_lnb_init_fmode._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 427, i32 12}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ddb_fe_attach_mxl5xx._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @ddb_fe_attach_mxl5xx._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 431, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ddb_fe_attach_mxl5xx._entry.9, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ddb_fe_attach_mxl5xx._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 436, i32 3}
!37 = !{ptr @ddb_fe_attach_mxl5xx._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ddb_fe_attach_mxl5xx._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 482, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ddb_fe_attach_mci._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ddb_fe_attach_mci._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 486, i32 3}
!46 = !{ptr @ddb_fe_attach_mci._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ddb_fe_attach_mci._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @fmode, !49, !"fmode", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 44, i32 12}
!50 = !{ptr @old_quattro, !51, !"old_quattro", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 52, i32 12}
!52 = !{ptr @__param_str_fmode, !1, !"__param_str_fmode", i1 false, i1 false}
!53 = !{ptr @__param_str_fmode_sat, !6, !"__param_str_fmode_sat", i1 false, i1 false}
!54 = !{ptr @fmode_sat, !55, !"fmode_sat", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 48, i32 12}
!56 = !{ptr @__param_str_old_quattro, !11, !"__param_str_old_quattro", i1 false, i1 false}
!57 = !{ptr @mxl5xx, !58, !"mxl5xx", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 399, i32 26}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 359, i32 2}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mxl_fw_read._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mxl_fw_read._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/ddbridge/ddbridge-max.c", i32 71, i32 3}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @lnb_command._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @lnb_command._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2158299704}
!79 = !{i64 4626820}
!80 = !{i64 4627238}
!81 = !{i64 2158299323}
