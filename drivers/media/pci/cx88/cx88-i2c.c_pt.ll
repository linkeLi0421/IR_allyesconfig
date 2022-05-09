; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }

@__param_str_i2c_debug = internal constant [17 x i8] c"cx88xx.i2c_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype385 = internal constant [30 x i8] c"cx88xx.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug386 = internal constant [50 x i8] c"cx88xx.parm=i2c_debug:enable debug messages [i2c]\00", section ".modinfo", align 1
@__param_str_i2c_scan = internal constant [16 x i8] c"cx88xx.i2c_scan\00", align 1
@i2c_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_scan = internal constant %struct.kernel_param { ptr @__param_str_i2c_scan, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @i2c_scan } }, section "__param", align 4
@__UNIQUE_ID_i2c_scantype387 = internal constant [29 x i8] c"cx88xx.parmtype=i2c_scan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_scan388 = internal constant [49 x i8] c"cx88xx.parm=i2c_scan:scan i2c bus at insmod time\00", section ".modinfo", align 1
@__param_str_i2c_udelay = internal constant [18 x i8] c"cx88xx.i2c_udelay\00", align 1
@i2c_udelay = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@__param_i2c_udelay = internal constant %struct.kernel_param { ptr @__param_str_i2c_udelay, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @i2c_udelay } }, section "__param", align 4
@__UNIQUE_ID_i2c_udelaytype389 = internal constant [31 x i8] c"cx88xx.parmtype=i2c_udelay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_udelay390 = internal constant [119 x i8] c"cx88xx.parm=i2c_udelay:i2c delay at insmod time, in usecs (should be 5 or higher). Lower value means higher bus speed.\00", section ".modinfo", align 1
@cx8800_i2c_algo_template = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @cx8800_bit_setsda, ptr @cx8800_bit_setscl, ptr @cx8800_bit_getsda, ptr @cx8800_bit_getscl, ptr null, ptr null, i32 16, i32 200, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx88xx internal\00", [16 x i8] zeroinitializer }, align 32
@cx88_i2c_init.tuner_data = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\0B\DC\86R", [28 x i8] zeroinitializer }, align 32
@cx88_i2c_init.tuner_msg = internal global { %struct.i2c_msg, [20 x i8] } { %struct.i2c_msg { i16 97, i16 0, i16 4, ptr @cx88_i2c_init.tuner_data }, [20 x i8] zeroinitializer }, align 32
@cx88_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017cx88xx: %s: i2c:i2c register ok\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx88_i2c_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/cx88/cx88-i2c.c\00", [62 x i8] zeroinitializer }, align 32
@cx88_i2c_init._entry_ptr = internal global ptr @cx88_i2c_init._entry, section ".printk_index", align 4
@cx88_i2c_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016cx88xx: i2c init: enabling analog demod on HVR1300/3000/4000 tuner\0A\00", [58 x i8] zeroinitializer }, align 32
@cx88_i2c_init._entry_ptr.6 = internal global ptr @cx88_i2c_init._entry.4, section ".printk_index", align 4
@cx88_i2c_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013cx88xx: i2c register FAILED\0A\00", [33 x i8] zeroinitializer }, align 32
@cx88_i2c_init._entry_ptr.9 = internal global ptr @cx88_i2c_init._entry.7, section ".printk_index", align 4
@do_i2c_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cx88xx: i2c scan: found device @ 0x%x  [%s]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_i2c_scan\00", [20 x i8] zeroinitializer }, align 32
@do_i2c_scan._entry_ptr = internal global ptr @do_i2c_scan._entry, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lgdt330x\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda9887/cx22702\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tuner (analog)\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tuner (analog/dvb)\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xc5000\00", [25 x i8] zeroinitializer }, align 32
@i2c_devs = internal constant { <{ [101 x ptr], [27 x ptr] }>, [128 x i8] } { <{ [101 x ptr], [27 x ptr] }> <{ [101 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.16, ptr @.str.17, ptr null, ptr null, ptr @.str.18], [27 x ptr] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 53, i64 56, i64 68]
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 23, i32 21 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"i2c_scan\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 27, i32 21 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"i2c_udelay\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 31, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [25 x i8] c"cx8800_i2c_algo_template\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 88, i32 39 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 140, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"tuner_data\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 147, i32 13 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"tuner_msg\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 149, i32 25 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 156, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 161, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 170, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 118, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 100, i32 16 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 101, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 102, i32 16 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 103, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 104, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 105, i32 16 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"i2c_devs\00", align 1
@___asan_gen_.96 = private constant [37 x i8] c"../drivers/media/pci/cx88/cx88-i2c.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 99, i32 27 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_i2c_debug386, ptr @__UNIQUE_ID_i2c_debugtype385, ptr @__UNIQUE_ID_i2c_scan388, ptr @__UNIQUE_ID_i2c_scantype387, ptr @__UNIQUE_ID_i2c_udelay390, ptr @__UNIQUE_ID_i2c_udelaytype389, ptr @__param_i2c_debug, ptr @__param_i2c_scan, ptr @__param_i2c_udelay, ptr @cx88_i2c_init._entry, ptr @cx88_i2c_init._entry.4, ptr @cx88_i2c_init._entry.7, ptr @cx88_i2c_init._entry_ptr, ptr @cx88_i2c_init._entry_ptr.6, ptr @cx88_i2c_init._entry_ptr.9, ptr @do_i2c_scan._entry, ptr @do_i2c_scan._entry_ptr, ptr @i2c_debug, ptr @i2c_scan, ptr @i2c_udelay, ptr @cx8800_i2c_algo_template, ptr @.str, ptr @cx88_i2c_init.tuner_data, ptr @cx88_i2c_init.tuner_msg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @i2c_devs], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_udelay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_i2c_algo_template to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_i2c_init.tuner_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_i2c_init.tuner_msg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_i2c_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_i2c_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_i2c_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_devs to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx88_i2c_init(ptr noundef %core, ptr noundef %pci) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @i2c_udelay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %0)
  %cmp = icmp ult i32 %0, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i32 5, ptr @i2c_udelay, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i2c_algo = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 12
  %1 = call ptr @memcpy(ptr %i2c_algo, ptr @cx8800_i2c_algo_template, i32 40)
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %i2c_adap = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 11
  %parent = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 11, i32 9, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %parent, align 8
  %name = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 11, i32 12
  %name3 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 3
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name3, i32 noundef 48) #5
  %3 = ptrtoint ptr %i2c_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %i2c_adap, align 8
  %4 = load i32, ptr @i2c_udelay, align 4
  %udelay = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 12, i32 7
  %5 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %udelay, align 4
  %6 = ptrtoint ptr %i2c_algo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %core, ptr %i2c_algo, align 8
  %v4l2_dev = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 16
  %driver_data.i.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 11, i32 9, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %algo_data = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 11, i32 3
  %8 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %i2c_algo, ptr %algo_data, align 4
  %i2c_client = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 13
  %adapter = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 13, i32 3
  %9 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %i2c_adap, ptr %adapter, align 8
  %name13 = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 13, i32 2
  %call15 = tail call i32 @strscpy(ptr noundef %name13, ptr noundef nonnull @.str, i32 noundef 20) #5
  %i2c_state1.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 14
  %10 = ptrtoint ptr %i2c_state1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2c_state1.i, align 8
  %or.sink.i = or i32 %11, 2
  store i32 %or.sink.i, ptr %i2c_state1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %i2c_state1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i2c_state1.i, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 7
  %15 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %16, i32 892928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #5, !srcloc !76
  %17 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %18, i32 892928
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %20 = ptrtoint ptr %i2c_state1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i2c_state1.i, align 8
  %or.sink.i71 = or i32 %21, 1
  store i32 %or.sink.i71, ptr %i2c_state1.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %i2c_state1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i2c_state1.i, align 8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %25 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i74 = getelementptr i32, ptr %26, i32 892928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %24) #5, !srcloc !76
  %27 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i75 = getelementptr i32, ptr %28, i32 892928
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i75) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %call17 = tail call i32 @i2c_bit_add_bus(ptr noundef %i2c_adap) #5
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 15
  %30 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call17, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp19 = icmp eq i32 %call17, 0
  br i1 %cmp19, label %do.body, label %do.end40

