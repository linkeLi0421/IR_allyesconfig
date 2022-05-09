; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.142], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.142 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.143 }>
%union.anon.143 = type { i64 }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.145, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152 }
%struct.anon.145 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.148 = type { ptr, ptr }
%struct.anon.149 = type { ptr, ptr, ptr }
%struct.anon.150 = type { ptr, ptr }
%struct.anon.151 = type { ptr, ptr }
%struct.anon.152 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.141, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.141 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_i2c_debug = internal constant [18 x i8] c"cx23885.i2c_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype385 = internal constant [31 x i8] c"cx23885.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug386 = internal constant [51 x i8] c"cx23885.parm=i2c_debug:enable debug messages [i2c]\00", section ".modinfo", align 1
@__param_str_i2c_scan = internal constant [17 x i8] c"cx23885.i2c_scan\00", align 1
@i2c_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_scan = internal constant %struct.kernel_param { ptr @__param_str_i2c_scan, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @i2c_scan } }, section "__param", align 4
@__UNIQUE_ID_i2c_scantype387 = internal constant [30 x i8] c"cx23885.parmtype=i2c_scan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_scan388 = internal constant [50 x i8] c"cx23885.parm=i2c_scan:scan i2c bus at insmod time\00", section ".modinfo", align 1
@cx23885_i2c_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017cx23885: %s: i2c:%s(bus = %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx23885_i2c_register\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/cx23885/cx23885-i2c.c\00", [56 x i8] zeroinitializer }, align 32
@cx23885_i2c_register._entry_ptr = internal global ptr @cx23885_i2c_register._entry, section ".printk_index", align 4
@cx23885_i2c_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @cx23885_i2c_algo_template, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"cx23885\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@cx23885_i2c_client_template = internal constant { %struct.i2c_client, [232 x i8] } { %struct.i2c_client { i16 0, i16 0, [20 x i8] c"cx23885 internal\00\00\00\00", ptr null, %struct.device zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [232 x i8] zeroinitializer }, align 32
@cx23885_i2c_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017cx23885: %s: i2c:%s: i2c bus %d registered\0A\00", [50 x i8] zeroinitializer }, align 32
@cx23885_i2c_register._entry_ptr.5 = internal global ptr @cx23885_i2c_register._entry.3, section ".printk_index", align 4
@cx23885_i2c_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016cx23885: %s: scan bus %d:\0A\00", [35 x i8] zeroinitializer }, align 32
@cx23885_i2c_register._entry_ptr.8 = internal global ptr @cx23885_i2c_register._entry.6, section ".printk_index", align 4
@cx23885_i2c_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014cx23885: %s: i2c bus %d register FAILED\0A\00", [53 x i8] zeroinitializer }, align 32
@cx23885_i2c_register._entry_ptr.11 = internal global ptr @cx23885_i2c_register._entry.9, section ".printk_index", align 4
@cx23885_i2c_register.addr_list = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 107, i16 -2], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ir_video\00", [23 x i8] zeroinitializer }, align 32
@cx23885_av_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017cx23885: %s: i2c:%s(enabled = %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx23885_av_clk\00", [17 x i8] zeroinitializer }, align 32
@cx23885_av_clk._entry_ptr = internal global ptr @cx23885_av_clk._entry, section ".printk_index", align 4
@cx23885_i2c_algo_template = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_xfer, ptr null, ptr null, ptr null, ptr @cx23885_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@do_i2c_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cx23885: %s: i2c scan: found device @ 0x%04x  [%s]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_i2c_scan\00", [20 x i8] zeroinitializer }, align 32
@do_i2c_scan._entry_ptr = internal global ptr @do_i2c_scan._entry, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda10048\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dib7000pc\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lgdt3303\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx24227\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cs3308\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda8295\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9887\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx25837\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flatiron\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tuner/mt2131/tda8275\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tuner/mt2131/tda8275/xc5000/xc3028\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tuner/xc3028L\00", [18 x i8] zeroinitializer }, align 32
@i2c_devs = internal constant { <{ [101 x ptr], [27 x ptr] }>, [128 x i8] } { <{ [101 x ptr], [27 x ptr] }> <{ [101 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.18, ptr @.str.19, ptr null, ptr null, ptr null, ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.22, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.26, ptr null, ptr null, ptr null, ptr @.str.27, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.28, ptr @.str.29, ptr null, ptr null, ptr @.str.30], [27 x ptr] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017cx23885: %s: i2c:%s(num = %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_xfer\00", [23 x i8] zeroinitializer }, align 32
@i2c_xfer._entry_ptr = internal global ptr @i2c_xfer._entry, section ".printk_index", align 4
@i2c_xfer._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017cx23885: %s: i2c:%s(num = %d) addr = 0x%02x  len = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_xfer._entry_ptr.36 = internal global ptr @i2c_xfer._entry.34, section ".printk_index", align 4
@i2c_readbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017cx23885: %s: i2c:%s(msg->len=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_readbytes\00", [18 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr = internal global ptr @i2c_readbytes._entry, section ".printk_index", align 4
@i2c_readbytes._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017cx23885: %s: i2c:%s() returns 0\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.41 = internal global ptr @i2c_readbytes._entry.39, section ".printk_index", align 4
@i2c_readbytes._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017cx23885: %s: i2c: R\00", [42 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.44 = internal global ptr @i2c_readbytes._entry.42, section ".printk_index", align 4
@i2c_readbytes._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017cx23885: %s: i2c: <R %02x\00", [36 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.47 = internal global ptr @i2c_readbytes._entry.45, section ".printk_index", align 4
@i2c_readbytes._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.38, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017cx23885: %s: i2c: %02x\00", [39 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.50 = internal global ptr @i2c_readbytes._entry.48, section ".printk_index", align 4
@i2c_readbytes._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.38, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017cx23885: %s: i2c: >\0A\00", [41 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.53 = internal global ptr @i2c_readbytes._entry.51, section ".printk_index", align 4
@i2c_readbytes._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.38, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013cx23885:  ERR: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.56 = internal global ptr @i2c_readbytes._entry.54, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i2c_sendbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017cx23885: %s: i2c:%s(msg->wlen=%d, nextmsg->rlen=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_sendbytes\00", [18 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr = internal global ptr @i2c_sendbytes._entry, section ".printk_index", align 4
@i2c_sendbytes._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.58, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.60 = internal global ptr @i2c_sendbytes._entry.59, section ".printk_index", align 4
@i2c_sendbytes._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.58, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.62 = internal global ptr @i2c_sendbytes._entry.61, section ".printk_index", align 4
@i2c_sendbytes._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.58, ptr @.str.2, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017 <W %02x %02x\00", [16 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.65 = internal global ptr @i2c_sendbytes._entry.63, section ".printk_index", align 4
@i2c_sendbytes._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.58, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c >\0A\00", [26 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.68 = internal global ptr @i2c_sendbytes._entry.66, section ".printk_index", align 4
@i2c_sendbytes._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.58, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.71 = internal global ptr @i2c_sendbytes._entry.69, section ".printk_index", align 4
@i2c_sendbytes._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.58, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.73 = internal global ptr @i2c_sendbytes._entry.72, section ".printk_index", align 4
@i2c_sendbytes._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.58, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.75 = internal global ptr @i2c_sendbytes._entry.74, section ".printk_index", align 4
@___asan_gen_.76 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 17, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"i2c_scan\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 21, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 303, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"cx23885_i2c_adap_template\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 256, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"cx23885_i2c_client_template\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 262, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 319, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 321, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 326, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [10 x i8] c"addr_list\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 332, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 337, i32 22 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 358, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [26 x i8] c"cx23885_i2c_algo_template\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 249, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 293, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 267, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 268, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 269, i32 16 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 273, i32 16 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 270, i32 16 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 275, i32 16 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 272, i32 16 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 274, i32 16 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 276, i32 16 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 277, i32 16 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 278, i32 16 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 279, i32 16 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 280, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant [9 x i8] c"i2c_devs\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 266, i32 14 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 214, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 217, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 158, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 170, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 176, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 178, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 195, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 197, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 205, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 76, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 79, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 90, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 112, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 114, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 134, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 136, i32 5 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private constant [43 x i8] c"../drivers/media/pci/cx23885/cx23885-i2c.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 144, i32 3 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_i2c_debug386, ptr @__UNIQUE_ID_i2c_debugtype385, ptr @__UNIQUE_ID_i2c_scan388, ptr @__UNIQUE_ID_i2c_scantype387, ptr @__param_i2c_debug, ptr @__param_i2c_scan, ptr @cx23885_av_clk._entry, ptr @cx23885_av_clk._entry_ptr, ptr @cx23885_i2c_register._entry, ptr @cx23885_i2c_register._entry.3, ptr @cx23885_i2c_register._entry.6, ptr @cx23885_i2c_register._entry.9, ptr @cx23885_i2c_register._entry_ptr, ptr @cx23885_i2c_register._entry_ptr.11, ptr @cx23885_i2c_register._entry_ptr.5, ptr @cx23885_i2c_register._entry_ptr.8, ptr @do_i2c_scan._entry, ptr @do_i2c_scan._entry_ptr, ptr @i2c_readbytes._entry, ptr @i2c_readbytes._entry.39, ptr @i2c_readbytes._entry.42, ptr @i2c_readbytes._entry.45, ptr @i2c_readbytes._entry.48, ptr @i2c_readbytes._entry.51, ptr @i2c_readbytes._entry.54, ptr @i2c_readbytes._entry_ptr, ptr @i2c_readbytes._entry_ptr.41, ptr @i2c_readbytes._entry_ptr.44, ptr @i2c_readbytes._entry_ptr.47, ptr @i2c_readbytes._entry_ptr.50, ptr @i2c_readbytes._entry_ptr.53, ptr @i2c_readbytes._entry_ptr.56, ptr @i2c_sendbytes._entry, ptr @i2c_sendbytes._entry.59, ptr @i2c_sendbytes._entry.61, ptr @i2c_sendbytes._entry.63, ptr @i2c_sendbytes._entry.66, ptr @i2c_sendbytes._entry.69, ptr @i2c_sendbytes._entry.72, ptr @i2c_sendbytes._entry.74, ptr @i2c_sendbytes._entry_ptr, ptr @i2c_sendbytes._entry_ptr.60, ptr @i2c_sendbytes._entry_ptr.62, ptr @i2c_sendbytes._entry_ptr.65, ptr @i2c_sendbytes._entry_ptr.68, ptr @i2c_sendbytes._entry_ptr.71, ptr @i2c_sendbytes._entry_ptr.73, ptr @i2c_sendbytes._entry_ptr.75, ptr @i2c_xfer._entry, ptr @i2c_xfer._entry.34, ptr @i2c_xfer._entry_ptr, ptr @i2c_xfer._entry_ptr.36, ptr @i2c_debug, ptr @i2c_scan, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cx23885_i2c_adap_template, ptr @cx23885_i2c_client_template, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @cx23885_i2c_register.addr_list, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @cx23885_i2c_algo_template, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @i2c_devs, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.64, ptr @.str.67, ptr @.str.70], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_i2c_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_i2c_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_i2c_client_template to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_i2c_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_i2c_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_i2c_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_i2c_register.addr_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_av_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_i2c_algo_template to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_i2c_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_devs to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_xfer._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_i2c_register(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca i8, align 1
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %2 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nr = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 1
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, i32 noundef %4) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %i2c_adap = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %i2c_adap, ptr @cx23885_i2c_adap_template, i32 1360)
  %i2c_client = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %i2c_client, ptr @cx23885_i2c_client_template, i32 984)
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci, align 4
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %parent = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 2, i32 9, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev5, ptr %parent, align 8
  %name = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 2, i32 12
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 8
  %name10 = getelementptr inbounds %struct.cx23885_dev, ptr %11, i32 0, i32 19
  %call12 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name10, i32 noundef 48) #6
  %algo_data = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bus, ptr %algo_data, align 4
  %v4l2_dev = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1
  %driver_data.i.i = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 2, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %call16 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #6
  %adapter = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %i2c_adap, ptr %adapter, align 8
  %i2c_rc = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 4
  %15 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp19 = icmp eq i32 %16, 0
  br i1 %cmp19, label %do.body21, label %do.end50

do.body21:                                        ; preds = %do.end4
  %17 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp22.not = icmp eq i32 %17, 0
  br i1 %cmp22.not, label %do.body21.do.end34_crit_edge, label %do.end26

do.body21.do.end34_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end26:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %name28 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 19
  %nr30 = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 1
  %18 = ptrtoint ptr %nr30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr30, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %name28, i32 noundef %19) #9
  br label %do.end34

do.end34:                                         ; preds = %do.end26, %do.body21.do.end34_crit_edge
  %20 = load i32, ptr @i2c_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %do.end34.if.end56_crit_edge, label %do.end38

do.end34.if.end56_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

do.end38:                                         ; preds = %do.end34
  %name40 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 19
  %nr42 = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 1
  %21 = ptrtoint ptr %nr42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr42, align 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name40, i32 noundef %22) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #6
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %buf.i, align 1, !annotation !159
  %addr.i = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 3, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end38
  %i.011.i = phi i32 [ 0, %do.end38 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.011.i to i16
  %24 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %addr.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef nonnull %buf.i, i32 noundef 0, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [128 x ptr], ptr @i2c_devs, i32 0, i32 %i.011.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.17, ptr %26
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name40, i32 noundef %i.011.i, ptr noundef nonnull %spec.select.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %do_i2c_scan.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do_i2c_scan.exit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #6
  br label %if.end56

do.end50:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %name52 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 19
  %nr54 = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 1
  %27 = ptrtoint ptr %nr54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr54, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name52, i32 noundef %28) #9
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %do_i2c_scan.exit, %do.end34.if.end56_crit_edge
  %29 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp58 = icmp eq i32 %30, 0
  br i1 %cmp58, label %if.then59, label %if.end56.if.end64_crit_edge

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #6
  %31 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call61 = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.12, i32 noundef 20) #6
  %call63 = call ptr @i2c_new_scanned_device(ptr noundef %i2c_adap, ptr noundef nonnull %info, ptr noundef nonnull @cx23885_i2c_register.addr_list, ptr noundef nonnull @i2c_probe_func_quick_read) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end56.if.end64_crit_edge
  %32 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i2c_rc, align 8
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_probe_func_quick_read(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_i2c_unregister(ptr noundef %bus) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.cx23885_i2c, ptr %bus, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_av_clk(ptr nocapture noundef readonly %dev, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [3 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14, i32 noundef %enable) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 2
  %4 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 1
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %buffer, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 68, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enable)
  %cmp5 = icmp eq i32 %enable, 1
  %. = select i1 %cmp5, i8 5, i8 0
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %., ptr %3, align 1
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 68, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 16, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buffer, ptr %buf, align 4
  %i2c_adap = getelementptr %struct.cx23885_dev, ptr %dev, i32 0, i32 14, i32 2, i32 2
  %call11 = call i32 @i2c_xfer(ptr noundef %i2c_adap, ptr noundef nonnull %msg, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33, i32 noundef %num) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp599 = icmp sgt i32 %num, 0
  br i1 %cmp599, label %do.end4.do.body6_crit_edge, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end4.do.body6_crit_edge:                       ; preds = %do.end4
  br label %do.body6

for.cond:                                         ; preds = %if.end59
  %inc64 = add nsw i32 %i.1, 1
  %cmp5 = icmp slt i32 %inc64, %num
  br i1 %cmp5, label %for.cond.do.body6_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.do.body6_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body6

do.body6:                                         ; preds = %for.cond.do.body6_crit_edge, %do.end4.do.body6_crit_edge
  %i.0100 = phi i32 [ %inc64, %for.cond.do.body6_crit_edge ], [ 0, %do.end4.do.body6_crit_edge ]
  %1 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %do.body6.do.end18_crit_edge, label %do.end11

do.body6.do.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0100
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %3 to i32
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0100, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv14 = zext i16 %5 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.33, i32 noundef %num, i32 noundef %conv, i32 noundef %conv14) #9
  br label %do.end18

