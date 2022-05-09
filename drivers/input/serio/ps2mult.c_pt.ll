; ModuleID = '/llk/IR_all_yes/drivers/input/serio/ps2mult.c_pt.bc'
source_filename = "../drivers/input/serio/ps2mult.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ps2mult = type { ptr, [2 x %struct.ps2mult_port], %struct.spinlock, ptr, ptr, i8 }
%struct.ps2mult_port = type { ptr, i8, i8 }

@__UNIQUE_ID_author187 = internal constant [62 x i8] c"ps2mult.author=Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [48 x i8] c"ps2mult.description=TQC PS/2 Multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [41 x i8] c"ps2mult.file=drivers/input/serio/ps2mult\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [20 x i8] c"ps2mult.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ps2mult__200_304_ps2mult_drv_init6 = internal global ptr @ps2mult_drv_init, section ".initcall6.init", align 4
@ps2mult_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @ps2mult_serio_ids, i8 0, ptr null, ptr @ps2mult_interrupt, ptr @ps2mult_connect, ptr @ps2mult_reconnect, ptr null, ptr @ps2mult_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ps2mult_drv_exit = internal global ptr @ps2mult_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ps2mult\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TQC PS/2 Multiplexer driver\00", [36 x i8] zeroinitializer }, align 32
@ps2mult_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 60 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@ps2mult_interrupt.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ps2mult_interrupt\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/serio/ps2mult.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Received %02x flags %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@ps2mult_interrupt.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ESCAPE\0A\00", [24 x i8] zeroinitializer }, align 32
@ps2mult_interrupt.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BSYNC\0A\00", [25 x i8] zeroinitializer }, align 32
@ps2mult_interrupt.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SS\0A\00", [28 x i8] zeroinitializer }, align 32
@ps2mult_interrupt.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SE\0A\00", [28 x i8] zeroinitializer }, align 32
@ps2mult_interrupt.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KB\0A\00", [28 x i8] zeroinitializer }, align 32
@ps2mult_interrupt.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MS\0A\00", [28 x i8] zeroinitializer }, align 32
@ps2mult_connect.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&psm->lock\00", [21 x i8] zeroinitializer }, align 32
@ps2mult_controls = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\A0\A1}~UV", [26 x i8] zeroinitializer }, align 32
@ps2mult_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 198, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s port at %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ps2mult_connect\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ps2mult_connect._entry_ptr = internal global ptr @ps2mult_connect._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TQC PS/2 Multiplexer\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/port%d\00", [22 x i8] zeroinitializer }, align 32
@ps2mult_serio_write.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ps2mult_serio_write\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write: %s%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ESC \00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ps2mult_select_port.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ps2mult_select_port\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switched to sel %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 85, i64 86, i64 125, i64 126, i64 160, i64 161]
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"ps2mult_drv\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 292, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 304, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 296, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"ps2mult_serio_ids\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 52, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 239, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 253, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 258, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 263, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 267, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 271, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 276, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 176, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"ps2mult_controls\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 46, i32 28 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 198, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 134, i32 23 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 136, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 88, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [33 x i8] c"../drivers/input/serio/ps2mult.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 70, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_ps2mult_drv_exit, ptr @__initcall__kmod_ps2mult__200_304_ps2mult_drv_init6, ptr @ps2mult_connect._entry, ptr @ps2mult_connect._entry_ptr, ptr @ps2mult_drv_exit, ptr @ps2mult_drv, ptr @.str, ptr @.str.1, ptr @ps2mult_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ps2mult_connect.__key, ptr @.str.11, ptr @ps2mult_controls, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2mult_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2mult_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2mult_connect.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2mult_controls to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2mult_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2mult_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @ps2mult_drv, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ps2mult_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @serio_unregister_driver(ptr noundef nonnull @ps2mult_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2mult_interrupt(ptr noundef %serio, i8 noundef zeroext %data, i32 noundef %dfl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_interrupt, %if.then)) #8
          to label %do.body5 [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %conv = zext i8 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_interrupt.__UNIQUE_ID_ddebug193, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %dfl) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.ps2mult, ptr %1, i32 0, i32 2
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %escape = getelementptr inbounds %struct.ps2mult, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %escape to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %escape, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool14.not = icmp eq i8 %3, 0
  br i1 %tobool14.not, label %if.end23, label %if.then15

