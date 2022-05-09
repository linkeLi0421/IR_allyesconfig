; ModuleID = '/llk/IR_all_yes/drivers/ntb/test/ntb_pingpong.c_pt.bc'
source_filename = "../drivers/ntb/test/ntb_pingpong.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.ntb_client = type { %struct.device_driver, %struct.ntb_client_ops }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntb_client_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ntb_ctx_ops = type { ptr, ptr, ptr }
%struct.pp_ctx = type { ptr, %struct.hrtimer, i64, i64, i32, i64, i64, %struct.atomic_t, %struct.spinlock, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ntb_dev = type { %struct.device, ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ntb_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }

@__UNIQUE_ID_file236 = internal constant [48 x i8] c"ntb_pingpong.file=drivers/ntb/test/ntb_pingpong\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [34 x i8] c"ntb_pingpong.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version238 = internal constant [25 x i8] c"ntb_pingpong.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ntb_pingpong\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author239 = internal constant [54 x i8] c"ntb_pingpong.author=Allen Hubbe <Allen.Hubbe@emc.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [57 x i8] c"ntb_pingpong.description=PCIe NTB Simple Pingpong Client\00", section ".modinfo", align 1
@__param_str_unsafe = internal constant [20 x i8] c"ntb_pingpong.unsafe\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@unsafe = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_unsafe = internal constant %struct.kernel_param { ptr @__param_str_unsafe, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @unsafe } }, section "__param", align 4
@__UNIQUE_ID_unsafetype241 = internal constant [34 x i8] c"ntb_pingpong.parmtype=unsafe:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_unsafe242 = internal constant [70 x i8] c"ntb_pingpong.parm=unsafe:Run even though ntb operations may be unsafe\00", section ".modinfo", align 1
@__param_str_delay_ms = internal constant [22 x i8] c"ntb_pingpong.delay_ms\00", align 1
@delay_ms = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_delay_ms = internal constant %struct.kernel_param { ptr @__param_str_delay_ms, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @delay_ms } }, section "__param", align 4
@__UNIQUE_ID_delay_mstype243 = internal constant [36 x i8] c"ntb_pingpong.parmtype=delay_ms:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_delay_ms244 = internal constant [70 x i8] c"ntb_pingpong.parm=delay_ms:Milliseconds to delay the response to peer\00", section ".modinfo", align 1
@__initcall__kmod_ntb_pingpong__255_426_pp_init6 = internal global ptr @pp_init, section ".initcall6.init", align 4
@pp_client = internal global { %struct.ntb_client, [44 x i8] } { %struct.ntb_client { %struct.device_driver zeroinitializer, %struct.ntb_client_ops { ptr @pp_probe, ptr @pp_remove } }, [44 x i8] zeroinitializer }, align 32
@pp_dbgfs_topdir = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_pp_exit = internal global ptr @pp_exit, section ".exitcall.exit", align 4
@pp_check_ntb.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pp_check_ntb\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/ntb/test/ntb_pingpong.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Doorbell is unsafe\0A\00", [44 x i8] zeroinitializer }, align 32
@pp_check_ntb.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Scratchpad is unsafe\0A\00", [42 x i8] zeroinitializer }, align 32
@pp_check_ntb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 260, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported DB configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pp_check_ntb._entry_ptr = internal global ptr @pp_check_ntb._entry, section ".printk_index", align 4
@pp_check_ntb._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 265, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Scratchpads and messages unsupported\0A\00", [58 x i8] zeroinitializer }, align 32
@pp_check_ntb._entry_ptr.12 = internal global ptr @pp_check_ntb._entry.10, section ".printk_index", align 4
@pp_check_ntb.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.13, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Scratchpads unsupported\0A\00", [39 x i8] zeroinitializer }, align 32
@pp_check_ntb.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.14, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Messages unsupported\0A\00", [42 x i8] zeroinitializer }, align 32
@pp_create_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pp->lock\00", [22 x i8] zeroinitializer }, align 32
@pp_ping.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.4, ptr @.str.17, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pp_ping\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ping port %d spad %#x, msg %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@pp_init_flds.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pp_init_flds\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Inbound db %#llx, prev %#llx, next %#llx\0A\00", [54 x i8] zeroinitializer }, align 32
@pp_ops = internal constant { %struct.ntb_ctx_ops, [20 x i8] } { %struct.ntb_ctx_ops { ptr @pp_link_event, ptr @pp_db_event, ptr null }, [20 x i8] zeroinitializer }, align 32
@pp_setup.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pp_setup\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Got no peers, so cancel\0A\00", [39 x i8] zeroinitializer }, align 32
@pp_setup.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.4, ptr @.str.22, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Ping-pong started with port %d, db %#llx\0A\00", [54 x i8] zeroinitializer }, align 32
@pp_pong.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pp_pong\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Pong spad %#x, msg %#x (port %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@pp_clear.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pp_clear\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Ping-pong cancelled\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 87, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"unsafe\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 91, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"delay_ms\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 95, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"pp_client\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 406, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"pp_dbgfs_topdir\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 114, i32 23 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 247, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 253, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 260, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 265, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 268, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 270, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 286, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 180, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 309, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"pp_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 237, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 151, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 155, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 203, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 359, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [35 x i8] c"../drivers/ntb/test/ntb_pingpong.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 167, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_delay_ms244, ptr @__UNIQUE_ID_delay_mstype243, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_unsafe242, ptr @__UNIQUE_ID_unsafetype241, ptr @__UNIQUE_ID_version238, ptr @__exitcall_pp_exit, ptr @__initcall__kmod_ntb_pingpong__255_426_pp_init6, ptr @__modver_attr, ptr @__param_delay_ms, ptr @__param_unsafe, ptr @pp_check_ntb._entry, ptr @pp_check_ntb._entry.10, ptr @pp_check_ntb._entry_ptr, ptr @pp_check_ntb._entry_ptr.12, ptr @pp_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @unsafe, ptr @delay_ms, ptr @pp_client, ptr @pp_dbgfs_topdir, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @pp_create_data.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @pp_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unsafe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_ms to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_client to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_dbgfs_topdir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_check_ntb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_check_ntb._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_create_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pp_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @debugfs_initialized() #7
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #7
  store ptr %call1, ptr @pp_dbgfs_topdir, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @__ntb_register_client(ptr noundef nonnull @pp_client, ptr noundef null, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @pp_dbgfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pp_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ntb_unregister_client(ptr noundef nonnull @pp_client) #7
  %0 = load ptr, ptr @pp_dbgfs_topdir, align 4
  tail call void @debugfs_remove(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_unregister_client(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntb_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_probe(ptr nocapture noundef readnone %client, ptr noundef %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pp_check_ntb(ptr noundef %ntb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ntb, i32 noundef 152, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %pp_create_data.exit

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

pp_create_data.exit:                              ; preds = %if.end
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ntb, ptr %call.i.i, align 8
  %count.i = getelementptr inbounds %struct.pp_ctx, ptr %call.i.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #7
  %1 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %count.i, align 4
  %lock.i = getelementptr inbounds %struct.pp_ctx, ptr %call.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @pp_create_data.__key, i16 noundef signext 3) #7
  %timer.i = getelementptr inbounds %struct.pp_ctx, ptr %call.i.i, i32 0, i32 1
  tail call void @hrtimer_init(ptr noundef %timer.i, i32 noundef 1, i32 noundef 1) #7
  %function.i = getelementptr inbounds %struct.pp_ctx, ptr %call.i.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pp_timer_func, ptr %function.i, align 8
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %pp_create_data.exit.if.then3_crit_edge, label %if.end5

pp_create_data.exit.if.then3_crit_edge:           ; preds = %pp_create_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %pp_create_data.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %retval.0.i38 = phi ptr [ %call.i.i, %pp_create_data.exit.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.if.then3_crit_edge ]
  %3 = ptrtoint ptr %retval.0.i38 to i32
  br label %cleanup

if.end5:                                          ; preds = %pp_create_data.exit
  tail call fastcc void @pp_init_flds(ptr noundef nonnull %call.i.i)
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 8
  %db_valid_mask.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %db_valid_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %db_valid_mask.i.i, align 4
  %call.i.i26 = tail call i64 %9(ptr noundef %5) #7
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i.i, align 8
  %ops.i21.i = getelementptr inbounds %struct.ntb_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i21.i, align 8
  %db_set_mask.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %db_set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %db_set_mask.i.i, align 4
  %call.i22.i = tail call i32 %15(ptr noundef %11, i64 noundef %call.i.i26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool.not.i27 = icmp eq i32 %call.i22.i, 0
  br i1 %tobool.not.i27, label %if.end.i28, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i28:                                       ; preds = %if.end5
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i.i, align 8
  %ops.i23.i = getelementptr inbounds %struct.ntb_dev, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ops.i23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i23.i, align 8
  %msg_count.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %msg_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msg_count.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i28.if.end9_crit_edge, label %ntb_msg_count.exit.i

if.end.i28.if.end9_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

ntb_msg_count.exit.i:                             ; preds = %if.end.i28
  %call.i24.i = tail call i32 %21(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i24.i)
  %cmp.i29 = icmp slt i32 %call.i24.i, 1
  br i1 %cmp.i29, label %ntb_msg_count.exit.i.if.end9_crit_edge, label %if.end6.i

ntb_msg_count.exit.i.if.end9_crit_edge:           ; preds = %ntb_msg_count.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end6.i:                                        ; preds = %ntb_msg_count.exit.i
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i.i, align 8
  %ops.i25.i = getelementptr inbounds %struct.ntb_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i25.i, align 8
  %msg_outbits.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %25, i32 0, i32 41
  %26 = ptrtoint ptr %msg_outbits.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg_outbits.i.i, align 4
  %tobool.not.i26.i = icmp eq ptr %27, null
  br i1 %tobool.not.i26.i, label %if.end6.i.ntb_msg_outbits.exit.i_crit_edge, label %if.end.i28.i

if.end6.i.ntb_msg_outbits.exit.i_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntb_msg_outbits.exit.i

if.end.i28.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i27.i = tail call i64 %27(ptr noundef %23) #7
  br label %ntb_msg_outbits.exit.i

ntb_msg_outbits.exit.i:                           ; preds = %if.end.i28.i, %if.end6.i.ntb_msg_outbits.exit.i_crit_edge
  %retval.0.i29.i = phi i64 [ %call.i27.i, %if.end.i28.i ], [ 0, %if.end6.i.ntb_msg_outbits.exit.i_crit_edge ]
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i.i, align 8
  %ops.i30.i = getelementptr inbounds %struct.ntb_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ops.i30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i30.i, align 8
  %msg_inbits.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %31, i32 0, i32 40
  %32 = ptrtoint ptr %msg_inbits.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msg_inbits.i.i, align 4
  %tobool.not.i31.i = icmp eq ptr %33, null
  br i1 %tobool.not.i31.i, label %ntb_msg_outbits.exit.i.ntb_msg_inbits.exit.i_crit_edge, label %if.end.i33.i

ntb_msg_outbits.exit.i.ntb_msg_inbits.exit.i_crit_edge: ; preds = %ntb_msg_outbits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntb_msg_inbits.exit.i

if.end.i33.i:                                     ; preds = %ntb_msg_outbits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i32.i = tail call i64 %33(ptr noundef %29) #7
  br label %ntb_msg_inbits.exit.i

ntb_msg_inbits.exit.i:                            ; preds = %if.end.i33.i, %ntb_msg_outbits.exit.i.ntb_msg_inbits.exit.i_crit_edge
  %retval.0.i34.i = phi i64 [ %call.i32.i, %if.end.i33.i ], [ 0, %ntb_msg_outbits.exit.i.ntb_msg_inbits.exit.i_crit_edge ]
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i.i, align 8
  %ops.i35.i = getelementptr inbounds %struct.ntb_dev, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %ops.i35.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i35.i, align 8
  %msg_set_mask.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %37, i32 0, i32 44
  %38 = ptrtoint ptr %msg_set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msg_set_mask.i.i, align 4
  %tobool.not.i36.i = icmp eq ptr %39, null
  br i1 %tobool.not.i36.i, label %ntb_msg_inbits.exit.i.cleanup_crit_edge, label %pp_mask_events.exit

ntb_msg_inbits.exit.i.cleanup_crit_edge:          ; preds = %ntb_msg_inbits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pp_mask_events.exit:                              ; preds = %ntb_msg_inbits.exit.i
  %or.i = or i64 %retval.0.i34.i, %retval.0.i29.i
  %call.i37.i = tail call i32 %39(ptr noundef %35, i64 noundef %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool7.not = icmp eq i32 %call.i37.i, 0
  br i1 %tobool7.not, label %pp_mask_events.exit.if.end9_crit_edge, label %pp_mask_events.exit.cleanup_crit_edge

pp_mask_events.exit.cleanup_crit_edge:            ; preds = %pp_mask_events.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

pp_mask_events.exit.if.end9_crit_edge:            ; preds = %pp_mask_events.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %pp_mask_events.exit.if.end9_crit_edge, %ntb_msg_count.exit.i.if.end9_crit_edge, %if.end.i28.if.end9_crit_edge
  %40 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i.i, align 8
  %call.i = tail call i32 @ntb_set_ctx(ptr noundef %41, ptr noundef nonnull %call.i.i, ptr noundef nonnull @pp_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i31 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i31, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %42 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i.i, align 8
  %ops.i.i32 = getelementptr inbounds %struct.ntb_dev, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %ops.i.i32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i32, align 8
  %link_enable.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %link_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %link_enable.i.i, align 4
  %call.i.i33 = tail call i32 %47(ptr noundef %43, i32 noundef -1, i32 noundef -1) #7
  %48 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i.i, align 8
  tail call void @ntb_link_event(ptr noundef %49) #7
  %50 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i.i, align 8
  %pdev1.i = getelementptr inbounds %struct.ntb_dev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev1.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44, i32 3
  %54 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end13.pp_setup_dbgfs.exit_crit_edge

if.end13.pp_setup_dbgfs.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %pp_setup_dbgfs.exit

if.end.i.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %56 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i, align 4
  br label %pp_setup_dbgfs.exit

pp_setup_dbgfs.exit:                              ; preds = %if.end.i.i.i, %if.end13.pp_setup_dbgfs.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %57, %if.end.i.i.i ], [ %55, %if.end13.pp_setup_dbgfs.exit_crit_edge ]
  %58 = load ptr, ptr @pp_dbgfs_topdir, align 4
  %call2.i = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i.i.i, ptr noundef %58) #7
  %dbgfs_dir.i = getelementptr inbounds %struct.pp_ctx, ptr %call.i.i, i32 0, i32 9
  %59 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call2.i, ptr %dbgfs_dir.i, align 8
  tail call void @debugfs_create_atomic_t(ptr noundef nonnull @.str.25, i16 noundef zeroext 384, ptr noundef %call2.i, ptr noundef %count.i) #7
  br label %cleanup

cleanup:                                          ; preds = %pp_setup_dbgfs.exit, %if.end9.cleanup_crit_edge, %pp_mask_events.exit.cleanup_crit_edge, %ntb_msg_inbits.exit.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ 0, %pp_setup_dbgfs.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call.i37.i, %pp_mask_events.exit.cleanup_crit_edge ], [ %call.i, %if.end9.cleanup_crit_edge ], [ -22, %ntb_msg_inbits.exit.i.cleanup_crit_edge ], [ %call.i22.i, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_remove(ptr nocapture noundef readnone %client, ptr nocapture noundef readonly %ntb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 4
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %dbgfs_dir.i = getelementptr inbounds %struct.pp_ctx, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dbgfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbgfs_dir.i, align 8
  tail call void @debugfs_remove(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 8
  %link_disable.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %link_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_disable.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void @ntb_clear_ctx(ptr noundef %11) #7
  %timer.i = getelementptr inbounds %struct.pp_ctx, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @hrtimer_cancel(ptr noundef %timer.i) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %in_db.i = getelementptr inbounds %struct.pp_ctx, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %in_db.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %in_db.i, align 8
  %ops.i.i3 = getelementptr inbounds %struct.ntb_dev, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %ops.i.i3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i3, align 8
  %db_set_mask.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %db_set_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %db_set_mask.i.i, align 4
  %call.i.i4 = tail call i32 %19(ptr noundef %13, i64 noundef %15) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_clear.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_remove, %if.then.i)) #7
          to label %pp_clear.exit [label %if.then.i], !srcloc !100

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_clear.__UNIQUE_ID_ddebug247, ptr noundef %21, ptr noundef nonnull @.str.27) #7
  br label %pp_clear.exit

pp_clear.exit:                                    ; preds = %if.then.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pp_check_ntb(ptr noundef %ntb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %ntb, i32 0, i32 3
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 8
  %db_is_unsafe.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %db_is_unsafe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %db_is_unsafe.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end9_crit_edge, label %ntb_db_is_unsafe.exit

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

ntb_db_is_unsafe.exit:                            ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %ntb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %ntb_db_is_unsafe.exit.if.end9_crit_edge, label %do.body

ntb_db_is_unsafe.exit.if.end9_crit_edge:          ; preds = %ntb_db_is_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.body:                                          ; preds = %ntb_db_is_unsafe.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_check_ntb.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_check_ntb, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !100

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_check_ntb.__UNIQUE_ID_ddebug250, ptr noundef %ntb, ptr noundef nonnull @.str.5) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %4 = load i32, ptr @unsafe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %do.end.if.end9_crit_edge, %ntb_db_is_unsafe.exit.if.end9_crit_edge, %entry.if.end9_crit_edge
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 8
  %spad_is_unsafe.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %spad_is_unsafe.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spad_is_unsafe.i, align 4
  %tobool.not.i121 = icmp eq ptr %8, null
  br i1 %tobool.not.i121, label %if.end9.if.end33_crit_edge, label %ntb_spad_is_unsafe.exit

if.end9.if.end33_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

ntb_spad_is_unsafe.exit:                          ; preds = %if.end9
  %call.i122 = tail call i32 %8(ptr noundef %ntb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool11.not = icmp eq i32 %call.i122, 0
  br i1 %tobool11.not, label %ntb_spad_is_unsafe.exit.if.end33_crit_edge, label %do.body13

ntb_spad_is_unsafe.exit.if.end33_crit_edge:       ; preds = %ntb_spad_is_unsafe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body13:                                        ; preds = %ntb_spad_is_unsafe.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_check_ntb.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_check_ntb, %if.then25)) #7
          to label %do.end29 [label %if.then25], !srcloc !100

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_check_ntb.__UNIQUE_ID_ddebug251, ptr noundef %ntb, ptr noundef nonnull @.str.6) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %9 = load i32, ptr @unsafe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool30.not = icmp eq i32 %9, 0
  br i1 %tobool30.not, label %do.end29.cleanup_crit_edge, label %do.end29.if.end33_crit_edge

do.end29.if.end33_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.end29.cleanup_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %do.end29.if.end33_crit_edge, %ntb_spad_is_unsafe.exit.if.end33_crit_edge, %if.end9.if.end33_crit_edge
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 8
  %peer_port_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %peer_port_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %peer_port_count.i, align 4
  %tobool.not.i126 = icmp eq ptr %13, null
  br i1 %tobool.not.i126, label %if.then.i, label %if.end.i128

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call.i127 = tail call i32 @ntb_default_peer_port_count(ptr noundef %ntb) #7
  br label %ntb_peer_port_count.exit

if.end.i128:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 %13(ptr noundef %ntb) #7
  br label %ntb_peer_port_count.exit

ntb_peer_port_count.exit:                         ; preds = %if.end.i128, %if.then.i
  %retval.0.i129 = phi i32 [ %call3.i, %if.end.i128 ], [ %call.i127, %if.then.i ]
  %sub = sub i32 63, %retval.0.i129
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 -1, %sh_prom
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 8
  %db_valid_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %db_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %db_valid_mask.i, align 4
  %call.i131 = tail call i64 %17(ptr noundef %ntb) #7
  %and36 = and i64 %call.i131, %shr
  call void @__sanitizer_cov_trace_cmp8(i64 %and36, i64 %shr)
  %cmp.not = icmp eq i64 %and36, %shr
  br i1 %cmp.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %ntb_peer_port_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ntb, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end42:                                         ; preds = %ntb_peer_port_count.exit
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 8
  %spad_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %spad_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spad_count.i, align 4
  %tobool.not.i133 = icmp eq ptr %21, null
  br i1 %tobool.not.i133, label %if.end42.land.lhs.true_crit_edge, label %ntb_spad_count.exit

if.end42.land.lhs.true_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

ntb_spad_count.exit:                              ; preds = %if.end42
  %call.i134 = tail call i32 %21(ptr noundef %ntb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i134)
  %cmp44 = icmp slt i32 %call.i134, 1
  br i1 %cmp44, label %ntb_spad_count.exit.land.lhs.true_crit_edge, label %ntb_spad_count.exit.if.else_crit_edge

ntb_spad_count.exit.if.else_crit_edge:            ; preds = %ntb_spad_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

ntb_spad_count.exit.land.lhs.true_crit_edge:      ; preds = %ntb_spad_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %ntb_spad_count.exit.land.lhs.true_crit_edge, %if.end42.land.lhs.true_crit_edge
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 8
  %msg_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %23, i32 0, i32 39
  %24 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msg_count.i, align 4
  %tobool.not.i138 = icmp eq ptr %25, null
  br i1 %tobool.not.i138, label %land.lhs.true.do.end50_crit_edge, label %ntb_msg_count.exit

land.lhs.true.do.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

ntb_msg_count.exit:                               ; preds = %land.lhs.true
  %call.i139 = tail call i32 %25(ptr noundef %ntb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i139)
  %cmp46 = icmp slt i32 %call.i139, 1
  br i1 %cmp46, label %ntb_msg_count.exit.do.end50_crit_edge, label %ntb_msg_count.exit.if.else_crit_edge

ntb_msg_count.exit.if.else_crit_edge:             ; preds = %ntb_msg_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

ntb_msg_count.exit.do.end50_crit_edge:            ; preds = %ntb_msg_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

do.end50:                                         ; preds = %ntb_msg_count.exit.do.end50_crit_edge, %land.lhs.true.do.end50_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ntb, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.else:                                          ; preds = %ntb_msg_count.exit.if.else_crit_edge, %ntb_spad_count.exit.if.else_crit_edge
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 8
  %spad_count.i143 = getelementptr inbounds %struct.ntb_dev_ops, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %spad_count.i143 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %spad_count.i143, align 4
  %tobool.not.i144 = icmp eq ptr %29, null
  br i1 %tobool.not.i144, label %if.else.do.body55_crit_edge, label %ntb_spad_count.exit148

if.else.do.body55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

ntb_spad_count.exit148:                           ; preds = %if.else
  %call.i145 = tail call i32 %29(ptr noundef %ntb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i145)
  %cmp53 = icmp slt i32 %call.i145, 1
  br i1 %cmp53, label %ntb_spad_count.exit148.do.body55_crit_edge, label %if.else72

ntb_spad_count.exit148.do.body55_crit_edge:       ; preds = %ntb_spad_count.exit148
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

do.body55:                                        ; preds = %ntb_spad_count.exit148.do.body55_crit_edge, %if.else.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_check_ntb.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_check_ntb, %if.then67)) #7
          to label %cleanup [label %if.then67], !srcloc !100

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_check_ntb.__UNIQUE_ID_ddebug252, ptr noundef %ntb, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.else72:                                        ; preds = %ntb_spad_count.exit148
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 8
  %msg_count.i150 = getelementptr inbounds %struct.ntb_dev_ops, ptr %31, i32 0, i32 39
  %32 = ptrtoint ptr %msg_count.i150 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %msg_count.i150, align 4
  %tobool.not.i151 = icmp eq ptr %33, null
  br i1 %tobool.not.i151, label %if.else72.do.body76_crit_edge, label %ntb_msg_count.exit155