do.end18:                                         ; preds = %do.end11, %do.body6.do.end18_crit_edge
  %arrayidx19 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0100
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0100, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call fastcc i32 @i2c_readbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx19, i32 noundef 0)
  br label %if.end59

if.else:                                          ; preds = %do.end18
  %add = add nsw i32 %i.0100, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp24 = icmp slt i32 %add, %num
  br i1 %cmp24, label %land.lhs.true, label %if.else.if.else55_crit_edge

if.else.if.else55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else55

land.lhs.true:                                    ; preds = %if.else
  %arrayidx27 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %flags28 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %9 = ptrtoint ptr %flags28 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags28, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool31.not = icmp eq i16 %11, 0
  br i1 %tobool31.not, label %land.lhs.true.if.else55_crit_edge, label %land.lhs.true32

land.lhs.true.if.else55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else55

land.lhs.true32:                                  ; preds = %land.lhs.true
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx19, align 4
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp40 = icmp eq i16 %13, %15
  br i1 %cmp40, label %if.then42, label %land.lhs.true32.if.else55_crit_edge

land.lhs.true32.if.else55_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else55

if.then42:                                        ; preds = %land.lhs.true32
  %len46 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %16 = ptrtoint ptr %len46 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len46, align 4
  %conv47 = zext i16 %17 to i32
  %call48 = tail call fastcc i32 @i2c_sendbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx19, i32 noundef %conv47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then42.cleanup_crit_edge, label %if.end52

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call fastcc i32 @i2c_readbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx27, i32 noundef 1)
  br label %if.end59

