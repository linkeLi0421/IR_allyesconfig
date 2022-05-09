; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/legacy/dbgp.c_pt.bc'
source_filename = "../drivers/usb/gadget/legacy/dbgp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_debug_descriptor = type { i8, i8, i8, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.gserial = type { %struct.usb_function, ptr, ptr, ptr, %struct.usb_cdc_line_coding, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>

@dbgp_driver = internal global { %struct.usb_gadget_driver, [32 x i8] } { %struct.usb_gadget_driver { ptr @.str, i32 3, ptr @dbgp_bind, ptr @dbgp_unbind, ptr @dbgp_setup, ptr @dbgp_disconnect, ptr null, ptr null, ptr @dbgp_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.list_head zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@tty_line = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_author238 = internal constant [32 x i8] c"g_dbgp.author=Stephane Duverger\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [45 x i8] c"g_dbgp.file=drivers/usb/gadget/legacy/g_dbgp\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [19 x i8] c"g_dbgp.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_g_dbgp__241_438_dbgp_init6 = internal global ptr @dbgp_init, section ".initcall6.init", align 4
@__exitcall_dbgp_exit = internal global ptr @dbgp_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dbgp\00", [27 x i8] zeroinitializer }, align 32
@dbgp.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dbgp.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dbgp.2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dbgp.3 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dbgp.4 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dbgp_bind.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"g_dbgp\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dbgp_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/usb/gadget/legacy/dbgp.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bind: success\0A\00", [17 x i8] zeroinitializer }, align 32
@dbgp_bind.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 81, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bind: failure (%d:%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@o_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@dbg_desc = internal global { %struct.usb_debug_descriptor, [28 x i8] } { %struct.usb_debug_descriptor { i8 4, i8 10, i8 0, i8 0 }, [28 x i8] zeroinitializer }, align 32
@dbgp_configure_endpoints.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.3, ptr @.str.7, i8 0, i8 68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dbgp_configure_endpoints\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ep config: failure (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@dbgp_setup.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dbgp_setup\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"setup: desc device\0A\00", [44 x i8] zeroinitializer }, align 32
@device_desc = internal global { %struct.usb_device_descriptor, [46 x i8] } { %struct.usb_device_descriptor { i8 18, i8 1, i16 2, i8 -1, i8 0, i8 0, i8 0, i16 9477, i16 -8512, i16 0, i8 0, i8 0, i8 0, i8 1 }, [46 x i8] zeroinitializer }, align 32
@dbgp_setup.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.10, i8 0, i8 92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setup: desc debug\0A\00", [45 x i8] zeroinitializer }, align 32
@dbgp_setup.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.11, i8 0, i8 95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setup: feat debug\0A\00", [45 x i8] zeroinitializer }, align 32
@dbgp_setup.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.12, i8 0, i8 101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"setup: failure req %x v %x\0A\00", [36 x i8] zeroinitializer }, align 32
@dbgp_setup_complete.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 83, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dbgp_setup_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"setup complete: %d, %d/%d\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 10]
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"dbgp_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 409, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"tty_line\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 232, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 410, i32 14 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"dbgp.0\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"dbgp.1\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"dbgp.2\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"dbgp.3\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"dbgp.4\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 321, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 325, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"i_desc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 51, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"o_desc\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 58, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"dbg_desc\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 46, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 273, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 364, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"device_desc\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 36, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 370, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 380, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 404, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [36 x i8] c"../drivers/usb/gadget/legacy/dbgp.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 333, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_dbgp_exit, ptr @__initcall__kmod_g_dbgp__241_438_dbgp_init6, ptr @dbgp_exit, ptr @dbgp_driver, ptr @tty_line, ptr @.str, ptr @dbgp.0, ptr @dbgp.1, ptr @dbgp.2, ptr @dbgp.3, ptr @dbgp.4, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @i_desc, ptr @o_desc, ptr @dbg_desc, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @device_desc, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgp_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_line to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgp.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgp.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgp.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgp.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbgp.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_desc to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dbgp_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @usb_gadget_unregister_driver(ptr noundef nonnull @dbgp_driver) #5
  %0 = load i8, ptr @tty_line, align 1
  tail call void @gserial_free_line(i8 noundef zeroext %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_free_line(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_gadget_probe_driver(ptr noundef nonnull @dbgp_driver) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgp_bind(ptr noundef %gadget, ptr nocapture noundef readnone %driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %gadget, ptr @dbgp.0, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %0 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep0, align 4
  %call = tail call ptr @usb_ep_alloc_request(ptr noundef %1, i32 noundef 3264) #5
  store ptr %call, ptr @dbgp.1, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body24_crit_edge, label %if.end

entry.do.body24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 128) #8
  %3 = load ptr, ptr @dbgp.1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %3, align 4
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end.do.body24_crit_edge, label %if.end5

if.end.do.body24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

if.end5:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 140) #8
  store ptr %call7.i.i, ptr @dbgp.4, align 4
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end5.do.body24_crit_edge, label %if.end9

if.end5.do.body24_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @gserial_alloc_line(ptr noundef nonnull @tty_line) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.do.body24_crit_edge

if.end9.do.body24_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @dbgp_configure_endpoints(ptr noundef %gadget)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.do.body24_crit_edge, label %do.body

if.end13.do.body24_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body24

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbgp_bind.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dbgp_bind, %cleanup)) #5
          to label %if.then22 [label %cleanup], !srcloc !64

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = load ptr, ptr @dbgp.0, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbgp_bind.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %cleanup