if.else72.do.body76_crit_edge:                    ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body76

ntb_msg_count.exit155:                            ; preds = %if.else72
  %call.i152 = tail call i32 %33(ptr noundef %ntb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i152)
  %cmp74 = icmp slt i32 %call.i152, 1
  br i1 %cmp74, label %ntb_msg_count.exit155.do.body76_crit_edge, label %ntb_msg_count.exit155.cleanup_crit_edge

ntb_msg_count.exit155.cleanup_crit_edge:          ; preds = %ntb_msg_count.exit155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ntb_msg_count.exit155.do.body76_crit_edge:        ; preds = %ntb_msg_count.exit155
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body76

do.body76:                                        ; preds = %ntb_msg_count.exit155.do.body76_crit_edge, %if.else72.do.body76_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_check_ntb.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_check_ntb, %if.then88)) #7
          to label %cleanup [label %if.then88], !srcloc !100

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_check_ntb.__UNIQUE_ID_ddebug253, ptr noundef %ntb, ptr noundef nonnull @.str.14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %do.body76, %ntb_msg_count.exit155.cleanup_crit_edge, %if.then67, %do.body55, %do.end50, %do.end40, %do.end29.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end40 ], [ -22, %do.end50 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %do.end29.cleanup_crit_edge ], [ 0, %if.then67 ], [ 0, %if.then88 ], [ 0, %ntb_msg_count.exit155.cleanup_crit_edge ], [ 0, %do.body55 ], [ 0, %do.body76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pp_init_flds(ptr nocapture noundef %pp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @ntb_default_port_number(ptr noundef %1) #7
  br label %ntb_port_number.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 %5(ptr noundef %1) #7
  br label %ntb_port_number.exit

ntb_port_number.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i42 = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.then.i ]
  %6 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pp, align 8
  %ops.i43 = getelementptr inbounds %struct.ntb_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i43, align 8
  %peer_port_count.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %peer_port_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peer_port_count.i, align 4
  %tobool.not.i44 = icmp eq ptr %11, null
  br i1 %tobool.not.i44, label %if.then.i46, label %if.end.i48

if.then.i46:                                      ; preds = %ntb_port_number.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i45 = tail call i32 @ntb_default_peer_port_count(ptr noundef %7) #7
  br label %ntb_peer_port_count.exit

if.end.i48:                                       ; preds = %ntb_port_number.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i47 = tail call i32 %11(ptr noundef %7) #7
  br label %ntb_peer_port_count.exit

ntb_peer_port_count.exit:                         ; preds = %if.end.i48, %if.then.i46
  %retval.0.i49 = phi i32 [ %call3.i47, %if.end.i48 ], [ %call.i45, %if.then.i46 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i49)
  %cmp58 = icmp sgt i32 %retval.0.i49, 0
  br i1 %cmp58, label %ntb_peer_port_count.exit.for.body_crit_edge, label %ntb_peer_port_count.exit.for.end_crit_edge

ntb_peer_port_count.exit.for.end_crit_edge:       ; preds = %ntb_peer_port_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

ntb_peer_port_count.exit.for.body_crit_edge:      ; preds = %ntb_peer_port_count.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %ntb_peer_port_count.exit.for.body_crit_edge
  %pidx.059 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %ntb_peer_port_count.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp, align 8
  %ops.i50 = getelementptr inbounds %struct.ntb_dev, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i50, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i51 = icmp eq ptr %17, null
  br i1 %tobool.not.i51, label %if.then.i53, label %if.end.i55

if.then.i53:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i52 = tail call i32 @ntb_default_peer_port_number(ptr noundef %13, i32 noundef %pidx.059) #7
  br label %ntb_peer_port_number.exit

if.end.i55:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i54 = tail call i32 %17(ptr noundef %13, i32 noundef %pidx.059) #7
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i55, %if.then.i53
  %retval.0.i56 = phi i32 [ %call3.i54, %if.end.i55 ], [ %call.i52, %if.then.i53 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i42, i32 %retval.0.i56)
  %cmp5 = icmp slt i32 %retval.0.i42, %retval.0.i56
  br i1 %cmp5, label %ntb_peer_port_number.exit.for.end_crit_edge, label %for.inc

ntb_peer_port_number.exit.for.end_crit_edge:      ; preds = %ntb_peer_port_number.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %ntb_peer_port_number.exit
  %inc = add nuw nsw i32 %pidx.059, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i49
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ntb_peer_port_number.exit.for.end_crit_edge, %ntb_peer_port_count.exit.for.end_crit_edge
  %pidx.0.lcssa = phi i32 [ 0, %ntb_peer_port_count.exit.for.end_crit_edge ], [ %pidx.059, %ntb_peer_port_number.exit.for.end_crit_edge ], [ %retval.0.i49, %for.inc.for.end_crit_edge ]
  %sh_prom = zext i32 %retval.0.i42 to i64
  %shl = shl nuw i64 1, %sh_prom
  %in_db = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 2
  %18 = ptrtoint ptr %in_db to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shl, ptr %in_db, align 8
  %sub = sub nsw i32 63, %pidx.0.lcssa
  %sh_prom6 = zext i32 %sub to i64
  %shr = lshr i64 -1, %sh_prom6
  %shr7 = lshr i64 %shr, 1
  %pmask = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 6
  %19 = ptrtoint ptr %pmask to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %shr7, ptr %pmask, align 8
  %sh_prom8 = zext i32 %pidx.0.lcssa to i64
  %shl9.neg = shl nsw i64 -1, %sh_prom8
  %sub13 = sub i32 64, %retval.0.i49
  %sh_prom14 = zext i32 %sub13 to i64
  %shr15 = lshr i64 -1, %sh_prom14
  %and16 = and i64 %shl9.neg, %shr15
  %nmask = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 5
  %20 = ptrtoint ptr %nmask to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %and16, ptr %nmask, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_init_flds.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_init_flds, %if.then21)) #7
          to label %do.end [label %if.then21], !srcloc !100

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pp, align 8
  %23 = ptrtoint ptr %in_db to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %in_db, align 8
  %25 = ptrtoint ptr %pmask to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %pmask, align 8
  %27 = ptrtoint ptr %nmask to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %nmask, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_init_flds.__UNIQUE_ID_ddebug254, ptr noundef %22, ptr noundef nonnull @.str.19, i64 noundef %24, i64 noundef %26, i64 noundef %28) #7
  br label %do.end