if.then15:                                        ; preds = %do.body5
  %4 = ptrtoint ptr %escape to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %escape, align 4
  %in_port17 = getelementptr inbounds %struct.ps2mult, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %in_port17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %in_port17, align 4
  %registered = getelementptr inbounds %struct.ps2mult_port, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %registered, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool18.not = icmp eq i8 %8, 0
  br i1 %tobool18.not, label %if.then15.out_crit_edge, label %if.then19

if.then15.out_crit_edge:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %call21 = tail call i32 @serio_interrupt(ptr noundef %10, i8 noundef zeroext %data, i32 noundef %dfl) #8
  br label %out

if.end23:                                         ; preds = %do.body5
  %11 = zext i8 %data to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %data, label %sw.default [
    i8 125, label %do.body25
    i8 126, label %do.body44
    i8 85, label %do.body63
    i8 86, label %do.body81
    i8 -96, label %do.body99
    i8 -95, label %do.body118
  ]

do.body25:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_interrupt, %if.then37)) #8
          to label %do.end41 [label %if.then37], !srcloc !75

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_interrupt.__UNIQUE_ID_ddebug194, ptr noundef %dev38, ptr noundef nonnull @.str.5) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body25
  %12 = ptrtoint ptr %escape to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %escape, align 4
  br label %out

do.body44:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_interrupt, %if.then56)) #8
          to label %do.end60 [label %if.then56], !srcloc !75

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %dev57 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_interrupt.__UNIQUE_ID_ddebug195, ptr noundef %dev57, ptr noundef nonnull @.str.6) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %do.body44
  %out_port = getelementptr inbounds %struct.ps2mult, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %out_port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out_port, align 4
  %in_port61 = getelementptr inbounds %struct.ps2mult, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %in_port61 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %in_port61, align 4
  br label %out

do.body63:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_interrupt, %if.then75)) #8
          to label %out [label %if.then75], !srcloc !75

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %dev76 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_interrupt.__UNIQUE_ID_ddebug196, ptr noundef %dev76, ptr noundef nonnull @.str.7) #8
  br label %out

do.body81:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_interrupt, %if.then93)) #8
          to label %out [label %if.then93], !srcloc !75

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  %dev94 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_interrupt.__UNIQUE_ID_ddebug197, ptr noundef %dev94, ptr noundef nonnull @.str.8) #8
  br label %out

do.body99:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_interrupt, %if.then111)) #8
          to label %do.end115 [label %if.then111], !srcloc !75

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  %dev112 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_interrupt.__UNIQUE_ID_ddebug198, ptr noundef %dev112, ptr noundef nonnull @.str.9) #8
  br label %do.end115

do.end115:                                        ; preds = %if.then111, %do.body99
  %ports = getelementptr inbounds %struct.ps2mult, ptr %1, i32 0, i32 1
  %in_port116 = getelementptr inbounds %struct.ps2mult, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %in_port116 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ports, ptr %in_port116, align 4
  br label %out

do.body118:                                       ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_interrupt, %if.then130)) #8
          to label %do.end134 [label %if.then130], !srcloc !75

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %dev131 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_interrupt.__UNIQUE_ID_ddebug199, ptr noundef %dev131, ptr noundef nonnull @.str.10) #8
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %do.body118
  %arrayidx136 = getelementptr %struct.ps2mult, ptr %1, i32 0, i32 1, i32 1
  %in_port137 = getelementptr inbounds %struct.ps2mult, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %in_port137 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx136, ptr %in_port137, align 4
  br label %out