if.else55:                                        ; preds = %land.lhs.true32.if.else55_crit_edge, %land.lhs.true.if.else55_crit_edge, %if.else.if.else55_crit_edge
  %call57 = tail call fastcc i32 @i2c_sendbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx19, i32 noundef 0)
  br label %if.end59

if.end59:                                         ; preds = %if.else55, %if.end52, %if.then21
  %retval1.0 = phi i32 [ %call23, %if.then21 ], [ %call54, %if.end52 ], [ %call57, %if.else55 ]
  %i.1 = phi i32 [ %i.0100, %if.then21 ], [ %add, %if.end52 ], [ %i.0100, %if.else55 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp60 = icmp slt i32 %retval1.0, 0
  br i1 %cmp60, label %if.end59.cleanup_crit_edge, label %for.cond

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end59.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %do.end4.cleanup_crit_edge ], [ %call48, %if.then42.cleanup_crit_edge ], [ %retval1.0, %if.end59.cleanup_crit_edge ], [ %num, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx23885_functionality(ptr nocapture noundef readnone %adap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_readbytes(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %joined) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %joined)
  %tobool3.not = icmp eq i32 %joined, 0
  %or.cond = and i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %do.end, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv = zext i16 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38, i32 noundef %conv) #9
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  %len9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp11 = icmp eq i16 %8, 0
  br i1 %cmp11, label %do.body14, label %if.end45