do.end:                                           ; preds = %if.then21, %for.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_count(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pp_timer_func(ptr noundef %t) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -8
  tail call fastcc void @pp_ping(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pp_ping(ptr noundef %pp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count1, i32 noundef 4) #7
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %count1, align 4
  %lock = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %2 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pp, align 8
  %out_pidx = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 4
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 8
  %peer_spad_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %peer_spad_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer_spad_write.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.ntb_peer_spad_write.exit_crit_edge, label %if.end.i

entry.ntb_peer_spad_write.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntb_peer_spad_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %out_pidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_pidx, align 8
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef %9, i32 noundef 0, i32 noundef %1) #7
  br label %ntb_peer_spad_write.exit

ntb_peer_spad_write.exit:                         ; preds = %if.end.i, %entry.ntb_peer_spad_write.exit_crit_edge
  %10 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pp, align 8
  %ops.i34 = getelementptr inbounds %struct.ntb_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ops.i34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i34, align 8
  %peer_msg_write.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %13, i32 0, i32 47
  %14 = ptrtoint ptr %peer_msg_write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer_msg_write.i, align 4
  %tobool.not.i35 = icmp eq ptr %15, null
  br i1 %tobool.not.i35, label %ntb_peer_spad_write.exit.ntb_peer_msg_write.exit_crit_edge, label %if.end.i37

ntb_peer_spad_write.exit.ntb_peer_msg_write.exit_crit_edge: ; preds = %ntb_peer_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntb_peer_msg_write.exit

if.end.i37:                                       ; preds = %ntb_peer_spad_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %out_pidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %out_pidx, align 8
  %call.i36 = tail call i32 %15(ptr noundef %11, i32 noundef %17, i32 noundef 0, i32 noundef %1) #7
  br label %ntb_peer_msg_write.exit

ntb_peer_msg_write.exit:                          ; preds = %if.end.i37, %ntb_peer_spad_write.exit.ntb_peer_msg_write.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_ping.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_ping, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !100

if.then:                                          ; preds = %ntb_peer_msg_write.exit
  %18 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pp, align 8
  %20 = ptrtoint ptr %out_pidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %out_pidx, align 8
  %ops.i38 = getelementptr inbounds %struct.ntb_dev, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %ops.i38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i38, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i39 = icmp eq ptr %25, null
  br i1 %tobool.not.i39, label %if.then.i, label %if.end.i41

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i40 = tail call i32 @ntb_default_peer_port_number(ptr noundef %19, i32 noundef %21) #7
  br label %ntb_peer_port_number.exit

if.end.i41:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 %25(ptr noundef %19, i32 noundef %21) #7
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i41, %if.then.i
  %retval.0.i42 = phi i32 [ %call3.i, %if.end.i41 ], [ %call.i40, %if.then.i ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_ping.__UNIQUE_ID_ddebug248, ptr noundef %19, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i42, i32 noundef %1, i32 noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %ntb_peer_port_number.exit, %ntb_peer_msg_write.exit
  %26 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pp, align 8
  %out_db = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 3
  %28 = ptrtoint ptr %out_db to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %out_db, align 8
  %ops.i43 = getelementptr inbounds %struct.ntb_dev, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %ops.i43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i43, align 8
  %peer_db_set.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %peer_db_set.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %peer_db_set.i, align 4
  %call.i44 = tail call i32 %33(ptr noundef %27, i64 noundef %29) #7
  %34 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pp, align 8
  %in_db = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 2
  %36 = ptrtoint ptr %in_db to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %in_db, align 8
  %ops.i45 = getelementptr inbounds %struct.ntb_dev, ptr %35, i32 0, i32 3
  %38 = ptrtoint ptr %ops.i45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i45, align 8
  %db_clear_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %39, i32 0, i32 24
  %40 = ptrtoint ptr %db_clear_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %db_clear_mask.i, align 4
  %call.i46 = tail call i32 %41(ptr noundef %35, i64 noundef %37) #7
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_peer_port_number(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_default_port_number(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntb_set_ctx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_link_event(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_link_event(ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pp_setup(ptr noundef %ctx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pp_db_event(ptr noundef %ctx, i32 noundef %vec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @pp_pong(ptr noundef %ctx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pp_setup(ptr noundef %pp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp, align 8
  %in_db = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 2
  %2 = ptrtoint ptr %in_db to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %in_db, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 8
  %db_set_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %db_set_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %db_set_mask.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i64 noundef %3) #7
  %timer = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 1
  %call1 = tail call i32 @hrtimer_cancel(ptr noundef %timer) #7
  %8 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pp, align 8
  %ops.i.i = getelementptr inbounds %struct.ntb_dev, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 8
  %link_is_up.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %link_is_up.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_is_up.i.i, align 4
  %call.i.i = tail call i64 %13(ptr noundef %9, ptr noundef null, ptr noundef null) #7
  %nmask.i = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 5
  %14 = ptrtoint ptr %nmask.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %nmask.i, align 8
  %and.i = and i64 %15, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %conv.i.i = trunc i64 %and.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i.i = lshr i64 %and.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %16 = tail call i32 @llvm.cttz.i32(i32 %conv2.i.i, i1 false) #7, !range !101
  %add.i.i = add nuw nsw i32 %16, 32
  br label %if.end11.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 @llvm.cttz.i32(i32 %conv.i.i, i1 true) #7, !range !101
  br label %if.end11.i

if.else.i:                                        ; preds = %entry
  %pmask.i = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 6
  %18 = ptrtoint ptr %pmask.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pmask.i, align 8
  %and4.i = and i64 %19, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4.i)
  %tobool5.not.i = icmp eq i64 %and4.i, 0
  br i1 %tobool5.not.i, label %do.body, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  %conv.i31.i = trunc i64 %and4.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i31.i)
  %cmp.i32.i = icmp eq i32 %conv.i31.i, 0
  br i1 %cmp.i32.i, label %if.then.i36.i, label %if.end.i37.i

if.then.i36.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i33.i = lshr i64 %and4.i, 32
  %conv2.i34.i = trunc i64 %shr.i33.i to i32
  %20 = tail call i32 @llvm.cttz.i32(i32 %conv2.i34.i, i1 false) #7, !range !101
  %add.i35.i = add nuw nsw i32 %20, 32
  br label %if.end11.i

if.end.i37.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = tail call i32 @llvm.cttz.i32(i32 %conv.i31.i, i1 true) #7, !range !101
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i37.i, %if.then.i36.i, %if.end.i.i, %if.then.i.i
  %pidx.0.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %17, %if.end.i.i ], [ %add.i35.i, %if.then.i36.i ], [ %21, %if.end.i37.i ]
  %22 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pp, align 8
  %ops.i40.i = getelementptr inbounds %struct.ntb_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i40.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i40.i, align 8
  %peer_port_number.i.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %peer_port_number.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %peer_port_number.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.then.i42.i, label %if.end.i43.i

if.then.i42.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i41.i = tail call i32 @ntb_default_peer_port_number(ptr noundef %23, i32 noundef %pidx.0.i) #7
  br label %do.body9

if.end.i43.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i = tail call i32 %27(ptr noundef %23, i32 noundef %pidx.0.i) #7
  br label %do.body9

do.body:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_setup.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_setup, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !100

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pp, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_setup.__UNIQUE_ID_ddebug245, ptr noundef %29, ptr noundef nonnull @.str.21) #7
  br label %cleanup

do.body9:                                         ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %call3.i.i, %if.end.i43.i ], [ %call.i41.i, %if.then.i42.i ]
  %sh_prom.i = zext i32 %retval.0.i44.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %lock.i = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %out_pidx.i = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 4
  %30 = ptrtoint ptr %out_pidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %pidx.0.i, ptr %out_pidx.i, align 8
  %out_db14.i = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 3
  %31 = ptrtoint ptr %out_db14.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shl.i, ptr %out_db14.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_setup.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_setup, %if.then21)) #7
          to label %do.end28 [label %if.then21], !srcloc !100

if.then21:                                        ; preds = %do.body9
  %32 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pp, align 8
  %34 = ptrtoint ptr %out_pidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %out_pidx.i, align 8
  %ops.i44 = getelementptr inbounds %struct.ntb_dev, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %ops.i44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i44, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i45 = icmp eq ptr %39, null
  br i1 %tobool.not.i45, label %if.then.i47, label %if.end.i

if.then.i47:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %call.i46 = tail call i32 @ntb_default_peer_port_number(ptr noundef %33, i32 noundef %35) #7
  br label %ntb_peer_port_number.exit

if.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 %39(ptr noundef %33, i32 noundef %35) #7
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i, %if.then.i47
  %retval.0.i48 = phi i32 [ %call3.i, %if.end.i ], [ %call.i46, %if.then.i47 ]
  %40 = ptrtoint ptr %out_db14.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %out_db14.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_setup.__UNIQUE_ID_ddebug246, ptr noundef %33, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i48, i64 noundef %41) #7
  br label %do.end28

do.end28:                                         ; preds = %ntb_peer_port_number.exit, %do.body9
  %42 = load i32, ptr @delay_ms, align 4
  %conv = zext i32 %42 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %mul.i, i64 noundef 0, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then6, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pp_pong(ptr noundef %pp) unnamed_addr #3 align 64 {
entry:
  %pidx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pidx) #7
  %0 = ptrtoint ptr %pidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pidx, align 4
  %1 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pp, align 8
  %ops.i = getelementptr inbounds %struct.ntb_dev, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 8
  %spad_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %spad_read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spad_read.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.ntb_spad_read.exit_crit_edge, label %if.end.i

