; ModuleID = '/llk/IR_all_yes/drivers/media/usb/stk1160/stk1160-i2c.c_pt.bc'
source_filename = "../drivers/media/usb/stk1160/stk1160-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stk1160 = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, %struct.list_head, %struct.vb2_queue, i32, ptr, i32, i32, %struct.stk1160_isoc_ctl, i32, i32, i32, i64, ptr, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.stk1160_isoc_ctl = type { i32, i32, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_i2c_debug = internal constant [18 x i8] c"stk1160.i2c_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_debug = internal constant %struct.kernel_param { ptr @__param_str_i2c_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @i2c_debug } }, section "__param", align 4
@__UNIQUE_ID_i2c_debugtype309 = internal constant [31 x i8] c"stk1160.parmtype=i2c_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_debug310 = internal constant [51 x i8] c"stk1160.parm=i2c_debug:enable debug messages [i2c]\00", section ".modinfo", align 1
@adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"stk1160\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stk1160\00", [24 x i8] zeroinitializer }, align 32
@stk1160_i2c_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013stk1160: cannot add i2c adapter (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stk1160_i2c_register\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/stk1160/stk1160-i2c.c\00", [56 x i8] zeroinitializer }, align 32
@stk1160_i2c_register._entry_ptr = internal global ptr @stk1160_i2c_register._entry, section ".printk_index", align 4
@client_template = internal constant { %struct.i2c_client, [232 x i8] } { %struct.i2c_client { i16 0, i16 0, [20 x i8] c"stk1160 internal\00\00\00\00", ptr null, %struct.device zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [232 x i8] zeroinitializer }, align 32
@algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @stk1160_i2c_xfer, ptr null, ptr null, ptr null, ptr @functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: addr=%x\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk1160_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr = internal global ptr @stk1160_i2c_xfer._entry, section ".printk_index", align 4
@stk1160_i2c_xfer._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017 no device\0A\00", [18 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr.8 = internal global ptr @stk1160_i2c_xfer._entry.6, section ".printk_index", align 4
@stk1160_i2c_xfer._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017 subaddr not selected\00", [40 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr.11 = internal global ptr @stk1160_i2c_xfer._entry.9, section ".printk_index", align 4
@stk1160_i2c_xfer._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.3, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017 len not supported\00", [43 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr.14 = internal global ptr @stk1160_i2c_xfer._entry.12, section ".printk_index", align 4
@stk1160_i2c_xfer._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.3, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017 subaddr=%x\00", [18 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr.17 = internal global ptr @stk1160_i2c_xfer._entry.15, section ".printk_index", align 4
@stk1160_i2c_xfer._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.3, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017 read=%x\00", [21 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr.20 = internal global ptr @stk1160_i2c_xfer._entry.18, section ".printk_index", align 4
@stk1160_i2c_xfer._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.3, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr.22 = internal global ptr @stk1160_i2c_xfer._entry.21, section ".printk_index", align 4
@stk1160_i2c_xfer._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017 subaddr=%x write=%x\00", [41 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr.25 = internal global ptr @stk1160_i2c_xfer._entry.23, section ".printk_index", align 4
@stk1160_i2c_xfer._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\017 OK\0A\00", [25 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr.28 = internal global ptr @stk1160_i2c_xfer._entry.26, section ".printk_index", align 4
@stk1160_i2c_xfer._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.3, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017 ERROR: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@stk1160_i2c_xfer._entry_ptr.31 = internal global ptr @stk1160_i2c_xfer._entry.29, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"i2c_debug\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 20, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"adap_template\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 233, i32 33 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 253, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 260, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"client_template\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 239, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant [5 x i8] c"algo\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 228, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 159, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 165, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 171, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 180, i32 5 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 185, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 190, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 197, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 202, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 211, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [43 x i8] c"../drivers/media/usb/stk1160/stk1160-i2c.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 216, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_i2c_debug310, ptr @__UNIQUE_ID_i2c_debugtype309, ptr @__param_i2c_debug, ptr @stk1160_i2c_register._entry, ptr @stk1160_i2c_register._entry_ptr, ptr @stk1160_i2c_xfer._entry, ptr @stk1160_i2c_xfer._entry.12, ptr @stk1160_i2c_xfer._entry.15, ptr @stk1160_i2c_xfer._entry.18, ptr @stk1160_i2c_xfer._entry.21, ptr @stk1160_i2c_xfer._entry.23, ptr @stk1160_i2c_xfer._entry.26, ptr @stk1160_i2c_xfer._entry.29, ptr @stk1160_i2c_xfer._entry.6, ptr @stk1160_i2c_xfer._entry.9, ptr @stk1160_i2c_xfer._entry_ptr, ptr @stk1160_i2c_xfer._entry_ptr.11, ptr @stk1160_i2c_xfer._entry_ptr.14, ptr @stk1160_i2c_xfer._entry_ptr.17, ptr @stk1160_i2c_xfer._entry_ptr.20, ptr @stk1160_i2c_xfer._entry_ptr.22, ptr @stk1160_i2c_xfer._entry_ptr.25, ptr @stk1160_i2c_xfer._entry_ptr.28, ptr @stk1160_i2c_xfer._entry_ptr.31, ptr @stk1160_i2c_xfer._entry_ptr.8, ptr @i2c_debug, ptr @adap_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @client_template, ptr @algo, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.24, ptr @.str.27, ptr @.str.30], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_template to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_i2c_xfer._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk1160_i2c_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 19
  %0 = call ptr @memcpy(ptr %i2c_adap, ptr @adap_template, i32 1360)
  %dev1 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  %parent = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 19, i32 9, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %parent, align 8
  %name = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 19, i32 12
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #6
  %algo_data = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 19, i32 3
  %4 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %algo_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 19, i32 9, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %call8 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call8) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_client = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 20
  %6 = call ptr @memcpy(ptr %i2c_client, ptr @client_template, i32 984)
  %adapter = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 20, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i2c_adap, ptr %adapter, align 8
  %call12 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 514, i16 noundef zeroext 15) #6
  %call13 = tail call i32 @stk1160_write_reg(ptr noundef %dev, i16 noundef zeroext 767, i16 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call8, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_write_reg(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk1160_i2c_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 19
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk1160_i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  %flag.i.i271 = alloca i8, align 1
  %flag.i.i255 = alloca i8, align 1
  %flag.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp309 = icmp sgt i32 %num, 0
  br i1 %cmp309, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0310 = phi i32 [ %inc191, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0310
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %3 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %4 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.do.end4_crit_edge, label %do.end

for.body.do.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %shl) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %for.body.do.end4_crit_edge
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0310, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool6.not = icmp eq i16 %6, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end4
  %7 = trunc i32 %shl to i16
  %conv.i = and i16 %7, 254
  %call.i = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 515, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then7.do.body13_crit_edge, label %if.end.i

if.then7.do.body13_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

if.end.i:                                         ; preds = %if.then7
  %call2.i = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 520, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.do.body13_crit_edge, label %if.end6.i

if.end.i.do.body13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 512, i16 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end6.i.do.body13_crit_edge, label %if.end11.i

if.end6.i.do.body13_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body13

if.end11.i:                                       ; preds = %if.end6.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag.i.i) #6
  %8 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %flag.i.i, align 1, !annotation !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -10, %9
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub5.i.i = add i32 %add.neg.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i.i)
  %cmp6.i.i = icmp slt i32 %sub5.i.i, 0
  br i1 %cmp6.i.i, label %if.end11.i.while.body.i.i_crit_edge, label %if.end11.i..loopexit.i_crit_edge