sw.default:                                       ; preds = %if.end23
  %in_port138 = getelementptr inbounds %struct.ps2mult, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %in_port138 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in_port138, align 4
  %registered139 = getelementptr inbounds %struct.ps2mult_port, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %registered139 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %registered139, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool140.not = icmp eq i8 %21, 0
  br i1 %tobool140.not, label %sw.default.out_crit_edge, label %if.then141

sw.default.out_crit_edge:                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then141:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %call143 = tail call i32 @serio_interrupt(ptr noundef %23, i8 noundef zeroext %data, i32 noundef %dfl) #8
  br label %out

out:                                              ; preds = %if.then141, %sw.default.out_crit_edge, %do.end134, %do.end115, %if.then93, %do.body81, %if.then75, %do.body63, %do.end60, %do.end41, %if.then19, %if.then15.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2mult_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %write = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 7
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 76) #11
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.ps2mult, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @ps2mult_connect.__key, i16 noundef signext 3) #8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %serio, ptr %call7.i.i, align 8
  %sel = getelementptr %struct.ps2mult, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -96, ptr %sel, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1336) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body.while.end_crit_edge, label %for.inc

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.inc:                                          ; preds = %do.body
  %name.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 1
  %call2.i = tail call i32 @strlcpy(ptr noundef %name.i, ptr noundef nonnull @.str.16, i32 noundef 32) #8
  %phys.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 2
  %phys4.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef %phys4.i, i32 noundef 0) #8
  %id.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %id.i, align 1
  %write.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ps2mult_serio_write, ptr %write.i, align 8
  %start.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ps2mult_serio_start, ptr %start.i, align 4
  %stop.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %stop.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ps2mult_serio_stop, ptr %stop.i, align 8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call7.i.i, align 8
  %parent.i = getelementptr inbounds %struct.serio, ptr %call7.i.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent.i, align 4
  %arrayidx.i = getelementptr %struct.ps2mult, ptr %call7.i.i, i32 0, i32 1, i32 0
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.i, ptr %call7.i.i.i, align 8
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %sel.1 = getelementptr %struct.ps2mult, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %sel.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -95, ptr %sel.1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 1336) #11
  %tobool.not.i.1 = icmp eq ptr %call7.i.i.i.1, null
  br i1 %tobool.not.i.1, label %for.inc.while.body_crit_edge, label %for.inc.1

for.inc.while.body_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

for.inc.1:                                        ; preds = %for.inc
  %name.i.1 = getelementptr inbounds %struct.serio, ptr %call7.i.i.i.1, i32 0, i32 1
  %call2.i.1 = tail call i32 @strlcpy(ptr noundef %name.i.1, ptr noundef nonnull @.str.16, i32 noundef 32) #8
  %phys.i.1 = getelementptr inbounds %struct.serio, ptr %call7.i.i.i.1, i32 0, i32 2
  %phys4.i.1 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 2
  %call6.i.1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i.1, i32 noundef 32, ptr noundef nonnull @.str.17, ptr noundef %phys4.i.1, i32 noundef 1) #8
  %id.i.1 = getelementptr inbounds %struct.serio, ptr %call7.i.i.i.1, i32 0, i32 5
  %17 = ptrtoint ptr %id.i.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %id.i.1, align 1
  %write.i.1 = getelementptr inbounds %struct.serio, ptr %call7.i.i.i.1, i32 0, i32 7
  %18 = ptrtoint ptr %write.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ps2mult_serio_write, ptr %write.i.1, align 8
  %start.i.1 = getelementptr inbounds %struct.serio, ptr %call7.i.i.i.1, i32 0, i32 10
  %19 = ptrtoint ptr %start.i.1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ps2mult_serio_start, ptr %start.i.1, align 4
  %stop.i.1 = getelementptr inbounds %struct.serio, ptr %call7.i.i.i.1, i32 0, i32 11
  %20 = ptrtoint ptr %stop.i.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ps2mult_serio_stop, ptr %stop.i.1, align 8
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %parent.i.1 = getelementptr inbounds %struct.serio, ptr %call7.i.i.i.1, i32 0, i32 12
  %23 = ptrtoint ptr %parent.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %parent.i.1, align 4
  %arrayidx.i.1 = getelementptr %struct.ps2mult, ptr %call7.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %call7.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i.1, ptr %call7.i.i.i.1, align 8
  %25 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i.1, ptr %arrayidx.i.1, align 4
  %out_port = getelementptr inbounds %struct.ps2mult, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %out_port to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i, ptr %out_port, align 4
  %in_port = getelementptr inbounds %struct.ps2mult, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %in_port to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %arrayidx.i, ptr %in_port, align 8
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call12 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %for.inc.1.while.body_crit_edge