do.body14:                                        ; preds = %if.end8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %msg, align 4
  %conv17 = zext i16 %10 to i32
  %11 = shl nuw nsw i32 %conv17, 1
  %12 = and i32 %11, 254
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %reg_addr = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %reg_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_addr, align 8
  %shr = lshr i32 %16, 2
  %add.ptr = getelementptr i32, ptr %14, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %i2c_period = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %i2c_period to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_period, align 4
  %or21 = or i32 %18, 5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %reg_ctrl = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %reg_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg_ctrl, align 8
  %shr23 = lshr i32 %23, 2
  %add.ptr24 = getelementptr i32, ptr %21, i32 %shr23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %19) #6, !srcloc !161
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.body14
  %count.06.i = phi i32 [ 0, %do.body14 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %algo_data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %lmmio.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio.i.i, align 4
  %reg_stat.i.i = getelementptr inbounds %struct.cx23885_i2c, ptr %25, i32 0, i32 7
  %30 = ptrtoint ptr %reg_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_stat.i.i, align 4
  %shr.i.i = lshr i32 %31, 2
  %add.ptr.i.i = getelementptr i32, ptr %29, i32 %shr.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %33 = and i32 %32, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %i2c_wait_done.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 6871936) #6
  %inc.i = add nuw nsw i32 %count.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

i2c_wait_done.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i)
  %cmp1.i.not = icmp eq i32 %count.06.i, 64
  br i1 %cmp1.i.not, label %i2c_wait_done.exit.cleanup_crit_edge, label %if.end28

i2c_wait_done.exit.cleanup_crit_edge:             ; preds = %i2c_wait_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %i2c_wait_done.exit
  %35 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %algo_data, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 8
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio.i, align 4
  %reg_stat.i = getelementptr inbounds %struct.cx23885_i2c, ptr %36, i32 0, i32 7
  %41 = ptrtoint ptr %reg_stat.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_stat.i, align 4
  %shr.i = lshr i32 %42, 2
  %add.ptr.i = getelementptr i32, ptr %40, i32 %shr.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  %44 = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool30.not = icmp eq i32 %44, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %do.body33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body33:                                        ; preds = %if.end28
  %45 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp34.not = icmp eq i32 %45, 0
  br i1 %cmp34.not, label %do.body33.cleanup_crit_edge, label %do.end39

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end8
  %46 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool46.not = icmp eq i32 %46, 0
  br i1 %tobool46.not, label %if.end45.for.body.lr.ph_crit_edge, label %if.then47

if.end45.for.body.lr.ph_crit_edge:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

if.then47:                                        ; preds = %if.end45
  br i1 %tobool3.not, label %do.end68, label %do.end56

do.end56:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38) #9
  br label %if.end78

do.end68:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %msg, align 4
  %conv71 = zext i16 %48 to i32
  %shl72 = shl nuw nsw i32 %conv71, 1
  %add = or i32 %shl72, 1
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.38, i32 noundef %add) #9
  br label %if.end78

if.end78:                                         ; preds = %do.end68, %do.end56
  %49 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %49)
  %.pr = load i16, ptr %len9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp81233.not = icmp eq i16 %.pr, 0
  br i1 %cmp81233.not, label %if.end78.cleanup_crit_edge, label %if.end78.for.body.lr.ph_crit_edge

if.end78.for.body.lr.ph_crit_edge:                ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end78.for.body.lr.ph_crit_edge, %if.end45.for.body.lr.ph_crit_edge
  %50 = phi i16 [ %.pr, %if.end78.for.body.lr.ph_crit_edge ], [ %8, %if.end45.for.body.lr.ph_crit_edge ]
  %conv80232 = zext i16 %50 to i32
  %i2c_period83 = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 5
  %lmmio100 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %reg_addr101 = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 8
  %reg_ctrl108 = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 6
  %reg_rdata = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 9
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv80236 = phi i32 [ %conv80232, %for.body.lr.ph ], [ %conv80, %for.inc.for.body_crit_edge ]
  %cnt.0234 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %51 = ptrtoint ptr %i2c_period83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i2c_period83, align 4
  %sub = add nsw i32 %conv80236, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0234, i32 %sub)
  %cmp89 = icmp ult i32 %cnt.0234, %sub
  %spec.select.v = select i1 %cmp89, i32 4125, i32 4101
  %spec.select = or i32 %52, %spec.select.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %msg, align 4
  %conv98 = zext i16 %54 to i32
  %55 = shl nuw nsw i32 %conv98, 1
  %56 = and i32 %55, 254
  %57 = ptrtoint ptr %lmmio100 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio100, align 4
  %59 = ptrtoint ptr %reg_addr101 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_addr101, align 8
  %shr102 = lshr i32 %60, 2
  %add.ptr103 = getelementptr i32, ptr %58, i32 %shr102
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 %56) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %62 = ptrtoint ptr %lmmio100 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio100, align 4
  %64 = ptrtoint ptr %reg_ctrl108 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg_ctrl108, align 8
  %shr109 = lshr i32 %65, 2
  %add.ptr110 = getelementptr i32, ptr %63, i32 %shr109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %61) #6, !srcloc !161
  br label %for.body.i210

