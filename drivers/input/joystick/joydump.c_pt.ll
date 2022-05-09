; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/joydump.c_pt.bc'
source_filename = "../drivers/input/joystick/joydump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.joydump = type { i32, i8 }

@__UNIQUE_ID_author183 = internal constant [47 x i8] c"joydump.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [48 x i8] c"joydump.description=Gameport data dumper module\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [44 x i8] c"joydump.file=drivers/input/joystick/joydump\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [20 x i8] c"joydump.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_joydump__187_145_joydump_drv_init6 = internal global ptr @joydump_drv_init, section ".initcall6.init", align 4
@joydump_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @joydump_connect, ptr null, ptr @joydump_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_joydump_drv_exit = internal global ptr @joydump_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"joydump\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Gameport data dumper module\00", [36 x i8] zeroinitializer }, align 32
@joydump_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016joydump: ,------------------ START ----------------.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"joydump_connect\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/joystick/joydump.c\00", [63 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr = internal global ptr @joydump_connect._entry, section ".printk_index", align 4
@joydump_connect._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016joydump: | Dumping: %30s |\0A\00", [34 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.7 = internal global ptr @joydump_connect._entry.5, section ".printk_index", align 4
@joydump_connect._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016joydump: | Speed: %28d kHz |\0A\00", [32 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.10 = internal global ptr @joydump_connect._entry.8, section ".printk_index", align 4
@joydump_connect._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016joydump: | Raw mode not available - trying cooked.    |\0A\00", [37 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.13 = internal global ptr @joydump_connect._entry.11, section ".printk_index", align 4
@joydump_connect._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016joydump: | Cooked not available either. Failing.   |\0A\00", [40 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.16 = internal global ptr @joydump_connect._entry.14, section ".printk_index", align 4
@joydump_connect._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016joydump: `------------------- END -----------------'\0A\00", [40 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.19 = internal global ptr @joydump_connect._entry.17, section ".printk_index", align 4
@joydump_connect._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016joydump: | Axis %d: %4d.                           |\0A\00", [40 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.22 = internal global ptr @joydump_connect._entry.20, section ".printk_index", align 4
@joydump_connect._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016joydump: | Buttons %02x.                             |\0A\00", [38 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.25 = internal global ptr @joydump_connect._entry.23, section ".printk_index", align 4
@joydump_connect._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.27 = internal global ptr @joydump_connect._entry.26, section ".printk_index", align 4
@joydump_connect._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016joydump: no memory for testing\0A\00", [62 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.30 = internal global ptr @joydump_connect._entry.28, section ".printk_index", align 4
@joydump_connect._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016joydump: >------------------ DATA -----------------<\0A\00", [40 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.33 = internal global ptr @joydump_connect._entry.31, section ".printk_index", align 4
@joydump_connect._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016joydump: | index: %3d delta: %3d us data: \00", [51 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.36 = internal global ptr @joydump_connect._entry.34, section ".printk_index", align 4
@joydump_connect._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.39 = internal global ptr @joydump_connect._entry.37, section ".printk_index", align 4
@joydump_connect._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" |\0A\00", [28 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.42 = internal global ptr @joydump_connect._entry.40, section ".printk_index", align 4
@joydump_connect._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.44 = internal global ptr @joydump_connect._entry.43, section ".printk_index", align 4
@joydump_connect._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.46 = internal global ptr @joydump_connect._entry.45, section ".printk_index", align 4
@joydump_connect._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.48 = internal global ptr @joydump_connect._entry.47, section ".printk_index", align 4
@joydump_connect._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@joydump_connect._entry_ptr.50 = internal global ptr @joydump_connect._entry.49, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"joydump_drv\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 136, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 145, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 140, i32 17 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 42, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 43, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 44, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 48, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 52, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 53, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 60, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 61, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 62, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 69, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 109, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 110, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 112, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 113, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 117, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 120, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 121, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private constant [36 x i8] c"../drivers/input/joystick/joydump.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 126, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_joydump_drv_exit, ptr @__initcall__kmod_joydump__187_145_joydump_drv_init6, ptr @joydump_connect._entry, ptr @joydump_connect._entry.11, ptr @joydump_connect._entry.14, ptr @joydump_connect._entry.17, ptr @joydump_connect._entry.20, ptr @joydump_connect._entry.23, ptr @joydump_connect._entry.26, ptr @joydump_connect._entry.28, ptr @joydump_connect._entry.31, ptr @joydump_connect._entry.34, ptr @joydump_connect._entry.37, ptr @joydump_connect._entry.40, ptr @joydump_connect._entry.43, ptr @joydump_connect._entry.45, ptr @joydump_connect._entry.47, ptr @joydump_connect._entry.49, ptr @joydump_connect._entry.5, ptr @joydump_connect._entry.8, ptr @joydump_connect._entry_ptr, ptr @joydump_connect._entry_ptr.10, ptr @joydump_connect._entry_ptr.13, ptr @joydump_connect._entry_ptr.16, ptr @joydump_connect._entry_ptr.19, ptr @joydump_connect._entry_ptr.22, ptr @joydump_connect._entry_ptr.25, ptr @joydump_connect._entry_ptr.27, ptr @joydump_connect._entry_ptr.30, ptr @joydump_connect._entry_ptr.33, ptr @joydump_connect._entry_ptr.36, ptr @joydump_connect._entry_ptr.39, ptr @joydump_connect._entry_ptr.42, ptr @joydump_connect._entry_ptr.44, ptr @joydump_connect._entry_ptr.46, ptr @joydump_connect._entry_ptr.48, ptr @joydump_connect._entry_ptr.50, ptr @joydump_connect._entry_ptr.7, ptr @joydump_drv_exit, ptr @joydump_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @joydump_connect._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @joydump_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @joydump_drv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @joydump_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gameport_unregister_driver(ptr noundef nonnull @joydump_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @joydump_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %axes = alloca [4 x i32], align 4
  %buttons = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %axes) #6
  %0 = getelementptr inbounds [4 x i32], ptr %axes, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %axes, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %axes, i32 0, i32 3
  %3 = call ptr @memset(ptr %axes, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buttons) #6
  %4 = ptrtoint ptr %buttons to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buttons, align 4, !annotation !93
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  %phys = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %phys) #9
  %speed = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %6) #9
  %call11 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %entry.if.end47_crit_edge, label %do.end14

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end14:                                         ; preds = %entry
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  %call17 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end, label %do.end22

do.end22:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end:                                           ; preds = %do.end14
  %cooked_read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 8
  %7 = ptrtoint ptr %cooked_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cooked_read.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.gameport_cooked_read.exit_crit_edge, label %if.then.i

if.end.gameport_cooked_read.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %gameport_cooked_read.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %8(ptr noundef %gameport, ptr noundef nonnull %axes, ptr noundef nonnull %buttons) #6
  br label %gameport_cooked_read.exit

gameport_cooked_read.exit:                        ; preds = %if.then.i, %if.end.gameport_cooked_read.exit_crit_edge
  %9 = ptrtoint ptr %axes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %axes, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %10) #9
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  %call36.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef %12) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %call36.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 2, i32 noundef %14) #9
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %2, align 4
  %call36.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 3, i32 noundef %16) #9
  %17 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buttons, align 4
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %18) #9
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %if.end47

if.end47:                                         ; preds = %gameport_cooked_read.exit, %entry.if.end47_crit_edge
  %19 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed, align 8
  %mul.i = mul i32 %20, 10000
  %div.i = sdiv i32 %mul.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 2048) #10
  %tobool50.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool50.not, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #9
  br label %do.end194

if.end57:                                         ; preds = %if.end47
  %22 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !94
  %and.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool72.not = icmp eq i32 %and.i, 0
  br i1 %tobool72.not, label %if.then73, label %if.end57.do.end76_crit_edge

if.end57.do.end76_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end76

if.then73:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_off() #6
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %if.end57.do.end76_crit_edge
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %23 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i, align 4
  %tobool.not.i255 = icmp eq ptr %24, null
  br i1 %tobool.not.i255, label %if.else.i, label %if.then.i257

if.then.i257:                                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #8
  %call.i256 = call zeroext i8 %24(ptr noundef %gameport) #6
  br label %gameport_read.exit

if.else.i:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #8
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %25 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %io.i, align 4
  %and.i258 = and i32 %26, 1048575
  %add.i = or i32 %and.i258, -18874368
  %27 = inttoptr i32 %add.i to ptr
  %28 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #6, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i257
  %retval.0.i = phi i8 [ %call.i256, %if.then.i257 ], [ %28, %if.else.i ]
  %data = getelementptr inbounds %struct.joydump, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %retval.0.i, ptr %data, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %call7.i.i, align 8
  %incdec.ptr = getelementptr %struct.joydump, ptr %call7.i.i, i32 1
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %31 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i259 = icmp eq ptr %32, null
  br i1 %tobool.not.i259, label %do.body.i, label %if.then.i260

if.then.i260:                                     ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void %32(ptr noundef %gameport) #6
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  %io.i261 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %33 = ptrtoint ptr %io.i261 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %io.i261, align 4
  %and.i262 = and i32 %34, 1048575
  %add.i263 = or i32 %and.i262, -18874368
  %35 = inttoptr i32 %add.i263 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 -1) #6, !srcloc !98
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i260
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %mul.i)
  %cmp80276 = icmp sgt i32 %mul.i, 999
  br i1 %cmp80276, label %while.body.lr.ph, label %gameport_trigger.exit.do.body95_crit_edge

gameport_trigger.exit.do.body95_crit_edge:        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body95

while.body.lr.ph:                                 ; preds = %gameport_trigger.exit
  %io.i268 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end93.while.body_crit_edge, %while.body.lr.ph
  %dump.0281 = phi ptr [ %incdec.ptr, %while.body.lr.ph ], [ %dump.1, %if.end93.while.body_crit_edge ]
  %i.1280 = phi i32 [ 1, %while.body.lr.ph ], [ %i.2, %if.end93.while.body_crit_edge ]
  %t.0278 = phi i32 [ 0, %while.body.lr.ph ], [ %inc94, %if.end93.while.body_crit_edge ]
  %u.0277 = phi i8 [ %retval.0.i, %while.body.lr.ph ], [ %u.1, %if.end93.while.body_crit_edge ]
  %36 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i, align 4
  %tobool.not.i265 = icmp eq ptr %37, null
  br i1 %tobool.not.i265, label %if.else.i271, label %if.then.i267

if.then.i267:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i266 = call zeroext i8 %37(ptr noundef %gameport) #6
  br label %gameport_read.exit273

if.else.i271:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %io.i268 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %io.i268, align 4
  %and.i269 = and i32 %39, 1048575
  %add.i270 = or i32 %and.i269, -18874368
  %40 = inttoptr i32 %add.i270 to ptr
  %41 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #6, !srcloc !95
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %gameport_read.exit273

gameport_read.exit273:                            ; preds = %if.else.i271, %if.then.i267
  %retval.0.i272 = phi i8 [ %call.i266, %if.then.i267 ], [ %41, %if.else.i271 ]
  %data83 = getelementptr inbounds %struct.joydump, ptr %dump.0281, i32 0, i32 1
  %42 = ptrtoint ptr %data83 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %retval.0.i272, ptr %data83, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i272, i8 %u.0277)
  %tobool87.not = icmp eq i8 %retval.0.i272, %u.0277
  br i1 %tobool87.not, label %gameport_read.exit273.if.end93_crit_edge, label %if.then88

gameport_read.exit273.if.end93_crit_edge:         ; preds = %gameport_read.exit273
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then88:                                        ; preds = %gameport_read.exit273
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %dump.0281 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %t.0278, ptr %dump.0281, align 4
  %inc91 = add nsw i32 %i.1280, 1
  %incdec.ptr92 = getelementptr %struct.joydump, ptr %dump.0281, i32 1
  br label %if.end93

if.end93:                                         ; preds = %if.then88, %gameport_read.exit273.if.end93_crit_edge
  %u.1 = phi i8 [ %retval.0.i272, %if.then88 ], [ %u.0277, %gameport_read.exit273.if.end93_crit_edge ]
  %i.2 = phi i32 [ %inc91, %if.then88 ], [ %i.1280, %gameport_read.exit273.if.end93_crit_edge ]
  %dump.1 = phi ptr [ %incdec.ptr92, %if.then88 ], [ %dump.0281, %gameport_read.exit273.if.end93_crit_edge ]
  %inc94 = add nuw nsw i32 %t.0278, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %i.2)
  %cmp78 = icmp slt i32 %i.2, 256
  call void @__sanitizer_cov_trace_cmp4(i32 %inc94, i32 %div.i)
  %cmp80 = icmp slt i32 %inc94, %div.i
  %or.cond = select i1 %cmp78, i1 %cmp80, i1 false
  br i1 %or.cond, label %if.end93.while.body_crit_edge, label %if.end93.do.body95_crit_edge

if.end93.do.body95_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body95

if.end93.while.body_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body95:                                        ; preds = %if.end93.do.body95_crit_edge, %gameport_trigger.exit.do.body95_crit_edge
  %i.1.lcssa = phi i32 [ 1, %gameport_trigger.exit.do.body95_crit_edge ], [ %i.2, %if.end93.do.body95_crit_edge ]
  br i1 %tobool72.not, label %if.then104, label %do.body95.do.body106_crit_edge

do.body95.do.body106_crit_edge:                   ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body106

if.then104:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_on() #6
  br label %do.body106

do.body106:                                       ; preds = %if.then104, %do.body95.do.body106_crit_edge
  %44 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !99
  %and.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool114.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool114.not, label %if.then118, label %do.body106.do.end121_crit_edge, !prof !100

do.body106.do.end121_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end121

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %do.end121

do.end121:                                        ; preds = %if.then118, %do.body106.do.end121_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #6, !srcloc !101
  %call130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #9
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 0) #9
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %data, align 4
  %conv145 = zext i8 %46 to i32
  %shr = lshr i32 %conv145, 7
  %call146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %shr) #9
  %shr.1 = lshr i32 %conv145, 6
  %and.1 = and i32 %shr.1, 1
  %call146.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and.1) #9
  %shr.2 = lshr i32 %conv145, 5
  %and.2 = and i32 %shr.2, 1
  %call146.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and.2) #9
  %shr.3 = lshr i32 %conv145, 4
  %and.3 = and i32 %shr.3, 1
  %call146.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and.3) #9
  %shr.4 = lshr i32 %conv145, 3
  %and.4 = and i32 %shr.4, 1
  %call146.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and.4) #9
  %shr.5 = lshr i32 %conv145, 2
  %and.5 = and i32 %shr.5, 1
  %call146.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and.5) #9
  %shr.6 = lshr i32 %conv145, 1
  %and.6 = and i32 %shr.6, 1
  %call146.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and.6) #9
  %and.7 = and i32 %conv145, 1
  %call146.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and.7) #9
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1.lcssa)
  %cmp156284 = icmp sgt i32 %i.1.lcssa, 1
  br i1 %cmp156284, label %do.end121.do.end161_crit_edge, label %do.end121.for.end191_crit_edge

do.end121.for.end191_crit_edge:                   ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end191

do.end121.do.end161_crit_edge:                    ; preds = %do.end121
  br label %do.end161

do.end161:                                        ; preds = %do.end161.do.end161_crit_edge, %do.end121.do.end161_crit_edge
  %dump.2287 = phi ptr [ %incdec.ptr189, %do.end161.do.end161_crit_edge ], [ %incdec.ptr, %do.end121.do.end161_crit_edge ]
  %prev.0286 = phi ptr [ %incdec.ptr190, %do.end161.do.end161_crit_edge ], [ %call7.i.i, %do.end121.do.end161_crit_edge ]
  %i.3285 = phi i32 [ %inc188, %do.end161.do.end161_crit_edge ], [ 1, %do.end121.do.end161_crit_edge ]
  %47 = ptrtoint ptr %dump.2287 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dump.2287, align 4
  %49 = ptrtoint ptr %prev.0286 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %prev.0286, align 4
  %sub = sub i32 %48, %50
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %i.3285, i32 noundef %sub) #9
  %data174 = getelementptr inbounds %struct.joydump, ptr %dump.2287, i32 0, i32 1
  %51 = ptrtoint ptr %data174 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %data174, align 4
  %53 = lshr i8 %52, 7
  %shr176 = zext i8 %53 to i32
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %shr176) #9
  %54 = ptrtoint ptr %data174 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data174, align 4
  %56 = lshr i8 %55, 6
  %57 = and i8 %56, 1
  %and177.1 = zext i8 %57 to i32
  %call178.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and177.1) #9
  %58 = ptrtoint ptr %data174 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data174, align 4
  %60 = lshr i8 %59, 5
  %61 = and i8 %60, 1
  %and177.2 = zext i8 %61 to i32
  %call178.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and177.2) #9
  %62 = ptrtoint ptr %data174 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %data174, align 4
  %64 = lshr i8 %63, 4
  %65 = and i8 %64, 1
  %and177.3 = zext i8 %65 to i32
  %call178.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and177.3) #9
  %66 = ptrtoint ptr %data174 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %data174, align 4
  %68 = lshr i8 %67, 3
  %69 = and i8 %68, 1
  %and177.4 = zext i8 %69 to i32
  %call178.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and177.4) #9
  %70 = ptrtoint ptr %data174 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data174, align 4
  %72 = lshr i8 %71, 2
  %73 = and i8 %72, 1
  %and177.5 = zext i8 %73 to i32
  %call178.5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and177.5) #9
  %74 = ptrtoint ptr %data174 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %data174, align 4
  %76 = lshr i8 %75, 1
  %77 = and i8 %76, 1
  %and177.6 = zext i8 %77 to i32
  %call178.6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and177.6) #9
  %78 = ptrtoint ptr %data174 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %data174, align 4
  %80 = and i8 %79, 1
  %and177.7 = zext i8 %80 to i32
  %call178.7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and177.7) #9
  %call186 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  %inc188 = add nuw nsw i32 %i.3285, 1
  %incdec.ptr189 = getelementptr %struct.joydump, ptr %dump.2287, i32 1
  %incdec.ptr190 = getelementptr %struct.joydump, ptr %prev.0286, i32 1
  %exitcond.not = icmp eq i32 %inc188, %i.1.lcssa
  br i1 %exitcond.not, label %do.end161.for.end191_crit_edge, label %do.end161.do.end161_crit_edge

do.end161.do.end161_crit_edge:                    ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end161

do.end161.for.end191_crit_edge:                   ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end191

for.end191:                                       ; preds = %do.end161.for.end191_crit_edge, %do.end121.for.end191_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %do.end194

do.end194:                                        ; preds = %for.end191, %do.end54
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end194, %do.end22
  %retval.0 = phi i32 [ -19, %do.end22 ], [ 0, %do.end194 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buttons) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %axes) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @joydump_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gameport_close(ptr noundef %gameport) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__UNIQUE_ID_author183, !1, !"__UNIQUE_ID_author183", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/joydump.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description184, !3, !"__UNIQUE_ID_description184", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/joydump.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file185, !5, !"__UNIQUE_ID_file185", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/joydump.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license186, !5, !"__UNIQUE_ID_license186", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_joydump__187_145_joydump_drv_init6, !8, !"__initcall__kmod_joydump__187_145_joydump_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/joydump.c", i32 145, i32 1}
!9 = !{ptr @__exitcall_joydump_drv_exit, !8, !"__exitcall_joydump_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/joydump.c", i32 140, i32 17}
!13 = !{ptr @joydump_drv, !14, !"joydump_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/joydump.c", i32 136, i32 31}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/joydump.c", i32 42, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @joydump_connect._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @joydump_connect._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/joydump.c", i32 43, i32 2}
!23 = !{ptr @joydump_connect._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @joydump_connect._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/joydump.c", i32 44, i32 2}
!27 = !{ptr @joydump_connect._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @joydump_connect._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/joydump.c", i32 48, i32 3}
!31 = !{ptr @joydump_connect._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @joydump_connect._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/joydump.c", i32 52, i32 4}
!35 = !{ptr @joydump_connect._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @joydump_connect._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/joydump.c", i32 53, i32 4}
!39 = !{ptr @joydump_connect._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @joydump_connect._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/joydump.c", i32 60, i32 4}
!43 = !{ptr @joydump_connect._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @joydump_connect._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/joydump.c", i32 61, i32 3}
!47 = !{ptr @joydump_connect._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @joydump_connect._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @joydump_connect._entry.26, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/joydump.c", i32 62, i32 3}
!51 = !{ptr @joydump_connect._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/joystick/joydump.c", i32 69, i32 3}
!54 = !{ptr @joydump_connect._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @joydump_connect._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/joystick/joydump.c", i32 109, i32 2}
!58 = !{ptr @joydump_connect._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @joydump_connect._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/joystick/joydump.c", i32 110, i32 2}
!62 = !{ptr @joydump_connect._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @joydump_connect._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/joystick/joydump.c", i32 112, i32 3}
!66 = !{ptr @joydump_connect._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @joydump_connect._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/joystick/joydump.c", i32 113, i32 2}
!70 = !{ptr @joydump_connect._entry.40, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @joydump_connect._entry_ptr.42, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @joydump_connect._entry.43, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/input/joystick/joydump.c", i32 117, i32 3}
!74 = !{ptr @joydump_connect._entry_ptr.44, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @joydump_connect._entry.45, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/input/joystick/joydump.c", i32 120, i32 4}
!77 = !{ptr @joydump_connect._entry_ptr.46, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @joydump_connect._entry.47, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/input/joystick/joydump.c", i32 121, i32 3}
!80 = !{ptr @joydump_connect._entry_ptr.48, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @joydump_connect._entry.49, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/input/joystick/joydump.c", i32 126, i32 2}
!83 = !{ptr @joydump_connect._entry_ptr.50, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i64 745106, i64 745167}
!95 = !{i64 4037423}
!96 = !{i64 2152724618}
!97 = !{i64 2152724043}
!98 = !{i64 4037028}
!99 = !{i64 747838}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{i64 748123}