if.end11.i..loopexit.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %.loopexit.i

if.end11.i.while.body.i.i_crit_edge:              ; preds = %if.end11.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end11.i.while.body.i.i_crit_edge
  %call1.i.i = call i32 @stk1160_read_reg(ptr noundef %1, i16 noundef zeroext 513, ptr noundef nonnull %flag.i.i) #6
  %11 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flag.i.i, align 1
  %and4.i.i = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4.i.i)
  %tobool.not.i.i = icmp eq i8 %and4.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %stk1160_i2c_check_for_device.exit

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %13, %add.neg.i.i
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i..loopexit.i_crit_edge

if.end.i.i..loopexit.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %.loopexit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

.loopexit.i:                                      ; preds = %if.end.i.i..loopexit.i_crit_edge, %if.end11.i..loopexit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag.i.i) #6
  br label %do.body13

stk1160_i2c_check_for_device.exit:                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag.i.i) #6
  br label %do.body180

do.body13:                                        ; preds = %.loopexit.i, %if.end6.i.do.body13_crit_edge, %if.end.i.do.body13_crit_edge, %if.then7.do.body13_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %.loopexit.i ], [ %call.i, %if.then7.do.body13_crit_edge ], [ %call2.i, %if.end.i.do.body13_crit_edge ], [ %call7.i, %if.end6.i.do.body13_crit_edge ]
  %14 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %do.body13.cleanup_crit_edge, label %do.end18

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.else:                                          ; preds = %do.end4
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0310, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool27.not = icmp eq i16 %17, 0
  br i1 %tobool27.not, label %if.else40, label %do.body29