for.body.i210:                                    ; preds = %if.end.i213.for.body.i210_crit_edge, %for.body
  %count.06.i204 = phi i32 [ 0, %for.body ], [ %inc.i211, %if.end.i213.for.body.i210_crit_edge ]
  %66 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %algo_data, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %lmmio.i.i205 = getelementptr inbounds %struct.cx23885_dev, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %lmmio.i.i205 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lmmio.i.i205, align 4
  %reg_stat.i.i206 = getelementptr inbounds %struct.cx23885_i2c, ptr %67, i32 0, i32 7
  %72 = ptrtoint ptr %reg_stat.i.i206 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %reg_stat.i.i206, align 4
  %shr.i.i207 = lshr i32 %73, 2
  %add.ptr.i.i208 = getelementptr i32, ptr %71, i32 %shr.i.i207
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i208) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %75 = and i32 %74, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i209 = icmp eq i32 %75, 0
  br i1 %tobool.not.i209, label %i2c_wait_done.exit217, label %if.end.i213

if.end.i213:                                      ; preds = %for.body.i210
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 6871936) #6
  %inc.i211 = add nuw nsw i32 %count.06.i204, 1
  %exitcond.not.i212 = icmp eq i32 %inc.i211, 64
  br i1 %exitcond.not.i212, label %if.end.i213.eio_crit_edge, label %if.end.i213.for.body.i210_crit_edge

if.end.i213.for.body.i210_crit_edge:              ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i210

if.end.i213.eio_crit_edge:                        ; preds = %if.end.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %eio

i2c_wait_done.exit217:                            ; preds = %for.body.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i204)
  %cmp1.i215.not = icmp eq i32 %count.06.i204, 64
  br i1 %cmp1.i215.not, label %i2c_wait_done.exit217.eio_crit_edge, label %if.end114

i2c_wait_done.exit217.eio_crit_edge:              ; preds = %i2c_wait_done.exit217
  call void @__sanitizer_cov_trace_pc() #8
  br label %eio

if.end114:                                        ; preds = %i2c_wait_done.exit217
  %77 = ptrtoint ptr %lmmio100 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lmmio100, align 4
  %79 = ptrtoint ptr %reg_rdata to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reg_rdata, align 4
  %shr116 = lshr i32 %80, 2
  %add.ptr117 = getelementptr i32, ptr %78, i32 %shr116
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #6, !srcloc !163
  %82 = lshr i32 %81, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  %conv121 = trunc i32 %82 to i8
  %83 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %84, i32 %cnt.0234
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv121, ptr %arrayidx, align 1
  %86 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool122.not = icmp eq i32 %86, 0
  br i1 %tobool122.not, label %if.end114.for.inc_crit_edge, label %do.end130

if.end114.for.inc_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end130:                                        ; preds = %if.end114
  %87 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buf, align 4
  %arrayidx133 = getelementptr i8, ptr %88, i32 %cnt.0234
  %89 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %90 to i32
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.38, i32 noundef %conv134) #9
  %and139 = and i32 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body142, label %do.end130.for.inc_crit_edge

do.end130.for.inc_crit_edge:                      ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body142:                                       ; preds = %do.end130
  %91 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp143.not = icmp eq i32 %91, 0
  br i1 %cmp143.not, label %do.body142.for.inc_crit_edge, label %do.end148

do.body142.for.inc_crit_edge:                     ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end148:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #8
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.38) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end148, %do.body142.for.inc_crit_edge, %do.end130.for.inc_crit_edge, %if.end114.for.inc_crit_edge
  %inc = add nuw nsw i32 %cnt.0234, 1
  %92 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %len9, align 4
  %conv80 = zext i16 %93 to i32
  %cmp81 = icmp ult i32 %inc, %conv80
  br i1 %cmp81, label %for.inc.for.body_crit_edge, label %cleanup.loopexit226.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

eio:                                              ; preds = %i2c_wait_done.exit217.eio_crit_edge, %if.end.i213.eio_crit_edge
  %94 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool158.not = icmp eq i32 %94, 0
  br i1 %tobool158.not, label %eio.cleanup_crit_edge, label %do.end162

eio.cleanup_crit_edge:                            ; preds = %eio
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end162:                                        ; preds = %eio
  call void @__sanitizer_cov_trace_pc() #8
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef -5) #9
  br label %cleanup

cleanup.loopexit226.loopexit:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i16 %93 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit226.loopexit, %do.end162, %eio.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %do.end39, %do.body33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %i2c_wait_done.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %i2c_wait_done.exit.cleanup_crit_edge ], [ -6, %if.end28.cleanup_crit_edge ], [ 0, %do.end39 ], [ 0, %do.body33.cleanup_crit_edge ], [ -5, %do.end162 ], [ -5, %eio.cleanup_crit_edge ], [ %phi.cast, %cleanup.loopexit226.loopexit ], [ 0, %if.end78.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_sendbytes(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %joined_rlen) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %joined_rlen)
  %tobool.not = icmp eq i32 %joined_rlen, 0
  %4 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  br i1 %cmp8.not, label %do.body.if.end21_crit_edge, label %do.end

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv = zext i16 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %joined_rlen) #9
  br label %if.end21

do.body7:                                         ; preds = %entry
  br i1 %cmp8.not, label %do.body7.if.end21_crit_edge, label %do.end13

do.body7.if.end21_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %len15 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len15 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len15, align 4
  %conv16 = zext i16 %8 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.58, i32 noundef %conv16) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end13, %do.body7.if.end21_crit_edge, %do.end, %do.body.if.end21_crit_edge
  %len22 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len22 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp24 = icmp eq i16 %10, 0
  br i1 %cmp24, label %do.body27, label %if.end58

do.body27:                                        ; preds = %if.end21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %msg, align 4
  %conv31 = zext i16 %12 to i32
  %13 = shl nuw nsw i32 %conv31, 1
  %14 = and i32 %13, 254
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %reg_addr = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %reg_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_addr, align 8
  %shr = lshr i32 %18, 2
  %add.ptr = getelementptr i32, ptr %16, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %i2c_period = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %i2c_period to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i2c_period, align 4
  %or = or i32 %20, 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %reg_ctrl = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %reg_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_ctrl, align 8
  %shr36 = lshr i32 %25, 2
  %add.ptr37 = getelementptr i32, ptr %23, i32 %shr36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %21) #6, !srcloc !161
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.body27
  %count.06.i = phi i32 [ 0, %do.body27 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %algo_data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %lmmio.i.i = getelementptr inbounds %struct.cx23885_dev, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %lmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i.i, align 4
  %reg_stat.i.i = getelementptr inbounds %struct.cx23885_i2c, ptr %27, i32 0, i32 7
  %32 = ptrtoint ptr %reg_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_stat.i.i, align 4
  %shr.i.i = lshr i32 %33, 2
  %add.ptr.i.i = getelementptr i32, ptr %31, i32 %shr.i.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %35 = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i, label %i2c_wait_done.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 6871936) #6
  %inc.i = add nuw nsw i32 %count.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