do.body24:                                        ; preds = %if.end13.do.body24_crit_edge, %if.end9.do.body24_crit_edge, %if.end5.do.body24_crit_edge, %if.end.do.body24_crit_edge, %entry.do.body24_crit_edge
  %stp.0 = phi i32 [ 1, %entry.do.body24_crit_edge ], [ 2, %if.end.do.body24_crit_edge ], [ 3, %if.end5.do.body24_crit_edge ], [ 4, %if.end9.do.body24_crit_edge ], [ 5, %if.end13.do.body24_crit_edge ]
  %err.0 = phi i32 [ -12, %entry.do.body24_crit_edge ], [ -12, %if.end.do.body24_crit_edge ], [ -12, %if.end5.do.body24_crit_edge ], [ -19, %if.end9.do.body24_crit_edge ], [ %call14, %if.end13.do.body24_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbgp_bind.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dbgp_bind, %do.end42)) #5
          to label %if.then38 [label %do.end42], !srcloc !64

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %dev39 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbgp_bind.__UNIQUE_ID_ddebug230, ptr noundef %dev39, ptr noundef nonnull @.str.5, i32 noundef %stp.0, i32 noundef %err.0) #5
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body24
  %8 = load ptr, ptr @dbgp.4, align 4
  tail call void @kfree(ptr noundef %8) #5
  store ptr null, ptr @dbgp.4, align 4
  %9 = load ptr, ptr @dbgp.1, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end42.cleanup_crit_edge, label %if.then.i

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @kfree(ptr noundef %11) #5
  %12 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ep0, align 4
  %14 = load ptr, ptr @dbgp.1, align 4
  tail call void @usb_ep_free_request(ptr noundef %13, ptr noundef %14) #5
  store ptr null, ptr @dbgp.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end42.cleanup_crit_edge, %if.then22, %do.body
  %retval.0 = phi i32 [ 0, %if.then22 ], [ %err.0, %do.end42.cleanup_crit_edge ], [ %err.0, %if.then.i ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbgp_unbind(ptr nocapture noundef readonly %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dbgp.4, align 4
  tail call void @kfree(ptr noundef %0) #5
  store ptr null, ptr @dbgp.4, align 4
  %1 = load ptr, ptr @dbgp.1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %3) #5
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %4 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ep0, align 4
  %6 = load ptr, ptr @dbgp.1, align 4
  tail call void @usb_ep_free_request(ptr noundef %5, ptr noundef %6) #5
  store ptr null, ptr @dbgp.1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dbgp_setup(ptr noundef %gadget, ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dbgp.1, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %1 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bRequest, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %3 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %wValue, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %6 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wLength, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %8)
  %cmp = icmp ugt i16 %8, 512
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not = icmp sgt i8 %10, -1
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %wLength to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %wLength, align 2
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  %length.0 = phi i16 [ 512, %if.then3 ], [ %8, %entry.if.end5_crit_edge ]
  %conv6 = zext i8 %2 to i32
  %12 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %if.end5.do.body100_crit_edge [
    i8 6, label %if.then9
    i8 3, label %land.lhs.true
  ]

if.end5.do.body100_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

if.then9:                                         ; preds = %if.end5
  %13 = lshr i16 %5, 8
  %trunc = trunc i16 %13 to i8
  %14 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %trunc, label %if.then9.do.body100_crit_edge [
    i8 1, label %do.body
    i8 10, label %do.body19
  ]

if.then9.do.body100_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body:                                          ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbgp_setup.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dbgp_setup, %do.end)) #5
          to label %if.then15 [label %do.end], !srcloc !64

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %15 = load ptr, ptr @dbgp.0, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbgp_setup.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.9) #5
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %16 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep0, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %18, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %conv17 = trunc i56 %bf.lshr to i8
  store i8 %conv17, ptr getelementptr inbounds (%struct.usb_device_descriptor, ptr @device_desc, i32 0, i32 6), align 1
  br label %if.end77