entry.ntb_spad_read.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntb_spad_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %6(ptr noundef %2, i32 noundef 0) #7
  br label %ntb_spad_read.exit

ntb_spad_read.exit:                               ; preds = %if.end.i, %entry.ntb_spad_read.exit_crit_edge
  %retval.0.i27 = phi i32 [ %call.i, %if.end.i ], [ -1, %entry.ntb_spad_read.exit_crit_edge ]
  %7 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pp, align 8
  %ops.i28 = getelementptr inbounds %struct.ntb_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i28, align 8
  %msg_read.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %10, i32 0, i32 46
  %11 = ptrtoint ptr %msg_read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg_read.i, align 4
  %tobool.not.i29 = icmp eq ptr %12, null
  br i1 %tobool.not.i29, label %ntb_spad_read.exit.ntb_msg_read.exit_crit_edge, label %if.end.i31

ntb_spad_read.exit.ntb_msg_read.exit_crit_edge:   ; preds = %ntb_spad_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntb_msg_read.exit

if.end.i31:                                       ; preds = %ntb_spad_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i30 = call i32 %12(ptr noundef %8, ptr noundef nonnull %pidx, i32 noundef 0) #7
  br label %ntb_msg_read.exit

ntb_msg_read.exit:                                ; preds = %if.end.i31, %ntb_spad_read.exit.ntb_msg_read.exit_crit_edge
  %retval.0.i32 = phi i32 [ %call.i30, %if.end.i31 ], [ -1, %ntb_spad_read.exit.ntb_msg_read.exit_crit_edge ]
  %13 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp, align 8
  %ops.i33 = getelementptr inbounds %struct.ntb_dev, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ops.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i33, align 8
  %msg_clear_sts.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %16, i32 0, i32 43
  %17 = ptrtoint ptr %msg_clear_sts.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg_clear_sts.i, align 4
  %tobool.not.i34 = icmp eq ptr %18, null
  br i1 %tobool.not.i34, label %ntb_msg_read.exit.ntb_msg_clear_sts.exit_crit_edge, label %if.end.i36