i2c_wait_done.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i)
  %cmp1.i.not = icmp eq i32 %count.06.i, 64
  br i1 %cmp1.i.not, label %i2c_wait_done.exit.cleanup_crit_edge, label %if.end41

i2c_wait_done.exit.cleanup_crit_edge:             ; preds = %i2c_wait_done.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %i2c_wait_done.exit
  %37 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %algo_data, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio.i, align 4
  %reg_stat.i = getelementptr inbounds %struct.cx23885_i2c, ptr %38, i32 0, i32 7
  %43 = ptrtoint ptr %reg_stat.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_stat.i, align 4
  %shr.i = lshr i32 %44, 2
  %add.ptr.i = getelementptr i32, ptr %42, i32 %shr.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool43.not = icmp eq i32 %46, 0
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %do.body46

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body46:                                        ; preds = %if.end41
  %47 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp47.not = icmp eq i32 %47, 0
  br i1 %cmp47.not, label %do.body46.cleanup_crit_edge, label %do.end52

do.body46.cleanup_crit_edge:                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.58) #9
  br label %cleanup

if.end58:                                         ; preds = %if.end21
  %48 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %msg, align 4
  %conv60 = zext i16 %49 to i32
  %shl61 = shl i32 %conv60, 25
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %conv62 = zext i8 %53 to i32
  %or63 = or i32 %shl61, %conv62
  %i2c_period67 = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %i2c_period67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i2c_period67, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp72.not = icmp eq i16 %10, 1
  %spec.select.v = select i1 %tobool.not, i32 4100, i32 4116
  %ctrl.0.v = select i1 %cmp72.not, i32 %spec.select.v, i32 4124
  %ctrl.0 = or i32 %55, %ctrl.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %or63)
  %lmmio85 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 8
  %57 = ptrtoint ptr %lmmio85 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio85, align 4
  %reg_addr86 = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %reg_addr86 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_addr86, align 8
  %shr87 = lshr i32 %60, 2
  %add.ptr88 = getelementptr i32, ptr %58, i32 %shr87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %56) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %61 = shl nuw i32 %conv62, 24
  %62 = ptrtoint ptr %lmmio85 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio85, align 4
  %reg_wdata = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 10
  %64 = ptrtoint ptr %reg_wdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg_wdata, align 8
  %shr93 = lshr i32 %65, 2
  %add.ptr94 = getelementptr i32, ptr %63, i32 %shr93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %61) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void @arm_heavy_mb() #6
  %66 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  %67 = ptrtoint ptr %lmmio85 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lmmio85, align 4
  %reg_ctrl99 = getelementptr inbounds %struct.cx23885_i2c, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %reg_ctrl99 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg_ctrl99, align 8
  %shr100 = lshr i32 %70, 2
  %add.ptr101 = getelementptr i32, ptr %68, i32 %shr100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %66) #6, !srcloc !161
  br label %for.body.i272

for.body.i272:                                    ; preds = %if.end.i275.for.body.i272_crit_edge, %if.end58
  %count.06.i266 = phi i32 [ 0, %if.end58 ], [ %inc.i273, %if.end.i275.for.body.i272_crit_edge ]
  %71 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %algo_data, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %lmmio.i.i267 = getelementptr inbounds %struct.cx23885_dev, ptr %74, i32 0, i32 8
  %75 = ptrtoint ptr %lmmio.i.i267 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio.i.i267, align 4
  %reg_stat.i.i268 = getelementptr inbounds %struct.cx23885_i2c, ptr %72, i32 0, i32 7
  %77 = ptrtoint ptr %reg_stat.i.i268 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %reg_stat.i.i268, align 4
  %shr.i.i269 = lshr i32 %78, 2
  %add.ptr.i.i270 = getelementptr i32, ptr %76, i32 %shr.i.i269
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i270) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %80 = and i32 %79, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i271 = icmp eq i32 %80, 0
  br i1 %tobool.not.i271, label %i2c_wait_done.exit279, label %if.end.i275

if.end.i275:                                      ; preds = %for.body.i272
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 6871936) #6
  %inc.i273 = add nuw nsw i32 %count.06.i266, 1
  %exitcond.not.i274 = icmp eq i32 %inc.i273, 64
  br i1 %exitcond.not.i274, label %if.end.i275.eio_crit_edge, label %if.end.i275.for.body.i272_crit_edge

if.end.i275.for.body.i272_crit_edge:              ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i272

if.end.i275.eio_crit_edge:                        ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %eio

i2c_wait_done.exit279:                            ; preds = %for.body.i272
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i266)
  %cmp1.i277.not = icmp eq i32 %count.06.i266, 64
  br i1 %cmp1.i277.not, label %i2c_wait_done.exit279.eio_crit_edge, label %if.end105

i2c_wait_done.exit279.eio_crit_edge:              ; preds = %i2c_wait_done.exit279
  call void @__sanitizer_cov_trace_pc() #8
  br label %eio

if.end105:                                        ; preds = %i2c_wait_done.exit279
  %82 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool106.not = icmp eq i32 %82, 0
  br i1 %tobool106.not, label %if.end105.if.end127_crit_edge, label %do.end110

if.end105.if.end127_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

do.end110:                                        ; preds = %if.end105
  %83 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %msg, align 4
  %conv113 = zext i16 %84 to i32
  %shl114 = shl nuw nsw i32 %conv113, 1
  %85 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %buf, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 1
  %conv117 = zext i8 %88 to i32
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %shl114, i32 noundef %conv117) #9
  %and = and i32 %ctrl.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool119.not = icmp eq i32 %and, 0
  br i1 %tobool119.not, label %do.end123, label %do.end110.if.end127_crit_edge