do.body19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbgp_setup.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dbgp_setup, %if.end77)) #5
          to label %if.then33 [label %if.end77], !srcloc !64

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %19 = load ptr, ptr @dbgp.0, align 4
  %dev34 = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbgp_setup.__UNIQUE_ID_ddebug233, ptr noundef %dev34, ptr noundef nonnull @.str.10) #5
  br label %if.end77

land.lhs.true:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %4)
  %cmp43 = icmp eq i16 %4, 1536
  br i1 %cmp43, label %do.body46, label %land.lhs.true.do.body100_crit_edge

land.lhs.true.do.body100_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

do.body46:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbgp_setup.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dbgp_setup, %do.end64)) #5
          to label %if.then60 [label %do.end64], !srcloc !64

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %20 = load ptr, ptr @dbgp.0, align 4
  %dev61 = getelementptr inbounds %struct.usb_gadget, ptr %20, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbgp_setup.__UNIQUE_ID_ddebug234, ptr noundef %dev61, ptr noundef nonnull @.str.11) #5
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body46
  %call65 = tail call fastcc i32 @dbgp_configure_endpoints(ptr noundef %gadget)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end64.do.body100_crit_edge, label %if.end69

do.end64.do.body100_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

if.end69:                                         ; preds = %do.end64
  %21 = load ptr, ptr @dbgp.4, align 4
  %22 = load i8, ptr @tty_line, align 1
  %call70 = tail call i32 @gserial_connect(ptr noundef %21, i8 noundef zeroext %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end69.do.body100_crit_edge, label %if.end69.if.end77_crit_edge

if.end69.if.end77_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.end69.do.body100_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body100

if.end77:                                         ; preds = %if.end69.if.end77_crit_edge, %if.then33, %do.body19, %do.end
  %len.1 = phi i32 [ 0, %if.end69.if.end77_crit_edge ], [ 18, %do.end ], [ 4, %if.then33 ], [ 4, %do.body19 ]
  %tobool91.not = phi i1 [ true, %if.end69.if.end77_crit_edge ], [ false, %do.end ], [ false, %if.then33 ], [ false, %do.body19 ]
  %data.1 = phi ptr [ null, %if.end69.if.end77_crit_edge ], [ @device_desc, %do.end ], [ @dbg_desc, %if.then33 ], [ @dbg_desc, %do.body19 ]
  %conv79 = zext i16 %length.0 to i32
  %23 = tail call i32 @llvm.umin.i32(i32 %len.1, i32 %conv79)
  %length85 = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 1
  %24 = ptrtoint ptr %length85 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %length85, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 6
  %25 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load90 = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load90, -8193
  store i32 %bf.clear, ptr %zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool94.not = icmp eq i32 %23, 0
  %or.cond = select i1 %tobool91.not, i1 true, i1 %tobool94.not
  br i1 %or.cond, label %if.end77.if.end97_crit_edge, label %if.then95

if.end77.if.end97_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then95:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %0, align 4
  %28 = call ptr @memcpy(ptr %27, ptr %data.1, i32 %23)
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end77.if.end97_crit_edge
  %complete = getelementptr inbounds %struct.usb_request, ptr %0, i32 0, i32 7
  %29 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dbgp_setup_complete, ptr %complete, align 4
  %ep098 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %30 = ptrtoint ptr %ep098 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep098, align 4
  %call99 = tail call i32 @usb_ep_queue(ptr noundef %31, ptr noundef %0, i32 noundef 2592) #5
  br label %cleanup

do.body100:                                       ; preds = %if.end69.do.body100_crit_edge, %do.end64.do.body100_crit_edge, %land.lhs.true.do.body100_crit_edge, %if.then9.do.body100_crit_edge, %if.end5.do.body100_crit_edge
  %err.0 = phi i32 [ -95, %if.then9.do.body100_crit_edge ], [ %call65, %do.end64.do.body100_crit_edge ], [ %call70, %if.end69.do.body100_crit_edge ], [ -95, %land.lhs.true.do.body100_crit_edge ], [ -95, %if.end5.do.body100_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbgp_setup.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dbgp_setup, %cleanup)) #5
          to label %if.then114 [label %cleanup], !srcloc !64