for.inc.1.while.body_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end15:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ps2mult_reset(ptr noundef nonnull %call7.i.i)
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %name = getelementptr inbounds %struct.serio, ptr %30, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %phys4.i) #12
  tail call void @__serio_register_port(ptr noundef %30, ptr noundef null) #8
  %31 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.1, align 4
  %name.1 = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %name.1, ptr noundef %phys4.i) #12
  tail call void @__serio_register_port(ptr noundef %32, ptr noundef null) #8
  br label %cleanup

while.body:                                       ; preds = %for.inc.1.while.body_crit_edge, %for.inc.while.body_crit_edge
  %i.067.ph = phi i32 [ 1, %for.inc.while.body_crit_edge ], [ 2, %for.inc.1.while.body_crit_edge ]
  %error.0.ph = phi i32 [ -12, %for.inc.while.body_crit_edge ], [ %call12, %for.inc.1.while.body_crit_edge ]
  %dec72 = add nsw i32 %i.067.ph, -1
  %arrayidx31 = getelementptr %struct.ps2mult, ptr %call7.i.i, i32 0, i32 1, i32 %dec72
  %33 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx31, align 4
  tail call void @kfree(ptr noundef %34) #8
  br i1 %tobool.not.i.1, label %while.body.while.end_crit_edge, label %while.body.1

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dec72.1 = add nsw i32 %i.067.ph, -2
  %arrayidx31.1 = getelementptr %struct.ps2mult, ptr %call7.i.i, i32 0, i32 1, i32 %dec72.1
  %35 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx31.1, align 4
  tail call void @kfree(ptr noundef %36) #8
  br label %while.end

while.end:                                        ; preds = %while.body.1, %while.body.while.end_crit_edge, %do.body.while.end_crit_edge
  %error.078 = phi i32 [ -12, %do.body.while.end_crit_edge ], [ %error.0.ph, %while.body.1 ], [ %error.0.ph, %while.body.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.078, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2mult_reconnect(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @ps2mult_reset(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps2mult_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 7
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.serio_write.exit_crit_edge, label %if.then.i

entry.serio_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %3(ptr noundef %serio, i8 noundef zeroext 86) #8
  br label %serio_write.exit

serio_write.exit:                                 ; preds = %if.then.i, %entry.serio_write.exit_crit_edge
  tail call void @serio_close(ptr noundef %serio) #8
  tail call void @kfree(ptr noundef %1) #8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ps2mult_reset(ptr noundef %psm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ps2mult, ptr %psm, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %0 = ptrtoint ptr %psm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psm, align 4
  %write.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.serio_write.exit_crit_edge, label %if.then.i

entry.serio_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %3(ptr noundef %1, i8 noundef zeroext 86) #8
  br label %serio_write.exit

serio_write.exit:                                 ; preds = %if.then.i, %entry.serio_write.exit_crit_edge
  %4 = ptrtoint ptr %psm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psm, align 4
  %write.i14 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %write.i14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i14, align 8
  %tobool.not.i15 = icmp eq ptr %7, null
  br i1 %tobool.not.i15, label %serio_write.exit.serio_write.exit18_crit_edge, label %if.then.i17

serio_write.exit.serio_write.exit18_crit_edge:    ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit18

if.then.i17:                                      ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i16 = tail call i32 %7(ptr noundef %5, i8 noundef zeroext 85) #8
  br label %serio_write.exit18

serio_write.exit18:                               ; preds = %if.then.i17, %serio_write.exit.serio_write.exit18_crit_edge
  %ports = getelementptr inbounds %struct.ps2mult, ptr %psm, i32 0, i32 1
  %8 = ptrtoint ptr %psm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psm, align 4
  %sel.i = getelementptr inbounds %struct.ps2mult, ptr %psm, i32 0, i32 1, i32 0, i32 1
  %write.i.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %serio_write.exit18.serio_write.exit.i_crit_edge, label %if.then.i.i

serio_write.exit18.serio_write.exit.i_crit_edge:  ; preds = %serio_write.exit18
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit.i

if.then.i.i:                                      ; preds = %serio_write.exit18
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sel.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sel.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %9, i8 noundef zeroext %13) #8
  br label %serio_write.exit.i

serio_write.exit.i:                               ; preds = %if.then.i.i, %serio_write.exit18.serio_write.exit.i_crit_edge
  %out_port.i = getelementptr inbounds %struct.ps2mult, ptr %psm, i32 0, i32 4
  %14 = ptrtoint ptr %out_port.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ports, ptr %out_port.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_select_port.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_reset, %if.then.i19)) #8
          to label %ps2mult_select_port.exit [label %if.then.i19], !srcloc !75