do.body:                                          ; preds = %if.end
  %31 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp21.not = icmp eq i32 %31, 0
  br i1 %cmp21.not, label %do.body.do.end26_crit_edge, label %do.end

do.body.do.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  br label %do.end26

do.end26:                                         ; preds = %do.end, %do.body.do.end26_crit_edge
  %boardnr = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 22
  %32 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %boardnr, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %do.end26.sw.epilog_crit_edge [
    i32 56, label %do.end26.do.end28_crit_edge
    i32 53, label %do.end26.do.end28_crit_edge76
    i32 68, label %do.end26.do.end28_crit_edge77
  ]

do.end26.do.end28_crit_edge77:                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end26.do.end28_crit_edge76:                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end26.do.end28_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end26.sw.epilog_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end28:                                         ; preds = %do.end26.do.end28_crit_edge, %do.end26.do.end28_crit_edge76, %do.end26.do.end28_crit_edge77
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %call33 = tail call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull @cx88_i2c_init.tuner_msg, i32 noundef 1) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end28, %do.end26.sw.epilog_crit_edge
  %37 = load i32, ptr @i2c_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %sw.epilog.if.end43_crit_edge, label %if.then34

sw.epilog.if.end43_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then34:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #5
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %buf.i, align 1, !annotation !81
  %addr.i = getelementptr inbounds %struct.cx88_core, ptr %core, i32 0, i32 13, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then34
  %i.01.i = phi i32 [ 0, %if.then34 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.01.i to i16
  %39 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i, ptr %addr.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef nonnull %buf.i, i32 noundef 0, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw nsw i32 %i.01.i, 1
  %arrayidx.i = getelementptr [128 x ptr], ptr @i2c_devs, i32 0, i32 %i.01.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.12, ptr %41
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %shl.i, ptr noundef nonnull %spec.select.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %do_i2c_scan.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do_i2c_scan.exit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  br label %if.end43

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %do_i2c_scan.exit, %sw.epilog.if.end43_crit_edge
  %42 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i2c_rc, align 4
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx8800_bit_setscl(ptr nocapture noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %i2c_state1 = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %i2c_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_state1, align 8
  %and = and i32 %1, -3
  %masksel = select i1 %tobool.not, i32 0, i32 2
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %i2c_state1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %i2c_state2 = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 14
  %2 = ptrtoint ptr %i2c_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_state2, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %6, i32 892928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !76
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %8, i32 892928
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx8800_bit_setsda(ptr nocapture noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp ne i32 %state, 0
  %i2c_state1 = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %i2c_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_state1, align 8
  %and = and i32 %1, -2
  %masksel = zext i1 %tobool.not to i32
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %i2c_state1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %i2c_state2 = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 14
  %2 = ptrtoint ptr %i2c_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_state2, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %6, i32 892928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !76
  %7 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %8, i32 892928
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8800_bit_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 892928
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8800_bit_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 892928
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %3 = lshr i32 %2, 25
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !48, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__param_i2c_debug, !1, !"__param_i2c_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_debugtype385, !1, !"__UNIQUE_ID_i2c_debugtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_debug386, !4, !"__UNIQUE_ID_i2c_debug386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 25, i32 1}
!5 = !{ptr @__param_i2c_scan, !6, !"__param_i2c_scan", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_i2c_scantype387, !6, !"__UNIQUE_ID_i2c_scantype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_i2c_scan388, !9, !"__UNIQUE_ID_i2c_scan388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 29, i32 1}
!10 = !{ptr @__param_i2c_udelay, !11, !"__param_i2c_udelay", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 32, i32 1}
!12 = !{ptr @__UNIQUE_ID_i2c_udelaytype389, !11, !"__UNIQUE_ID_i2c_udelaytype389", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_i2c_udelay390, !14, !"__UNIQUE_ID_i2c_udelay390", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 33, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 140, i32 33}
!17 = !{ptr @cx88_i2c_init.tuner_data, !18, !"tuner_data", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 147, i32 13}
!19 = !{ptr @cx88_i2c_init.tuner_msg, !20, !"tuner_msg", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 149, i32 25}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 156, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cx88_i2c_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @cx88_i2c_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 161, i32 4}
!29 = !{ptr @cx88_i2c_init._entry.4, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cx88_i2c_init._entry_ptr.6, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 170, i32 3}
!33 = !{ptr @cx88_i2c_init._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cx88_i2c_init._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @i2c_debug, !36, !"i2c_debug", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 23, i32 21}
!37 = !{ptr @i2c_scan, !38, !"i2c_scan", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 27, i32 21}
!39 = !{ptr @__param_str_i2c_debug, !1, !"__param_str_i2c_debug", i1 false, i1 false}
!40 = !{ptr @__param_str_i2c_scan, !6, !"__param_str_i2c_scan", i1 false, i1 false}
!41 = !{ptr @__param_str_i2c_udelay, !11, !"__param_str_i2c_udelay", i1 false, i1 false}
!42 = !{ptr @i2c_udelay, !43, !"i2c_udelay", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 31, i32 21}
!44 = !{ptr @cx8800_i2c_algo_template, !45, !"cx8800_i2c_algo_template", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 88, i32 39}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 118, i32 3}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @do_i2c_scan._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @do_i2c_scan._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 100, i32 16}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 101, i32 16}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 102, i32 16}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 103, i32 16}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 104, i32 16}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 105, i32 16}
!64 = !{ptr @i2c_devs, !65, !"i2c_devs", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx88/cx88-i2c.c", i32 99, i32 27}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2158616412}
!76 = !{i64 5004740}
!77 = !{i64 5005158}
!78 = !{i64 2158617253}
!79 = !{i64 2158617577}
!80 = !{i64 2158618418}
!81 = !{!"auto-init"}
!82 = !{i64 2158619622}
!83 = !{i64 2158619020}