do.end110.if.end127_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

do.end123:                                        ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #8
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #9
  br label %if.end127

if.end127:                                        ; preds = %do.end123, %do.end110.if.end127_crit_edge, %if.end105.if.end127_crit_edge
  %89 = ptrtoint ptr %len22 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %len22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %90)
  %cmp130316 = icmp ugt i16 %90, 1
  %conv129315 = zext i16 %90 to i32
  br i1 %cmp130316, label %if.end127.for.body_crit_edge, label %if.end127.cleanup_crit_edge

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end127.for.body_crit_edge:                     ; preds = %if.end127
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end127.for.body_crit_edge
  %conv129319 = phi i32 [ %conv129, %for.inc.for.body_crit_edge ], [ %conv129315, %if.end127.for.body_crit_edge ]
  %cnt.0317 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end127.for.body_crit_edge ]
  %91 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %buf, align 4
  %arrayidx133 = getelementptr i8, ptr %92, i32 %cnt.0317
  %93 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %94 to i32
  %95 = ptrtoint ptr %i2c_period67 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %i2c_period67, align 4
  %sub = add nsw i32 %conv129319, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0317, i32 %sub)
  %cmp140 = icmp slt i32 %cnt.0317, %sub
  %ctrl.1.v = select i1 %cmp140, i32 4124, i32 %spec.select.v
  %ctrl.1 = or i32 %96, %ctrl.1.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %lmmio85 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lmmio85, align 4
  %99 = ptrtoint ptr %reg_addr86 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %reg_addr86, align 8
  %shr155 = lshr i32 %100, 2
  %add.ptr156 = getelementptr i32, ptr %98, i32 %shr155
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 %56) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void @arm_heavy_mb() #6
  %101 = shl nuw i32 %conv134, 24
  %102 = ptrtoint ptr %lmmio85 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lmmio85, align 4
  %104 = ptrtoint ptr %reg_wdata to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %reg_wdata, align 8
  %shr162 = lshr i32 %105, 2
  %add.ptr163 = getelementptr i32, ptr %103, i32 %shr162
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %101) #6, !srcloc !161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void @arm_heavy_mb() #6
  %106 = tail call i32 @llvm.bswap.i32(i32 %ctrl.1)
  %107 = ptrtoint ptr %lmmio85 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %lmmio85, align 4
  %109 = ptrtoint ptr %reg_ctrl99 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %reg_ctrl99, align 8
  %shr169 = lshr i32 %110, 2
  %add.ptr170 = getelementptr i32, ptr %108, i32 %shr169
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170, i32 %106) #6, !srcloc !161
  br label %for.body.i287

for.body.i287:                                    ; preds = %if.end.i290.for.body.i287_crit_edge, %for.body
  %count.06.i281 = phi i32 [ 0, %for.body ], [ %inc.i288, %if.end.i290.for.body.i287_crit_edge ]
  %111 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %algo_data, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 8
  %lmmio.i.i282 = getelementptr inbounds %struct.cx23885_dev, ptr %114, i32 0, i32 8
  %115 = ptrtoint ptr %lmmio.i.i282 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %lmmio.i.i282, align 4
  %reg_stat.i.i283 = getelementptr inbounds %struct.cx23885_i2c, ptr %112, i32 0, i32 7
  %117 = ptrtoint ptr %reg_stat.i.i283 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %reg_stat.i.i283, align 4
  %shr.i.i284 = lshr i32 %118, 2
  %add.ptr.i.i285 = getelementptr i32, ptr %116, i32 %shr.i.i284
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i285) #6, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  %120 = and i32 %119, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i286 = icmp eq i32 %120, 0
  br i1 %tobool.not.i286, label %i2c_wait_done.exit294, label %if.end.i290

if.end.i290:                                      ; preds = %for.body.i287
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 6871936) #6
  %inc.i288 = add nuw nsw i32 %count.06.i281, 1
  %exitcond.not.i289 = icmp eq i32 %inc.i288, 64
  br i1 %exitcond.not.i289, label %if.end.i290.eio_crit_edge, label %if.end.i290.for.body.i287_crit_edge

if.end.i290.for.body.i287_crit_edge:              ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i287

if.end.i290.eio_crit_edge:                        ; preds = %if.end.i290
  call void @__sanitizer_cov_trace_pc() #8
  br label %eio

i2c_wait_done.exit294:                            ; preds = %for.body.i287
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.06.i281)
  %cmp1.i292.not = icmp eq i32 %count.06.i281, 64
  br i1 %cmp1.i292.not, label %i2c_wait_done.exit294.eio_crit_edge, label %if.end174

i2c_wait_done.exit294.eio_crit_edge:              ; preds = %i2c_wait_done.exit294
  call void @__sanitizer_cov_trace_pc() #8
  br label %eio

if.end174:                                        ; preds = %i2c_wait_done.exit294
  %122 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool175.not = icmp eq i32 %122, 0
  br i1 %tobool175.not, label %if.end174.for.inc_crit_edge, label %do.end179

if.end174.for.inc_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end179:                                        ; preds = %if.end174
  %123 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %buf, align 4
  %arrayidx182 = getelementptr i8, ptr %124, i32 %cnt.0317
  %125 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %126 to i32
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %conv183) #9
  %and185 = and i32 %ctrl.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %do.end190, label %do.end179.for.inc_crit_edge

do.end179.for.inc_crit_edge:                      ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end190:                                        ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #8
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end190, %do.end179.for.inc_crit_edge, %if.end174.for.inc_crit_edge
  %inc = add nuw nsw i32 %cnt.0317, 1
  %127 = ptrtoint ptr %len22 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %len22, align 4
  %conv129 = zext i16 %128 to i32
  %cmp130 = icmp ult i32 %inc, %conv129
  br i1 %cmp130, label %for.inc.for.body_crit_edge, label %cleanup.loopexit327

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

eio:                                              ; preds = %i2c_wait_done.exit294.eio_crit_edge, %if.end.i290.eio_crit_edge, %i2c_wait_done.exit279.eio_crit_edge, %if.end.i275.eio_crit_edge
  %129 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool197.not = icmp eq i32 %129, 0
  br i1 %tobool197.not, label %eio.cleanup_crit_edge, label %do.end201