do.body29:                                        ; preds = %if.else
  %18 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.body29.cleanup_crit_edge, label %do.end34

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %do.body192

if.else40:                                        ; preds = %if.else
  %add = add nsw i32 %i.0310, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp41 = icmp slt i32 %add, %num
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp46 = icmp ult i16 %6, 3
  %or.cond = select i1 %cmp41, i1 %cmp46, i1 false
  br i1 %or.cond, label %land.lhs.true48, label %if.else40.if.else127_crit_edge

if.else40.if.else127_crit_edge:                   ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else127

land.lhs.true48:                                  ; preds = %if.else40
  %flags51 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %19 = ptrtoint ptr %flags51 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags51, align 2
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool54.not = icmp eq i16 %21, 0
  br i1 %tobool54.not, label %land.lhs.true48.if.else127_crit_edge, label %land.lhs.true55

land.lhs.true48.if.else127_crit_edge:             ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else127

land.lhs.true55:                                  ; preds = %land.lhs.true48
  %arrayidx50 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %25)
  %cmp63 = icmp eq i16 %23, %25
  br i1 %cmp63, label %if.then65, label %land.lhs.true55.if.else127_crit_edge

land.lhs.true55.if.else127_crit_edge:             ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else127

if.then65:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp69.not = icmp eq i16 %6, 1
  br i1 %cmp69.not, label %lor.lhs.false, label %if.then65.do.body78_crit_edge

if.then65.do.body78_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

lor.lhs.false:                                    ; preds = %if.then65
  %len73 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %26 = ptrtoint ptr %len73 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len73, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp75.not = icmp eq i16 %27, 1
  br i1 %cmp75.not, label %do.body90, label %lor.lhs.false.do.body78_crit_edge

lor.lhs.false.do.body78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

do.body78:                                        ; preds = %lor.lhs.false.do.body78_crit_edge, %if.then65.do.body78_crit_edge
  %28 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool79.not = icmp eq i32 %28, 0
  br i1 %tobool79.not, label %do.body78.cleanup_crit_edge, label %do.end83

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end83:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %do.body192

do.body90:                                        ; preds = %lor.lhs.false
  %29 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool91.not = icmp eq i32 %29, 0
  br i1 %tobool91.not, label %do.body90.do.end103_crit_edge, label %do.end95

do.body90.do.end103_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end103

do.end95:                                         ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0310, i32 3
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv99 = zext i8 %33 to i32
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %conv99) #9
  br label %do.end103