if.then114:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  %32 = load ptr, ptr @dbgp.0, align 4
  %dev115 = getelementptr inbounds %struct.usb_gadget, ptr %32, i32 0, i32 11
  %conv117 = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbgp_setup.__UNIQUE_ID_ddebug237, ptr noundef %dev115, ptr noundef nonnull @.str.12, i32 noundef %conv6, i32 noundef %conv117) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %do.body100, %if.end97, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call99, %if.end97 ], [ -95, %if.then.cleanup_crit_edge ], [ %err.0, %if.then114 ], [ %err.0, %do.body100 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbgp_disconnect(ptr nocapture noundef readnone %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dbgp.4, align 4
  tail call void @gserial_disconnect(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_alloc_line(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dbgp_configure_endpoints(ptr noundef %gadget) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_ep_autoconfig_reset(ptr noundef %gadget) #5
  %call = tail call ptr @usb_ep_autoconfig(ptr noundef %gadget, ptr noundef nonnull @i_desc) #5
  store ptr %call, ptr @dbgp.2, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end:                                           ; preds = %entry
  store i16 2048, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @i_desc, i32 0, i32 4), align 1
  %call1 = tail call ptr @usb_ep_autoconfig(ptr noundef %gadget, ptr noundef nonnull @o_desc) #5
  store ptr %call1, ptr @dbgp.3, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.end4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store i16 2048, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @o_desc, i32 0, i32 4), align 1
  %0 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @i_desc, i32 0, i32 2), align 1
  store i8 %0, ptr getelementptr inbounds (%struct.usb_debug_descriptor, ptr @dbg_desc, i32 0, i32 2), align 1
  %1 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @o_desc, i32 0, i32 2), align 1
  store i8 %1, ptr getelementptr inbounds (%struct.usb_debug_descriptor, ptr @dbg_desc, i32 0, i32 3), align 1
  %2 = load ptr, ptr @dbgp.2, align 4
  %3 = load ptr, ptr @dbgp.4, align 4
  %in = getelementptr inbounds %struct.gserial, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %in, align 4
  %out = getelementptr inbounds %struct.gserial, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %out, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %2, i32 0, i32 9
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @i_desc, ptr %desc, align 4
  %7 = load ptr, ptr %out, align 4
  %desc7 = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %desc7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @o_desc, ptr %desc7, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %stp.0 = phi i32 [ 1, %entry.do.body_crit_edge ], [ 2, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbgp_configure_endpoints.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dbgp_configure_endpoints, %cleanup)) #5
          to label %if.then13 [label %cleanup], !srcloc !64

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = load ptr, ptr @dbgp.0, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbgp_configure_endpoints.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %stp.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -19, %if.then13 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_autoconfig_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_connect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbgp_setup_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbgp_setup_complete.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dbgp_setup_complete, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !64

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @dbgp.0, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %0, i32 0, i32 11
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %3 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbgp_setup_complete.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %2, i32 noundef %4, i32 noundef %6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_probe_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !51, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__UNIQUE_ID_author238, !1, !"__UNIQUE_ID_author238", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 436, i32 1}
!2 = !{ptr @__UNIQUE_ID_file239, !3, !"__UNIQUE_ID_file239", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 437, i32 1}
!4 = !{ptr @__UNIQUE_ID_license240, !3, !"__UNIQUE_ID_license240", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_g_dbgp__241_438_dbgp_init6, !6, !"__initcall__kmod_g_dbgp__241_438_dbgp_init6", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 438, i32 1}
!7 = !{ptr @__exitcall_dbgp_exit, !8, !"__exitcall_dbgp_exit", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 439, i32 1}
!9 = !{ptr @tty_line, !10, !"tty_line", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 232, i32 22}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 410, i32 14}
!13 = !{ptr @dbgp_driver, !14, !"dbgp_driver", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 409, i32 33}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 321, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dbgp_bind.__UNIQUE_ID_ddebug229, !16, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 325, i32 2}
!23 = !{ptr @dbgp_bind.__UNIQUE_ID_ddebug230, !22, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!24 = distinct !{null, !25, !"dbgp", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 34, i32 3}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 273, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dbgp_configure_endpoints.__UNIQUE_ID_ddebug228, !27, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!30 = !{ptr @i_desc, !31, !"i_desc", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 51, i32 39}
!32 = !{ptr @o_desc, !33, !"o_desc", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 58, i32 39}
!34 = !{ptr @dbg_desc, !35, !"dbg_desc", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 46, i32 36}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 364, i32 4}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dbgp_setup.__UNIQUE_ID_ddebug232, !37, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 370, i32 4}
!42 = !{ptr @dbgp_setup.__UNIQUE_ID_ddebug233, !41, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 380, i32 3}
!45 = !{ptr @dbgp_setup.__UNIQUE_ID_ddebug234, !44, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 404, i32 2}
!48 = !{ptr @dbgp_setup.__UNIQUE_ID_ddebug237, !47, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!49 = !{ptr @device_desc, !50, !"device_desc", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 36, i32 37}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/legacy/dbgp.c", i32 333, i32 2}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dbgp_setup_complete.__UNIQUE_ID_ddebug231, !52, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148698234, i64 2148698239, i64 2148698252, i64 2148698296, i64 2148698330, i64 2148698351}