ntb_msg_read.exit.ntb_msg_clear_sts.exit_crit_edge: ; preds = %ntb_msg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntb_msg_clear_sts.exit

if.end.i36:                                       ; preds = %ntb_msg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i35 = call i32 %18(ptr noundef %14, i64 noundef -1) #7
  br label %ntb_msg_clear_sts.exit

ntb_msg_clear_sts.exit:                           ; preds = %if.end.i36, %ntb_msg_read.exit.ntb_msg_clear_sts.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pp_pong.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pp_pong, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !100

if.then:                                          ; preds = %ntb_msg_clear_sts.exit
  %19 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pp, align 8
  %21 = ptrtoint ptr %pidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pidx, align 4
  %ops.i37 = getelementptr inbounds %struct.ntb_dev, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %ops.i37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i37, align 8
  %peer_port_number.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %peer_port_number.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %peer_port_number.i, align 4
  %tobool.not.i38 = icmp eq ptr %26, null
  br i1 %tobool.not.i38, label %if.then.i, label %if.end.i40

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i39 = call i32 @ntb_default_peer_port_number(ptr noundef %20, i32 noundef %22) #7
  br label %ntb_peer_port_number.exit

if.end.i40:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = call i32 %26(ptr noundef %20, i32 noundef %22) #7
  br label %ntb_peer_port_number.exit