do.end103:                                        ; preds = %do.end95, %do.body90.do.end103_crit_edge
  %buf106 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0310, i32 3
  %34 = ptrtoint ptr %buf106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf106, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 1
  %buf110 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %38 = ptrtoint ptr %buf110 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf110, align 4
  %40 = trunc i32 %shl to i16
  %conv.i256 = and i16 %40, 254
  %call.i257 = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 515, i16 noundef zeroext %conv.i256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257)
  %cmp.i258 = icmp slt i32 %call.i257, 0
  br i1 %cmp.i258, label %do.end103.stk1160_i2c_read_reg.exit_crit_edge, label %if.end.i259

do.end103.stk1160_i2c_read_reg.exit_crit_edge:    ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %stk1160_i2c_read_reg.exit

if.end.i259:                                      ; preds = %do.end103
  %conv2.i = zext i8 %37 to i16
  %call3.i = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 520, i16 noundef zeroext %conv2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i259.stk1160_i2c_read_reg.exit_crit_edge, label %if.end7.i

if.end.i259.stk1160_i2c_read_reg.exit_crit_edge:  ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %stk1160_i2c_read_reg.exit

if.end7.i:                                        ; preds = %if.end.i259
  %call8.i = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 512, i16 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.stk1160_i2c_read_reg.exit_crit_edge, label %if.end12.i

if.end7.i.stk1160_i2c_read_reg.exit_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stk1160_i2c_read_reg.exit

if.end12.i:                                       ; preds = %if.end7.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag.i.i255) #6
  %41 = ptrtoint ptr %flag.i.i255 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %flag.i.i255, align 1, !annotation !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i260 = sub i32 -10, %42
  %43 = load volatile i32, ptr @jiffies, align 128
  %sub5.i.i261 = add i32 %add.neg.i.i260, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i.i261)
  %cmp6.i.i262 = icmp slt i32 %sub5.i.i261, 0
  br i1 %cmp6.i.i262, label %if.end12.i.while.body.i.i266_crit_edge, label %if.end12.i.stk1160_i2c_busy_wait.exit.thread.i_crit_edge

if.end12.i.stk1160_i2c_busy_wait.exit.thread.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stk1160_i2c_busy_wait.exit.thread.i

if.end12.i.while.body.i.i266_crit_edge:           ; preds = %if.end12.i
  br label %while.body.i.i266

while.body.i.i266:                                ; preds = %if.end.i.i269.while.body.i.i266_crit_edge, %if.end12.i.while.body.i.i266_crit_edge
  %call1.i.i263 = call i32 @stk1160_read_reg(ptr noundef %1, i16 noundef zeroext 513, ptr noundef nonnull %flag.i.i255) #6
  %44 = ptrtoint ptr %flag.i.i255 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flag.i.i255, align 1
  %and4.i.i264 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4.i.i264)
  %tobool.not.i.i265 = icmp eq i8 %and4.i.i264, 0
  br i1 %tobool.not.i.i265, label %if.end.i.i269, label %if.end17.i

if.end.i.i269:                                    ; preds = %while.body.i.i266
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i267 = add i32 %46, %add.neg.i.i260
  %cmp.i.i268 = icmp slt i32 %sub.i.i267, 0
  br i1 %cmp.i.i268, label %if.end.i.i269.while.body.i.i266_crit_edge, label %if.end.i.i269.stk1160_i2c_busy_wait.exit.thread.i_crit_edge

if.end.i.i269.stk1160_i2c_busy_wait.exit.thread.i_crit_edge: ; preds = %if.end.i.i269
  call void @__sanitizer_cov_trace_pc() #8
  br label %stk1160_i2c_busy_wait.exit.thread.i

if.end.i.i269.while.body.i.i266_crit_edge:        ; preds = %if.end.i.i269
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i266

stk1160_i2c_busy_wait.exit.thread.i:              ; preds = %if.end.i.i269.stk1160_i2c_busy_wait.exit.thread.i_crit_edge, %if.end12.i.stk1160_i2c_busy_wait.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag.i.i255) #6
  br label %stk1160_i2c_read_reg.exit