eio.cleanup_crit_edge:                            ; preds = %eio
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end201:                                        ; preds = %eio
  call void @__sanitizer_cov_trace_pc() #8
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef -5) #9
  br label %cleanup

cleanup.loopexit327:                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %conv129.le = zext i16 %128 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit327, %do.end201, %eio.cleanup_crit_edge, %if.end127.cleanup_crit_edge, %do.end52, %do.body46.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %i2c_wait_done.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %i2c_wait_done.exit.cleanup_crit_edge ], [ -6, %if.end41.cleanup_crit_edge ], [ 0, %do.end52 ], [ 0, %do.body46.cleanup_crit_edge ], [ -5, %do.end201 ], [ -5, %eio.cleanup_crit_edge ], [ %conv129.le, %cleanup.loopexit327 ], [ %conv129315, %if.end127.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__param_i2c_debug, !1, !"__param_i2c_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_debugtype385, !1, !"__UNIQUE_ID_i2c_debugtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_debug386, !4, !"__UNIQUE_ID_i2c_debug386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 19, i32 1}
!5 = !{ptr @__param_i2c_scan, !6, !"__param_i2c_scan", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_i2c_scantype387, !6, !"__UNIQUE_ID_i2c_scantype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_i2c_scan388, !9, !"__UNIQUE_ID_i2c_scan388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 23, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 303, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cx23885_i2c_register._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @cx23885_i2c_register._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 319, i32 3}
!18 = !{ptr @cx23885_i2c_register._entry.3, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cx23885_i2c_register._entry_ptr.5, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 321, i32 4}
!22 = !{ptr @cx23885_i2c_register._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cx23885_i2c_register._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 326, i32 3}
!26 = !{ptr @cx23885_i2c_register._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cx23885_i2c_register._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @cx23885_i2c_register.addr_list, !29, !"addr_list", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 332, i32 31}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 337, i32 22}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 358, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cx23885_av_clk._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cx23885_av_clk._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @i2c_debug, !38, !"i2c_debug", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 17, i32 21}
!39 = !{ptr @i2c_scan, !40, !"i2c_scan", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 21, i32 21}
!41 = !{ptr @__param_str_i2c_debug, !1, !"__param_str_i2c_debug", i1 false, i1 false}
!42 = !{ptr @__param_str_i2c_scan, !6, !"__param_str_i2c_scan", i1 false, i1 false}
!43 = !{ptr @cx23885_i2c_adap_template, !44, !"cx23885_i2c_adap_template", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 256, i32 33}
!45 = !{ptr @cx23885_i2c_algo_template, !46, !"cx23885_i2c_algo_template", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 249, i32 35}
!47 = !{ptr @cx23885_i2c_client_template, !48, !"cx23885_i2c_client_template", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 262, i32 32}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 293, i32 3}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @do_i2c_scan._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @do_i2c_scan._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 267, i32 16}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 268, i32 16}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 269, i32 16}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 273, i32 16}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 270, i32 16}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 275, i32 16}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 272, i32 16}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 274, i32 16}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 276, i32 16}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 277, i32 16}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 278, i32 16}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 279, i32 16}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 280, i32 16}
!81 = !{ptr @i2c_devs, !82, !"i2c_devs", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 266, i32 14}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 214, i32 2}
!85 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @i2c_xfer._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @i2c_xfer._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 217, i32 3}
!90 = !{ptr @i2c_xfer._entry.34, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @i2c_xfer._entry_ptr.36, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 158, i32 3}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @i2c_readbytes._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @i2c_readbytes._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 170, i32 3}
!99 = !{ptr @i2c_readbytes._entry.39, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @i2c_readbytes._entry_ptr.41, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 176, i32 4}
!103 = !{ptr @i2c_readbytes._entry.42, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @i2c_readbytes._entry_ptr.44, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 178, i32 4}
!107 = !{ptr @i2c_readbytes._entry.45, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @i2c_readbytes._entry_ptr.47, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 195, i32 4}
!111 = !{ptr @i2c_readbytes._entry.48, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @i2c_readbytes._entry_ptr.50, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 197, i32 5}
!115 = !{ptr @i2c_readbytes._entry.51, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @i2c_readbytes._entry_ptr.53, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 205, i32 3}
!119 = !{ptr @i2c_readbytes._entry.54, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @i2c_readbytes._entry_ptr.56, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 76, i32 3}
!123 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @i2c_sendbytes._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @i2c_sendbytes._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @i2c_sendbytes._entry.59, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 79, i32 3}
!128 = !{ptr @i2c_sendbytes._entry_ptr.60, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @i2c_sendbytes._entry.61, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 90, i32 3}
!131 = !{ptr @i2c_sendbytes._entry_ptr.62, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 112, i32 3}
!134 = !{ptr @i2c_sendbytes._entry.63, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @i2c_sendbytes._entry_ptr.65, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 114, i32 4}
!138 = !{ptr @i2c_sendbytes._entry.66, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @i2c_sendbytes._entry_ptr.68, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 134, i32 4}
!142 = !{ptr @i2c_sendbytes._entry.69, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @i2c_sendbytes._entry_ptr.71, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @i2c_sendbytes._entry.72, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 136, i32 5}
!146 = !{ptr @i2c_sendbytes._entry_ptr.73, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @i2c_sendbytes._entry.74, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/cx23885/cx23885-i2c.c", i32 144, i32 3}
!149 = !{ptr @i2c_sendbytes._entry_ptr.75, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{!"auto-init"}
!160 = !{i64 2158608392}
!161 = !{i64 5007517}
!162 = !{i64 2158608982}
!163 = !{i64 5007935}
!164 = !{i64 2158584685}
!165 = !{i64 2158583913}
!166 = !{i64 2158614768}
!167 = !{i64 2158615306}
!168 = !{i64 2158616122}
!169 = !{i64 2158589381}
!170 = !{i64 2158589963}
!171 = !{i64 2158592340}
!172 = !{i64 2158592849}
!173 = !{i64 2158593358}
!174 = !{i64 2158596661}
!175 = !{i64 2158597170}
!176 = !{i64 2158597679}