if.then.i19:                                      ; preds = %serio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  %15 = ptrtoint ptr %sel.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sel.i, align 4
  %conv.i = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_select_port.__UNIQUE_ID_ddebug191, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %conv.i) #8
  br label %ps2mult_select_port.exit

ps2mult_select_port.exit:                         ; preds = %if.then.i19, %serio_write.exit.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2mult_serio_write(ptr noundef %serio, i8 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serio, align 8
  %lock = getelementptr inbounds %struct.ps2mult, ptr %3, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %out_port = getelementptr inbounds %struct.ps2mult, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %out_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_port, align 4
  %cmp6.not = icmp eq ptr %7, %5
  br i1 %cmp6.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %sel.i = getelementptr inbounds %struct.ps2mult_port, ptr %5, i32 0, i32 1
  %write.i.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.then.serio_write.exit.i_crit_edge, label %if.then.i.i

if.then.serio_write.exit.i_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sel.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sel.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %9, i8 noundef zeroext %13) #8
  br label %serio_write.exit.i

serio_write.exit.i:                               ; preds = %if.then.i.i, %if.then.serio_write.exit.i_crit_edge
  %14 = ptrtoint ptr %out_port to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %out_port, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_select_port.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_serio_write, %if.then.i)) #8
          to label %if.end [label %if.then.i], !srcloc !75

if.then.i:                                        ; preds = %serio_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  %15 = ptrtoint ptr %sel.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sel.i, align 4
  %conv.i = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_select_port.__UNIQUE_ID_ddebug191, ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %conv.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %serio_write.exit.i, %entry.if.end_crit_edge
  %conv8 = zext i8 %data to i32
  %call9 = tail call ptr @memchr(ptr noundef nonnull @ps2mult_controls, i32 noundef %conv8, i32 noundef 6) #13
  %tobool.not = icmp eq ptr %call9, null
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2mult_serio_write.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2mult_serio_write, %if.then17)) #8
          to label %do.end23 [label %if.then17], !srcloc !75

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %cond = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2mult_serio_write.__UNIQUE_ID_ddebug192, ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, i32 noundef %conv8) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %if.end
  br i1 %tobool.not, label %do.end23.if.end27_crit_edge, label %if.then25

do.end23.if.end27_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %do.end23
  %write.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then25.if.end27_crit_edge, label %if.then.i41