if.end17.i:                                       ; preds = %while.body.i.i266
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag.i.i255) #6
  %call18.i = call i32 @stk1160_read_reg(ptr noundef %1, i16 noundef zeroext 521, ptr noundef %39) #6
  %47 = call i32 @llvm.smin.i32(i32 %call18.i, i32 0) #6
  br label %stk1160_i2c_read_reg.exit

stk1160_i2c_read_reg.exit:                        ; preds = %if.end17.i, %stk1160_i2c_busy_wait.exit.thread.i, %if.end7.i.stk1160_i2c_read_reg.exit_crit_edge, %if.end.i259.stk1160_i2c_read_reg.exit_crit_edge, %do.end103.stk1160_i2c_read_reg.exit_crit_edge
  %retval.0.i270 = phi i32 [ %call.i257, %do.end103.stk1160_i2c_read_reg.exit_crit_edge ], [ %call3.i, %if.end.i259.stk1160_i2c_read_reg.exit_crit_edge ], [ %call8.i, %if.end7.i.stk1160_i2c_read_reg.exit_crit_edge ], [ %47, %if.end17.i ], [ -110, %stk1160_i2c_busy_wait.exit.thread.i ]
  %48 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool113.not = icmp eq i32 %48, 0
  br i1 %tobool113.not, label %stk1160_i2c_read_reg.exit.if.end175_crit_edge, label %do.end117

stk1160_i2c_read_reg.exit.if.end175_crit_edge:    ; preds = %stk1160_i2c_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

do.end117:                                        ; preds = %stk1160_i2c_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %buf110 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buf110, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %conv122 = zext i8 %52 to i32
  %call123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv122) #9
  br label %if.end175

if.else127:                                       ; preds = %land.lhs.true55.if.else127_crit_edge, %land.lhs.true48.if.else127_crit_edge, %if.else40.if.else127_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %6)
  %cmp131.not = icmp eq i16 %6, 2
  %53 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool147.not = icmp eq i32 %53, 0
  br i1 %cmp131.not, label %do.body146, label %do.body134

do.body134:                                       ; preds = %if.else127
  br i1 %tobool147.not, label %do.body134.cleanup_crit_edge, label %do.end139

do.body134.cleanup_crit_edge:                     ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end139:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #8
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %do.body192

do.body146:                                       ; preds = %if.else127
  br i1 %tobool147.not, label %do.body146.do.end164_crit_edge, label %do.end151

do.body146.do.end164_crit_edge:                   ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end164

do.end151:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  %buf154 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0310, i32 3
  %54 = ptrtoint ptr %buf154 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buf154, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  %conv156 = zext i8 %57 to i32
  %arrayidx159 = getelementptr i8, ptr %55, i32 1
  %58 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx159, align 1
  %conv160 = zext i8 %59 to i32
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv156, i32 noundef %conv160) #9
  br label %do.end164

do.end164:                                        ; preds = %do.end151, %do.body146.do.end164_crit_edge
  %buf167 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0310, i32 3
  %60 = ptrtoint ptr %buf167 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf167, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %arrayidx171 = getelementptr i8, ptr %61, i32 1
  %64 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx171, align 1
  %66 = trunc i32 %shl to i16
  %conv.i272 = and i16 %66, 254
  %call.i273 = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 515, i16 noundef zeroext %conv.i272) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i273)
  %cmp.i274 = icmp slt i32 %call.i273, 0
  br i1 %cmp.i274, label %do.end164.do.body192_crit_edge, label %if.end.i278

do.end164.do.body192_crit_edge:                   ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

if.end.i278:                                      ; preds = %do.end164
  %conv2.i275 = zext i8 %63 to i16
  %call3.i276 = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 516, i16 noundef zeroext %conv2.i275) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i276)
  %cmp4.i277 = icmp slt i32 %call3.i276, 0
  br i1 %cmp4.i277, label %if.end.i278.do.body192_crit_edge, label %if.end7.i279

if.end.i278.do.body192_crit_edge:                 ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