ntb_peer_port_number.exit:                        ; preds = %if.end.i40, %if.then.i
  %retval.0.i41 = phi i32 [ %call3.i, %if.end.i40 ], [ %call.i39, %if.then.i ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pp_pong.__UNIQUE_ID_ddebug249, ptr noundef %20, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i27, i32 noundef %retval.0.i32, i32 noundef %retval.0.i41) #7
  br label %do.end

do.end:                                           ; preds = %ntb_peer_port_number.exit, %ntb_msg_clear_sts.exit
  %count = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #7
  %27 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #7, !srcloc !102
  %28 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pp, align 8
  %in_db = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 2
  %30 = ptrtoint ptr %in_db to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %in_db, align 8
  %ops.i42 = getelementptr inbounds %struct.ntb_dev, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %ops.i42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i42, align 8
  %db_set_mask.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %33, i32 0, i32 23
  %34 = ptrtoint ptr %db_set_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %db_set_mask.i, align 4
  %call.i43 = call i32 %35(ptr noundef %29, i64 noundef %31) #7
  %36 = ptrtoint ptr %pp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pp, align 8
  %38 = ptrtoint ptr %in_db to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %in_db, align 8
  %ops.i44 = getelementptr inbounds %struct.ntb_dev, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %ops.i44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i44, align 8
  %db_clear.i = getelementptr inbounds %struct.ntb_dev_ops, ptr %41, i32 0, i32 21
  %42 = ptrtoint ptr %db_clear.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %db_clear.i, align 4
  %call.i45 = call i32 %43(ptr noundef %37, i64 noundef %39) #7
  %timer = getelementptr inbounds %struct.pp_ctx, ptr %pp, i32 0, i32 1
  %44 = load i32, ptr @delay_ms, align 4
  %conv = zext i32 %44 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000
  call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef %mul.i, i64 noundef 0, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pidx) #7
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_atomic_t(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntb_clear_ctx(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !27, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !80, !81, !83, !84, !85, !87, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__UNIQUE_ID_file236, !1, !"__UNIQUE_ID_file236", i1 false, i1 false}
!1 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 86, i32 1}
!2 = !{ptr @__UNIQUE_ID_license237, !1, !"__UNIQUE_ID_license237", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_version238, !4, !"__UNIQUE_ID_version238", i1 false, i1 false}
!4 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 87, i32 1}
!5 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__modver_attr, !4, !"__modver_attr", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author239, !10, !"__UNIQUE_ID_author239", i1 false, i1 false}
!10 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 88, i32 1}
!11 = !{ptr @__UNIQUE_ID_description240, !12, !"__UNIQUE_ID_description240", i1 false, i1 false}
!12 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 89, i32 1}
!13 = !{ptr @__param_unsafe, !14, !"__param_unsafe", i1 false, i1 false}
!14 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 92, i32 1}
!15 = !{ptr @__UNIQUE_ID_unsafetype241, !14, !"__UNIQUE_ID_unsafetype241", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_unsafe242, !17, !"__UNIQUE_ID_unsafe242", i1 false, i1 false}
!17 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 93, i32 1}
!18 = !{ptr @__param_delay_ms, !19, !"__param_delay_ms", i1 false, i1 false}
!19 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 96, i32 1}
!20 = !{ptr @__UNIQUE_ID_delay_mstype243, !19, !"__UNIQUE_ID_delay_mstype243", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_delay_ms244, !22, !"__UNIQUE_ID_delay_ms244", i1 false, i1 false}
!22 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 97, i32 1}
!23 = !{ptr @__initcall__kmod_ntb_pingpong__255_426_pp_init6, !24, !"__initcall__kmod_ntb_pingpong__255_426_pp_init6", i1 false, i1 false}
!24 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 426, i32 1}
!25 = !{ptr @__exitcall_pp_exit, !26, !"__exitcall_pp_exit", i1 false, i1 false}
!26 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 433, i32 1}
!27 = !{ptr @unsafe, !28, !"unsafe", i1 false, i1 false}
!28 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 91, i32 21}
!29 = !{ptr @pp_dbgfs_topdir, !30, !"pp_dbgfs_topdir", i1 false, i1 false}
!30 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 114, i32 23}
!31 = !{ptr @__param_str_unsafe, !14, !"__param_str_unsafe", i1 false, i1 false}
!32 = !{ptr @__param_str_delay_ms, !19, !"__param_str_delay_ms", i1 false, i1 false}
!33 = !{ptr @delay_ms, !34, !"delay_ms", i1 false, i1 false}
!34 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 95, i32 21}
!35 = !{ptr @pp_client, !36, !"pp_client", i1 false, i1 false}
!36 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 406, i32 26}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 247, i32 3}
!39 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pp_check_ntb.__UNIQUE_ID_ddebug250, !38, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!42 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 253, i32 3}
!44 = !{ptr @pp_check_ntb.__UNIQUE_ID_ddebug251, !43, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 260, i32 3}
!47 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pp_check_ntb._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @pp_check_ntb._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 265, i32 3}
!53 = !{ptr @pp_check_ntb._entry.10, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pp_check_ntb._entry_ptr.12, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 268, i32 3}
!57 = !{ptr @pp_check_ntb.__UNIQUE_ID_ddebug252, !56, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 270, i32 3}
!60 = !{ptr @pp_check_ntb.__UNIQUE_ID_ddebug253, !59, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!61 = !{ptr @pp_create_data.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 286, i32 2}
!63 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 180, i32 2}
!66 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @pp_ping.__UNIQUE_ID_ddebug248, !65, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 309, i32 2}
!70 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @pp_init_flds.__UNIQUE_ID_ddebug254, !69, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!72 = !{ptr @pp_ops, !73, !"pp_ops", i1 false, i1 false}
!73 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 237, i32 33}
!74 = !{ptr @.str.20, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 151, i32 3}
!76 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @pp_setup.__UNIQUE_ID_ddebug245, !75, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 155, i32 2}
!80 = !{ptr @pp_setup.__UNIQUE_ID_ddebug246, !79, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 203, i32 2}
!83 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @pp_pong.__UNIQUE_ID_ddebug249, !82, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 359, i32 26}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ntb/test/ntb_pingpong.c", i32 167, i32 2}
!89 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @pp_clear.__UNIQUE_ID_ddebug247, !88, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2148700256, i64 2148700261, i64 2148700274, i64 2148700318, i64 2148700352, i64 2148700373}
!101 = !{i32 0, i32 33}
!102 = !{i64 2148230925, i64 2148230951, i64 2148230980, i64 2148231014, i64 2148231045, i64 2148231068}