if.then25.if.end27_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then.i41:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %18(ptr noundef %1, i8 noundef zeroext 125) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then.i41, %if.then25.if.end27_crit_edge, %do.end23.if.end27_crit_edge
  %write.i42 = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i42, align 8
  %tobool.not.i43 = icmp eq ptr %20, null
  br i1 %tobool.not.i43, label %if.end27.serio_write.exit46_crit_edge, label %if.then.i45

if.end27.serio_write.exit46_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %serio_write.exit46

if.then.i45:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call.i44 = tail call i32 %20(ptr noundef %1, i8 noundef zeroext %data) #8
  br label %serio_write.exit46

serio_write.exit46:                               ; preds = %if.then.i45, %if.end27.serio_write.exit46_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2mult_serio_start(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serio, align 8
  %lock = getelementptr inbounds %struct.ps2mult, ptr %3, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %registered = getelementptr inbounds %struct.ps2mult_port, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %registered, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps2mult_serio_stop(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 12
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 18, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serio, align 8
  %lock = getelementptr inbounds %struct.ps2mult, ptr %3, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %registered = getelementptr inbounds %struct.ps2mult_port, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %registered, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !49, !50, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__UNIQUE_ID_author187, !1, !"__UNIQUE_ID_author187", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/ps2mult.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_description188, !3, !"__UNIQUE_ID_description188", i1 false, i1 false}
!3 = !{!"../drivers/input/serio/ps2mult.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_file189, !5, !"__UNIQUE_ID_file189", i1 false, i1 false}
!5 = !{!"../drivers/input/serio/ps2mult.c", i32 16, i32 1}
!6 = !{ptr @__UNIQUE_ID_license190, !5, !"__UNIQUE_ID_license190", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ps2mult__200_304_ps2mult_drv_init6, !8, !"__initcall__kmod_ps2mult__200_304_ps2mult_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/serio/ps2mult.c", i32 304, i32 1}
!9 = !{ptr @__exitcall_ps2mult_drv_exit, !8, !"__exitcall_ps2mult_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/serio/ps2mult.c", i32 296, i32 17}
!13 = !{ptr @ps2mult_drv, !14, !"ps2mult_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/serio/ps2mult.c", i32 292, i32 28}
!15 = !{ptr @ps2mult_serio_ids, !16, !"ps2mult_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/serio/ps2mult.c", i32 52, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/serio/ps2mult.c", i32 239, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug193, !18, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/serio/ps2mult.c", i32 253, i32 3}
!24 = !{ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug194, !23, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/serio/ps2mult.c", i32 258, i32 3}
!27 = !{ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug195, !26, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/serio/ps2mult.c", i32 263, i32 3}
!30 = !{ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug196, !29, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/serio/ps2mult.c", i32 267, i32 3}
!33 = !{ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug197, !32, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/serio/ps2mult.c", i32 271, i32 3}
!36 = !{ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug198, !35, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/serio/ps2mult.c", i32 276, i32 3}
!39 = !{ptr @ps2mult_interrupt.__UNIQUE_ID_ddebug199, !38, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!40 = !{ptr @ps2mult_connect.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/input/serio/ps2mult.c", i32 176, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/serio/ps2mult.c", i32 198, i32 3}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ps2mult_connect._entry, !44, !"_entry", i1 false, i1 false}
!49 = !{ptr @ps2mult_connect._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @ps2mult_controls, !51, !"ps2mult_controls", i1 false, i1 false}
!51 = !{!"../drivers/input/serio/ps2mult.c", i32 46, i32 28}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/serio/ps2mult.c", i32 134, i32 23}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/serio/ps2mult.c", i32 136, i32 4}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/serio/ps2mult.c", i32 88, i32 2}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ps2mult_serio_write.__UNIQUE_ID_ddebug192, !57, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!60 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/serio/ps2mult.c", i32 70, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ps2mult_select_port.__UNIQUE_ID_ddebug191, !63, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2148696302, i64 2148696307, i64 2148696320, i64 2148696364, i64 2148696398, i64 2148696419}
!76 = !{i8 0, i8 2}