if.end7.i279:                                     ; preds = %if.end.i278
  %conv8.i = zext i8 %65 to i16
  %call9.i = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 517, i16 noundef zeroext %conv8.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end7.i279.do.body192_crit_edge, label %if.end13.i

if.end7.i279.do.body192_crit_edge:                ; preds = %if.end7.i279
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

if.end13.i:                                       ; preds = %if.end7.i279
  %call14.i = call i32 @stk1160_write_reg(ptr noundef %1, i16 noundef zeroext 512, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end13.i.do.body192_crit_edge, label %if.end18.i

if.end13.i.do.body192_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

if.end18.i:                                       ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag.i.i271) #6
  %67 = ptrtoint ptr %flag.i.i271 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %flag.i.i271, align 1, !annotation !71
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i280 = sub i32 -10, %68
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub5.i.i281 = add i32 %add.neg.i.i280, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i.i281)
  %cmp6.i.i282 = icmp slt i32 %sub5.i.i281, 0
  br i1 %cmp6.i.i282, label %if.end18.i.while.body.i.i286_crit_edge, label %if.end18.i..loopexit.i291_crit_edge

if.end18.i..loopexit.i291_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %.loopexit.i291

if.end18.i.while.body.i.i286_crit_edge:           ; preds = %if.end18.i
  br label %while.body.i.i286

while.body.i.i286:                                ; preds = %if.end.i.i289.while.body.i.i286_crit_edge, %if.end18.i.while.body.i.i286_crit_edge
  %call1.i.i283 = call i32 @stk1160_read_reg(ptr noundef %1, i16 noundef zeroext 513, ptr noundef nonnull %flag.i.i271) #6
  %70 = ptrtoint ptr %flag.i.i271 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flag.i.i271, align 1
  %and4.i.i284 = and i8 %71, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and4.i.i284)
  %tobool.not.i.i285 = icmp eq i8 %and4.i.i284, 0
  br i1 %tobool.not.i.i285, label %if.end.i.i289, label %stk1160_i2c_busy_wait.exit.i290

if.end.i.i289:                                    ; preds = %while.body.i.i286
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i287 = add i32 %72, %add.neg.i.i280
  %cmp.i.i288 = icmp slt i32 %sub.i.i287, 0
  br i1 %cmp.i.i288, label %if.end.i.i289.while.body.i.i286_crit_edge, label %if.end.i.i289..loopexit.i291_crit_edge

if.end.i.i289..loopexit.i291_crit_edge:           ; preds = %if.end.i.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %.loopexit.i291

if.end.i.i289.while.body.i.i286_crit_edge:        ; preds = %if.end.i.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i286

stk1160_i2c_busy_wait.exit.i290:                  ; preds = %while.body.i.i286
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag.i.i271) #6
  br label %do.body180

.loopexit.i291:                                   ; preds = %if.end.i.i289..loopexit.i291_crit_edge, %if.end18.i..loopexit.i291_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag.i.i271) #6
  br label %do.body192

if.end175:                                        ; preds = %do.end117, %stk1160_i2c_read_reg.exit.if.end175_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i270)
  %cmp176 = icmp slt i32 %retval.0.i270, 0
  br i1 %cmp176, label %if.end175.do.body192_crit_edge, label %if.end175.do.body180_crit_edge

if.end175.do.body180_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body180

if.end175.do.body192_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

do.body180:                                       ; preds = %if.end175.do.body180_crit_edge, %stk1160_i2c_busy_wait.exit.i290, %stk1160_i2c_check_for_device.exit
  %i.1304 = phi i32 [ %add, %if.end175.do.body180_crit_edge ], [ %i.0310, %stk1160_i2c_check_for_device.exit ], [ %i.0310, %stk1160_i2c_busy_wait.exit.i290 ]
  %73 = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool181.not = icmp eq i32 %73, 0
  br i1 %tobool181.not, label %do.body180.for.inc_crit_edge, label %do.end185

do.body180.for.inc_crit_edge:                     ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end185:                                        ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #8
  %call187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end185, %do.body180.for.inc_crit_edge
  %inc191 = add i32 %i.1304, 1
  %cmp = icmp slt i32 %inc191, %num
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body192:                                       ; preds = %if.end175.do.body192_crit_edge, %.loopexit.i291, %if.end13.i.do.body192_crit_edge, %if.end7.i279.do.body192_crit_edge, %if.end.i278.do.body192_crit_edge, %do.end164.do.body192_crit_edge, %do.end139, %do.end83, %do.end34
  %rc.1.ph = phi i32 [ -95, %do.end139 ], [ -95, %do.end83 ], [ -95, %do.end34 ], [ -110, %.loopexit.i291 ], [ %call.i273, %do.end164.do.body192_crit_edge ], [ %call3.i276, %if.end.i278.do.body192_crit_edge ], [ %call9.i, %if.end7.i279.do.body192_crit_edge ], [ %call14.i, %if.end13.i.do.body192_crit_edge ], [ %retval.0.i270, %if.end175.do.body192_crit_edge ]
  %.pr = load i32, ptr @i2c_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool193.not = icmp eq i32 %.pr, 0
  br i1 %tobool193.not, label %do.body192.cleanup_crit_edge, label %do.end197

do.body192.cleanup_crit_edge:                     ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end197:                                        ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  %call199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %rc.1.ph) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end197, %do.body192.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.body134.cleanup_crit_edge, %do.body78.cleanup_crit_edge, %do.body29.cleanup_crit_edge, %do.end18, %do.body13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end18 ], [ %retval.0.i.ph, %do.body13.cleanup_crit_edge ], [ %num, %do.end197 ], [ %num, %do.body192.cleanup_crit_edge ], [ %num, %do.body134.cleanup_crit_edge ], [ %num, %do.body78.cleanup_crit_edge ], [ %num, %do.body29.cleanup_crit_edge ], [ %num, %entry.cleanup_crit_edge ], [ %num, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @functionality(ptr nocapture noundef readnone %adap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592712
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_read_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__param_i2c_debug, !1, !"__param_i2c_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_debugtype309, !1, !"__UNIQUE_ID_i2c_debugtype309", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_debug310, !4, !"__UNIQUE_ID_i2c_debug310", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 22, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 253, i32 30}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 260, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @stk1160_i2c_register._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @stk1160_i2c_register._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @i2c_debug, !14, !"i2c_debug", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 20, i32 21}
!15 = !{ptr @__param_str_i2c_debug, !1, !"__param_str_i2c_debug", i1 false, i1 false}
!16 = !{ptr @adap_template, !17, !"adap_template", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 233, i32 33}
!18 = !{ptr @algo, !19, !"algo", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 228, i32 35}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 159, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stk1160_i2c_xfer._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @stk1160_i2c_xfer._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 165, i32 5}
!27 = !{ptr @stk1160_i2c_xfer._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @stk1160_i2c_xfer._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 171, i32 4}
!31 = !{ptr @stk1160_i2c_xfer._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @stk1160_i2c_xfer._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 180, i32 5}
!35 = !{ptr @stk1160_i2c_xfer._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @stk1160_i2c_xfer._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 185, i32 4}
!39 = !{ptr @stk1160_i2c_xfer._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @stk1160_i2c_xfer._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 190, i32 4}
!43 = !{ptr @stk1160_i2c_xfer._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @stk1160_i2c_xfer._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @stk1160_i2c_xfer._entry.21, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 197, i32 5}
!47 = !{ptr @stk1160_i2c_xfer._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 202, i32 4}
!50 = !{ptr @stk1160_i2c_xfer._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @stk1160_i2c_xfer._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 211, i32 3}
!54 = !{ptr @stk1160_i2c_xfer._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @stk1160_i2c_xfer._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 216, i32 2}
!58 = !{ptr @stk1160_i2c_xfer._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @stk1160_i2c_xfer._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @client_template, !61, !"client_template", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/stk1160/stk1160-i2c.c", i32 239, i32 32}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
