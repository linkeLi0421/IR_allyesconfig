; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-context.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-context.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pvr2_context = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pvr2_context_stream, %struct.mutex, i32, i32, i32, ptr }
%struct.pvr2_context_stream = type { ptr, ptr }
%struct.pvr2_channel = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvrusb2-context\00", [16 x i8] zeroinitializer }, align 32
@pvr2_context_thread_ptr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pvr2_context_cleanup_flag = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pvr2_context_sync_data = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.6 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @pvr2_context_sync_data, i64 44), ptr getelementptr (i8, ptr @pvr2_context_sync_data, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-context.c\00", [52 x i8] zeroinitializer }, align 32
@pvr2_context_cleaned_flag = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pvr2_context_cleanup_data = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.6 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @pvr2_context_cleanup_data, i64 44), ptr getelementptr (i8, ptr @pvr2_context_cleanup_data, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_context_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016pvrusb2: pvr2_context %p (create)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_context_create\00", [44 x i8] zeroinitializer }, align 32
@pvr2_context_create._entry_ptr = internal global ptr @pvr2_context_create._entry, section ".printk_index", align 4
@pvr2_context_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mp->mutex\00", [21 x i8] zeroinitializer }, align 32
@pvr2_context_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pvr2_context_mutex, i64 52), ptr getelementptr (i8, ptr @pvr2_context_mutex, i64 52) }, ptr @pvr2_context_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pvr2_context_exist_last = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pvr2_context_exist_first = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@stream_sync_key = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\00\01\BA", [28 x i8] zeroinitializer }, align 32
@pvr2_context_thread_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: pvr2_context thread start\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pvr2_context_thread_func\00", [39 x i8] zeroinitializer }, align 32
@pvr2_context_thread_func._entry_ptr = internal global ptr @pvr2_context_thread_func._entry, section ".printk_index", align 4
@pvr2_context_notify_first = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pvr2_context_thread_func._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.1, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016pvrusb2: pvr2_context thread cleaned up\0A\00", [53 x i8] zeroinitializer }, align 32
@pvr2_context_thread_func._entry_ptr.9 = internal global ptr @pvr2_context_thread_func._entry.7, section ".printk_index", align 4
@pvr2_context_thread_func._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.1, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016pvrusb2: pvr2_context thread end\0A\00", [60 x i8] zeroinitializer }, align 32
@pvr2_context_thread_func._entry_ptr.12 = internal global ptr @pvr2_context_thread_func._entry.10, section ".printk_index", align 4
@pvr2_context_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.1, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016pvrusb2: pvr2_context %p (notify)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_context_check\00", [45 x i8] zeroinitializer }, align 32
@pvr2_context_check._entry_ptr = internal global ptr @pvr2_context_check._entry, section ".printk_index", align 4
@pvr2_context_check._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.1, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016pvrusb2: pvr2_context %p (initialize)\0A\00", [55 x i8] zeroinitializer }, align 32
@pvr2_context_check._entry_ptr.17 = internal global ptr @pvr2_context_check._entry.15, section ".printk_index", align 4
@pvr2_context_check._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.1, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016pvrusb2: pvr2_context %p (thread skipping setup)\0A\00", [44 x i8] zeroinitializer }, align 32
@pvr2_context_check._entry_ptr.20 = internal global ptr @pvr2_context_check._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pvr2_context_sync_data.lock\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pvr2_context_cleanup_data.lock\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pvr2_context_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_context_mutex\00", [45 x i8] zeroinitializer }, align 32
@pvr2_context_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.1, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: pvr2_context %p (destroy)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_context_destroy\00", [43 x i8] zeroinitializer }, align 32
@pvr2_context_destroy._entry_ptr = internal global ptr @pvr2_context_destroy._entry, section ".printk_index", align 4
@pvr2_context_notify_last = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 183, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"pvr2_context_thread_ptr\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 27, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant [26 x i8] c"pvr2_context_cleanup_flag\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"pvr2_context_sync_data\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 194, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"pvr2_context_cleaned_flag\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"pvr2_context_cleanup_data\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 209, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 211, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"pvr2_context_mutex\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"pvr2_context_exist_last\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 19, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"pvr2_context_exist_first\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 18, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"stream_sync_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 395, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 153, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"pvr2_context_notify_first\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 20, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 169, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 175, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 102, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 106, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 119, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 23, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 24, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 22, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 69, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [25 x i8] c"pvr2_context_notify_last\00", align 1
@___asan_gen_.138 = private constant [47 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-context.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 21, i32 29 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @pvr2_context_check._entry, ptr @pvr2_context_check._entry.15, ptr @pvr2_context_check._entry.18, ptr @pvr2_context_check._entry_ptr, ptr @pvr2_context_check._entry_ptr.17, ptr @pvr2_context_check._entry_ptr.20, ptr @pvr2_context_create._entry, ptr @pvr2_context_create._entry_ptr, ptr @pvr2_context_destroy._entry, ptr @pvr2_context_destroy._entry_ptr, ptr @pvr2_context_thread_func._entry, ptr @pvr2_context_thread_func._entry.10, ptr @pvr2_context_thread_func._entry.7, ptr @pvr2_context_thread_func._entry_ptr, ptr @pvr2_context_thread_func._entry_ptr.12, ptr @pvr2_context_thread_func._entry_ptr.9, ptr @.str, ptr @pvr2_context_thread_ptr, ptr @pvr2_context_cleanup_flag, ptr @pvr2_context_sync_data, ptr @.str.1, ptr @pvr2_context_cleaned_flag, ptr @pvr2_context_cleanup_data, ptr @.str.2, ptr @.str.3, ptr @pvr2_context_create.__key, ptr @.str.4, ptr @pvr2_context_mutex, ptr @pvr2_context_exist_last, ptr @pvr2_context_exist_first, ptr @stream_sync_key, ptr @.str.5, ptr @.str.6, ptr @pvr2_context_notify_first, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pvr2_context_notify_last], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_thread_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_cleanup_flag to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_sync_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_cleaned_flag to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_cleanup_data to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_exist_last to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_exist_first to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_sync_key to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_thread_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_notify_first to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_thread_func._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_thread_func._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_check._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_check._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_context_notify_last to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_context_global_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @pvr2_context_thread_func, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cond = phi i32 [ 0, %if.then ], [ -12, %entry.if.end_crit_edge ]
  store ptr %call, ptr @pvr2_context_thread_ptr, align 4
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_context_thread_func(ptr nocapture noundef readnone %foo) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry54 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body4.preheader_crit_edge, label %do.end

entry.do.body4.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %do.body4.preheader

do.body4.preheader:                               ; preds = %do.end, %entry.do.body4.preheader_crit_edge
  br label %do.body4

do.body4:                                         ; preds = %pvr2_context_shutok.exit101.do.body4_crit_edge, %do.body4.preheader
  %1 = load ptr, ptr @pvr2_context_notify_first, align 4
  %cmp.not114 = icmp eq ptr %1, null
  br i1 %cmp.not114, label %do.body4.while.end_crit_edge, label %do.body4.while.body_crit_edge

do.body4.while.body_crit_edge:                    ; preds = %do.body4
  br label %while.body

do.body4.while.end_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %pvr2_context_check.exit.while.body_crit_edge, %do.body4.while.body_crit_edge
  %2 = phi ptr [ %39, %pvr2_context_check.exit.while.body_crit_edge ], [ %1, %do.body4.while.body_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @pvr2_context_mutex, i32 noundef 0) #6
  %notify_flag11.i = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %notify_flag11.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %notify_flag11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not.i = icmp eq i32 %4, 0
  br i1 %tobool12.not.i, label %while.body.pvr2_context_set_notify.exit_crit_edge, label %if.then13.i

while.body.pvr2_context_set_notify.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_set_notify.exit

if.then13.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %notify_flag11.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %notify_flag11.i, align 4
  %notify_next15.i = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %notify_next15.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %notify_next15.i, align 4
  %tobool16.not.i = icmp eq ptr %7, null
  %notify_prev22.i = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 5
  %8 = ptrtoint ptr %notify_prev22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify_prev22.i, align 4
  %notify_prev20.i = getelementptr inbounds %struct.pvr2_context, ptr %7, i32 0, i32 5
  %pvr2_context_notify_last.sink.i = select i1 %tobool16.not.i, ptr @pvr2_context_notify_last, ptr %notify_prev20.i
  %10 = ptrtoint ptr %pvr2_context_notify_last.sink.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pvr2_context_notify_last.sink.i, align 4
  %11 = load ptr, ptr %notify_prev22.i, align 4
  %tobool25.not.i = icmp eq ptr %11, null
  %12 = load ptr, ptr %notify_next15.i, align 4
  %notify_next29.i = getelementptr inbounds %struct.pvr2_context, ptr %11, i32 0, i32 4
  %notify_next29.i.sink = select i1 %tobool25.not.i, ptr @pvr2_context_notify_first, ptr %notify_next29.i
  %13 = ptrtoint ptr %notify_next29.i.sink to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %notify_next29.i.sink, align 4
  br label %pvr2_context_set_notify.exit

pvr2_context_set_notify.exit:                     ; preds = %if.then13.i, %while.body.pvr2_context_set_notify.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %14 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %pvr2_context_set_notify.exit.do.end3.i_crit_edge, label %do.end.i

pvr2_context_set_notify.exit.do.end3.i_crit_edge: ; preds = %pvr2_context_set_notify.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %pvr2_context_set_notify.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %pvr2_context_set_notify.exit.do.end3.i_crit_edge
  %initialized_flag.i = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 10
  %15 = ptrtoint ptr %initialized_flag.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %initialized_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i = icmp eq i32 %16, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %do.end3.i.if.end42.i_crit_edge

do.end3.i.if.end42.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

land.lhs.true.i:                                  ; preds = %do.end3.i
  %disconnect_flag.i = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 11
  %17 = ptrtoint ptr %disconnect_flag.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %disconnect_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.i = icmp eq i32 %18, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %land.lhs.true.i.if.end42.i_crit_edge

land.lhs.true.i.if.end42.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %19 = ptrtoint ptr %initialized_flag.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %initialized_flag.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %20 = load i32, ptr @pvrusb2_debug, align 4
  %and9.i = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then6.i.do.end19.i_crit_edge, label %do.end14.i

if.then6.i.do.end19.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

do.end14.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %2) #9
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end14.i, %if.then6.i.do.end19.i_crit_edge
  %hdw.i = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 6
  %21 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdw.i, align 4
  %call20.i = call i32 @pvr2_hdw_initialize(ptr noundef %22, ptr noundef nonnull @pvr2_context_notify, ptr noundef nonnull %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %do.body29.i, label %if.then22.i

if.then22.i:                                      ; preds = %do.end19.i
  %23 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdw.i, align 4
  %call24.i = call ptr @pvr2_hdw_get_video_stream(ptr noundef %24) #6
  %stream.i = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call24.i, ptr %stream.i, align 4
  %setup_func.i = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 12
  %26 = ptrtoint ptr %setup_func.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %setup_func.i, align 4
  %tobool25.not.i90 = icmp eq ptr %27, null
  br i1 %tobool25.not.i90, label %if.then22.i.if.end42.i_crit_edge, label %if.then26.i91

if.then22.i.if.end42.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then26.i91:                                    ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %27(ptr noundef nonnull %2) #6
  br label %if.end42.i

do.body29.i:                                      ; preds = %do.end19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %28 = load i32, ptr @pvrusb2_debug, align 4
  %and30.i = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %do.body29.i.if.end42.i_crit_edge, label %do.end35.i

do.body29.i.if.end42.i_crit_edge:                 ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

do.end35.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %2) #9
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end35.i, %do.body29.i.if.end42.i_crit_edge, %if.then26.i91, %if.then22.i.if.end42.i_crit_edge, %land.lhs.true.i.if.end42.i_crit_edge, %do.end3.i.if.end42.i_crit_edge
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %tobool43.not77.i = icmp eq ptr %30, null
  br i1 %tobool43.not77.i, label %if.end42.i.for.end.i_crit_edge, label %if.end42.i.for.body.i_crit_edge

if.end42.i.for.body.i_crit_edge:                  ; preds = %if.end42.i
  br label %for.body.i

if.end42.i.for.end.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end42.i.for.body.i_crit_edge
  %ch1.078.i = phi ptr [ %32, %for.inc.i.for.body.i_crit_edge ], [ %30, %if.end42.i.for.body.i_crit_edge ]
  %mc_next.i = getelementptr inbounds %struct.pvr2_channel, ptr %ch1.078.i, i32 0, i32 1
  %31 = ptrtoint ptr %mc_next.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mc_next.i, align 4
  %check_func.i = getelementptr inbounds %struct.pvr2_channel, ptr %ch1.078.i, i32 0, i32 6
  %33 = ptrtoint ptr %check_func.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %check_func.i, align 4
  %tobool44.not.i = icmp eq ptr %34, null
  br i1 %tobool44.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then45.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then45.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %34(ptr noundef nonnull %ch1.078.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then45.i, %for.body.i.for.inc.i_crit_edge
  %tobool43.not.i = icmp eq ptr %32, null
  br i1 %tobool43.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end42.i.for.end.i_crit_edge
  %disconnect_flag48.i = getelementptr inbounds %struct.pvr2_context, ptr %2, i32 0, i32 11
  %35 = ptrtoint ptr %disconnect_flag48.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %disconnect_flag48.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool49.not.i = icmp eq i32 %36, 0
  br i1 %tobool49.not.i, label %for.end.i.pvr2_context_check.exit_crit_edge, label %land.lhs.true50.i

for.end.i.pvr2_context_check.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_check.exit

land.lhs.true50.i:                                ; preds = %for.end.i
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %tobool52.not.i = icmp eq ptr %38, null
  br i1 %tobool52.not.i, label %if.then53.i, label %land.lhs.true50.i.pvr2_context_check.exit_crit_edge

land.lhs.true50.i.pvr2_context_check.exit_crit_edge: ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_check.exit

if.then53.i:                                      ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pvr2_context_destroy(ptr noundef nonnull %2) #6
  br label %pvr2_context_check.exit

pvr2_context_check.exit:                          ; preds = %if.then53.i, %land.lhs.true50.i.pvr2_context_check.exit_crit_edge, %for.end.i.pvr2_context_check.exit_crit_edge
  %39 = load ptr, ptr @pvr2_context_notify_first, align 4
  %cmp.not = icmp eq ptr %39, null
  br i1 %cmp.not, label %pvr2_context_check.exit.while.end_crit_edge, label %pvr2_context_check.exit.while.body_crit_edge

pvr2_context_check.exit.while.body_crit_edge:     ; preds = %pvr2_context_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

pvr2_context_check.exit.while.end_crit_edge:      ; preds = %pvr2_context_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %pvr2_context_check.exit.while.end_crit_edge, %do.body4.while.end_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 163) #6
  %40 = load ptr, ptr @pvr2_context_notify_first, align 4
  %cmp11.not = icmp eq ptr %40, null
  br i1 %cmp11.not, label %lor.lhs.false, label %while.end.if.end27_crit_edge

while.end.if.end27_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

lor.lhs.false:                                    ; preds = %while.end
  %.b.i = load i1, ptr @pvr2_context_cleanup_flag, align 4
  br i1 %.b.i, label %pvr2_context_shutok.exit, label %lor.lhs.false.if.then14_crit_edge

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

pvr2_context_shutok.exit:                         ; preds = %lor.lhs.false
  %41 = load ptr, ptr @pvr2_context_exist_first, align 4
  %cmp.i.not = icmp eq ptr %41, null
  br i1 %cmp.i.not, label %pvr2_context_shutok.exit.land.rhs.i100_crit_edge, label %pvr2_context_shutok.exit.if.then14_crit_edge

pvr2_context_shutok.exit.if.then14_crit_edge:     ; preds = %pvr2_context_shutok.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

pvr2_context_shutok.exit.land.rhs.i100_crit_edge: ; preds = %pvr2_context_shutok.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i100

if.then14:                                        ; preds = %pvr2_context_shutok.exit.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %42 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call16115 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pvr2_context_sync_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %43 = load ptr, ptr @pvr2_context_notify_first, align 4
  %cmp17.not116 = icmp eq ptr %43, null
  br i1 %cmp17.not116, label %if.then14.lor.lhs.false18_crit_edge, label %if.then14.for.end_crit_edge

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then14.lor.lhs.false18_crit_edge:              ; preds = %if.then14
  br label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %cleanup.lor.lhs.false18_crit_edge, %if.then14.lor.lhs.false18_crit_edge
  %call16117 = phi i32 [ %call16, %cleanup.lor.lhs.false18_crit_edge ], [ %call16115, %if.then14.lor.lhs.false18_crit_edge ]
  %.b.i92 = load i1, ptr @pvr2_context_cleanup_flag, align 4
  br i1 %.b.i92, label %pvr2_context_shutok.exit96, label %lor.lhs.false18.if.end22_crit_edge

lor.lhs.false18.if.end22_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

pvr2_context_shutok.exit96:                       ; preds = %lor.lhs.false18
  %44 = load ptr, ptr @pvr2_context_exist_first, align 4
  %cmp.i93.not = icmp eq ptr %44, null
  br i1 %cmp.i93.not, label %pvr2_context_shutok.exit96.for.end_crit_edge, label %pvr2_context_shutok.exit96.if.end22_crit_edge

pvr2_context_shutok.exit96.if.end22_crit_edge:    ; preds = %pvr2_context_shutok.exit96
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

pvr2_context_shutok.exit96.for.end_crit_edge:     ; preds = %pvr2_context_shutok.exit96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end22:                                         ; preds = %pvr2_context_shutok.exit96.if.end22_crit_edge, %lor.lhs.false18.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16117)
  %tobool23.not = icmp eq i32 %call16117, 0
  br i1 %tobool23.not, label %cleanup, label %if.end22.__out_crit_edge

if.end22.__out_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end22
  call void @schedule() #6
  %call16 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pvr2_context_sync_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %45 = load ptr, ptr @pvr2_context_notify_first, align 4
  %cmp17.not = icmp eq ptr %45, null
  br i1 %cmp17.not, label %cleanup.lor.lhs.false18_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.lor.lhs.false18_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false18

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %pvr2_context_shutok.exit96.for.end_crit_edge, %if.then14.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @pvr2_context_sync_data, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end22.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end27

if.end27:                                         ; preds = %__out, %while.end.if.end27_crit_edge
  %.b.i97.pr = load i1, ptr @pvr2_context_cleanup_flag, align 4
  br i1 %.b.i97.pr, label %if.end27.land.rhs.i100_crit_edge, label %if.end27.pvr2_context_shutok.exit101_crit_edge

if.end27.pvr2_context_shutok.exit101_crit_edge:   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_shutok.exit101

if.end27.land.rhs.i100_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i100

land.rhs.i100:                                    ; preds = %if.end27.land.rhs.i100_crit_edge, %pvr2_context_shutok.exit.land.rhs.i100_crit_edge
  %46 = load ptr, ptr @pvr2_context_exist_first, align 4
  %cmp.i98 = icmp eq ptr %46, null
  %phi.cast.i99 = zext i1 %cmp.i98 to i32
  br label %pvr2_context_shutok.exit101

pvr2_context_shutok.exit101:                      ; preds = %land.rhs.i100, %if.end27.pvr2_context_shutok.exit101_crit_edge
  %47 = phi i32 [ 0, %if.end27.pvr2_context_shutok.exit101_crit_edge ], [ %phi.cast.i99, %land.rhs.i100 ]
  %tobool31.not = icmp eq i32 %47, 0
  br i1 %tobool31.not, label %pvr2_context_shutok.exit101.do.body4_crit_edge, label %do.end32

pvr2_context_shutok.exit101.do.body4_crit_edge:   ; preds = %pvr2_context_shutok.exit101
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

do.end32:                                         ; preds = %pvr2_context_shutok.exit101
  store i1 true, ptr @pvr2_context_cleaned_flag, align 4
  call void @__wake_up(ptr noundef nonnull @pvr2_context_cleanup_data, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %48 = load i32, ptr @pvrusb2_debug, align 4
  %and34 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.end32.do.end44_crit_edge, label %do.end39

do.end32.do.end44_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.end39:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %do.end44

do.end44:                                         ; preds = %do.end39, %do.end32.do.end44_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 173) #6
  %call52 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call52, label %do.end44.if.end71_crit_edge, label %if.then53

do.end44.if.end71_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then53:                                        ; preds = %do.end44
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry54) #6
  %49 = call ptr @memset(ptr %__wq_entry54, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry54, i32 noundef 0) #6
  %call58118 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pvr2_context_sync_data, ptr noundef nonnull %__wq_entry54, i32 noundef 1) #6
  %call59119 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call59119, label %if.then53.for.end68_crit_edge, label %if.then53.if.end61_crit_edge

if.then53.if.end61_crit_edge:                     ; preds = %if.then53
  br label %if.end61

if.then53.for.end68_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end68

if.end61:                                         ; preds = %cleanup65.if.end61_crit_edge, %if.then53.if.end61_crit_edge
  %call58120 = phi i32 [ %call58, %cleanup65.if.end61_crit_edge ], [ %call58118, %if.then53.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58120)
  %tobool62.not = icmp eq i32 %call58120, 0
  br i1 %tobool62.not, label %cleanup65, label %if.end61.__out69_crit_edge

if.end61.__out69_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out69

cleanup65:                                        ; preds = %if.end61
  call void @schedule() #6
  %call58 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pvr2_context_sync_data, ptr noundef nonnull %__wq_entry54, i32 noundef 1) #6
  %call59 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call59, label %cleanup65.for.end68_crit_edge, label %cleanup65.if.end61_crit_edge

cleanup65.if.end61_crit_edge:                     ; preds = %cleanup65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

cleanup65.for.end68_crit_edge:                    ; preds = %cleanup65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end68

for.end68:                                        ; preds = %cleanup65.for.end68_crit_edge, %if.then53.for.end68_crit_edge
  call void @finish_wait(ptr noundef nonnull @pvr2_context_sync_data, ptr noundef nonnull %__wq_entry54) #6
  br label %__out69

__out69:                                          ; preds = %for.end68, %if.end61.__out69_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry54) #6
  br label %if.end71

if.end71:                                         ; preds = %__out69, %do.end44.if.end71_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %50 = load i32, ptr @pvrusb2_debug, align 4
  %and74 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end71.do.end84_crit_edge, label %do.end79

if.end71.do.end84_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end84

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %do.end84

do.end84:                                         ; preds = %do.end79, %if.end71.do.end84_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_context_global_done() local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @pvr2_context_cleanup_flag, align 4
  tail call void @__wake_up(ptr noundef nonnull @pvr2_context_sync_data, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 196) #6
  %.b14 = load i1, ptr @pvr2_context_cleaned_flag, align 4
  br i1 %.b14, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call20 = call i32 @prepare_to_wait_event(ptr noundef nonnull @pvr2_context_cleanup_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %.b21 = load i1, ptr @pvr2_context_cleaned_flag, align 4
  br i1 %.b21, label %if.then.for.end_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call22 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call20, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool7.not = icmp eq i32 %call22, 0
  br i1 %tobool7.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #6
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @pvr2_context_cleanup_data, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %.b = load i1, ptr @pvr2_context_cleaned_flag, align 4
  br i1 %.b, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @pvr2_context_cleanup_data, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end10

if.end10:                                         ; preds = %__out, %entry.if.end10_crit_edge
  %1 = load ptr, ptr @pvr2_context_thread_ptr, align 4
  %call12 = call i32 @kthread_stop(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvr2_context_create(ptr noundef %intf, ptr noundef %devid, ptr noundef %setup_func) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %do.body

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %1 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %setup_func8 = getelementptr inbounds %struct.pvr2_context, ptr %call7.i.i, i32 0, i32 12
  %2 = ptrtoint ptr %setup_func8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %setup_func, ptr %setup_func8, align 4
  %mutex = getelementptr inbounds %struct.pvr2_context, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @pvr2_context_create.__key) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvr2_context_mutex, i32 noundef 0) #6
  %3 = load ptr, ptr @pvr2_context_exist_last, align 4
  %exist_prev = getelementptr inbounds %struct.pvr2_context, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %exist_prev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %exist_prev, align 4
  %exist_next = getelementptr inbounds %struct.pvr2_context, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %exist_next to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %exist_next, align 8
  store ptr %call7.i.i, ptr @pvr2_context_exist_last, align 4
  %tobool13.not = icmp eq ptr %3, null
  %exist_next16 = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 2
  %pvr2_context_exist_first.sink = select i1 %tobool13.not, ptr @pvr2_context_exist_first, ptr %exist_next16
  %6 = ptrtoint ptr %pvr2_context_exist_first.sink to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %pvr2_context_exist_first.sink, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  %call18 = tail call ptr @pvr2_hdw_create(ptr noundef %intf, ptr noundef %devid) #6
  %hdw = getelementptr inbounds %struct.pvr2_context, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %hdw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18, ptr %hdw, align 8
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pvr2_context_destroy(ptr noundef nonnull %call7.i.i)
  br label %done

if.end22:                                         ; preds = %do.end7
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvr2_context_mutex, i32 noundef 0) #6
  %notify_flag11.i = getelementptr inbounds %struct.pvr2_context, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %notify_flag11.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %notify_flag11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not.i = icmp eq i32 %9, 0
  br i1 %tobool12.not.i, label %if.then2.i, label %if.end37.critedge.i

if.then2.i:                                       ; preds = %if.end22
  %10 = load ptr, ptr @pvr2_context_notify_first, align 4
  %cmp.not.i = icmp eq ptr %10, null
  %11 = load ptr, ptr @pvr2_context_notify_last, align 4
  %notify_prev.i = getelementptr inbounds %struct.pvr2_context, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %notify_prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %notify_prev.i, align 4
  %notify_next.i = getelementptr inbounds %struct.pvr2_context, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %notify_next.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %notify_next.i, align 8
  store ptr %call7.i.i, ptr @pvr2_context_notify_last, align 4
  %tobool4.not.i = icmp eq ptr %11, null
  %notify_next7.i = getelementptr inbounds %struct.pvr2_context, ptr %11, i32 0, i32 4
  %pvr2_context_notify_first.sink.i = select i1 %tobool4.not.i, ptr @pvr2_context_notify_first, ptr %notify_next7.i
  %14 = ptrtoint ptr %pvr2_context_notify_first.sink.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %pvr2_context_notify_first.sink.i, align 4
  %15 = ptrtoint ptr %notify_flag11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %notify_flag11.i, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  br i1 %cmp.not.i, label %if.then36.i, label %if.then2.i.done_crit_edge

if.then2.i.done_crit_edge:                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then36.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef nonnull @pvr2_context_sync_data, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %done

if.end37.critedge.i:                              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  br label %done

done:                                             ; preds = %if.end37.critedge.i, %if.then36.i, %if.then2.i.done_crit_edge, %if.then21, %entry.done_crit_edge
  %mp.0 = phi ptr [ null, %if.then21 ], [ null, %entry.done_crit_edge ], [ %call7.i.i, %if.then2.i.done_crit_edge ], [ %call7.i.i, %if.then36.i ], [ %call7.i.i, %if.end37.critedge.i ]
  ret ptr %mp.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvr2_context_destroy(ptr noundef %mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %mp) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %hdw = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 6
  %1 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdw, align 4
  tail call void @pvr2_hdw_destroy(ptr noundef %2) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvr2_context_mutex, i32 noundef 0) #6
  %notify_flag11.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 9
  %3 = ptrtoint ptr %notify_flag11.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %notify_flag11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not.i = icmp eq i32 %4, 0
  br i1 %tobool12.not.i, label %do.end2.pvr2_context_set_notify.exit_crit_edge, label %if.then13.i

do.end2.pvr2_context_set_notify.exit_crit_edge:   ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_set_notify.exit

if.then13.i:                                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %notify_flag11.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %notify_flag11.i, align 4
  %notify_next15.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 4
  %6 = ptrtoint ptr %notify_next15.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %notify_next15.i, align 4
  %tobool16.not.i = icmp eq ptr %7, null
  %notify_prev22.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 5
  %8 = ptrtoint ptr %notify_prev22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify_prev22.i, align 4
  %notify_prev20.i = getelementptr inbounds %struct.pvr2_context, ptr %7, i32 0, i32 5
  %pvr2_context_notify_last.sink.i = select i1 %tobool16.not.i, ptr @pvr2_context_notify_last, ptr %notify_prev20.i
  %10 = ptrtoint ptr %pvr2_context_notify_last.sink.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pvr2_context_notify_last.sink.i, align 4
  %11 = load ptr, ptr %notify_prev22.i, align 4
  %tobool25.not.i = icmp eq ptr %11, null
  %12 = load ptr, ptr %notify_next15.i, align 4
  %notify_next29.i = getelementptr inbounds %struct.pvr2_context, ptr %11, i32 0, i32 4
  %notify_next29.i.sink = select i1 %tobool25.not.i, ptr @pvr2_context_notify_first, ptr %notify_next29.i
  %13 = ptrtoint ptr %notify_next29.i.sink to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %notify_next29.i.sink, align 4
  br label %pvr2_context_set_notify.exit

pvr2_context_set_notify.exit:                     ; preds = %if.then13.i, %do.end2.pvr2_context_set_notify.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvr2_context_mutex, i32 noundef 0) #6
  %exist_next = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 2
  %14 = ptrtoint ptr %exist_next to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %exist_next, align 4
  %tobool3.not = icmp eq ptr %15, null
  %exist_prev7 = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 3
  %16 = ptrtoint ptr %exist_prev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %exist_prev7, align 4
  %exist_prev6 = getelementptr inbounds %struct.pvr2_context, ptr %15, i32 0, i32 3
  %pvr2_context_exist_last.sink = select i1 %tobool3.not, ptr @pvr2_context_exist_last, ptr %exist_prev6
  %18 = ptrtoint ptr %pvr2_context_exist_last.sink to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %pvr2_context_exist_last.sink, align 4
  %exist_prev9 = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 3
  %19 = ptrtoint ptr %exist_prev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %exist_prev9, align 4
  %tobool10.not = icmp eq ptr %20, null
  %21 = load ptr, ptr %exist_next, align 4
  br i1 %tobool10.not, label %if.else15, label %if.then11

if.then11:                                        ; preds = %pvr2_context_set_notify.exit
  call void @__sanitizer_cov_trace_pc() #8
  %exist_next14 = getelementptr inbounds %struct.pvr2_context, ptr %20, i32 0, i32 2
  %22 = ptrtoint ptr %exist_next14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %exist_next14, align 4
  %.pr = load ptr, ptr @pvr2_context_exist_first, align 4
  br label %if.end17

if.else15:                                        ; preds = %pvr2_context_set_notify.exit
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %21, ptr @pvr2_context_exist_first, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then11
  %23 = phi ptr [ %21, %if.else15 ], [ %.pr, %if.then11 ]
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef nonnull @pvr2_context_sync_data, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  tail call void @kfree(ptr noundef %mp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_context_disconnect(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdw = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 6
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 4
  tail call void @pvr2_hdw_disconnect(ptr noundef %1) #6
  %disconnect_flag = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 11
  %2 = ptrtoint ptr %disconnect_flag to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %disconnect_flag, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvr2_context_mutex, i32 noundef 0) #6
  %notify_flag11.i.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 9
  %3 = ptrtoint ptr %notify_flag11.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %notify_flag11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool12.not.i.i, label %if.then2.i.i, label %if.end37.critedge.i.i

if.then2.i.i:                                     ; preds = %entry
  %5 = load ptr, ptr @pvr2_context_notify_first, align 4
  %cmp.not.i.i = icmp eq ptr %5, null
  %6 = load ptr, ptr @pvr2_context_notify_last, align 4
  %notify_prev.i.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 5
  %7 = ptrtoint ptr %notify_prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %notify_prev.i.i, align 4
  %notify_next.i.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 4
  %8 = ptrtoint ptr %notify_next.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %notify_next.i.i, align 4
  store ptr %mp, ptr @pvr2_context_notify_last, align 4
  %tobool4.not.i.i = icmp eq ptr %6, null
  %notify_next7.i.i = getelementptr inbounds %struct.pvr2_context, ptr %6, i32 0, i32 4
  %pvr2_context_notify_first.sink.i.i = select i1 %tobool4.not.i.i, ptr @pvr2_context_notify_first, ptr %notify_next7.i.i
  %9 = ptrtoint ptr %pvr2_context_notify_first.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mp, ptr %pvr2_context_notify_first.sink.i.i, align 4
  %10 = ptrtoint ptr %notify_flag11.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %notify_flag11.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  br i1 %cmp.not.i.i, label %if.then36.i.i, label %if.then2.i.i.pvr2_context_notify.exit_crit_edge

if.then2.i.i.pvr2_context_notify.exit_crit_edge:  ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_notify.exit

if.then36.i.i:                                    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef nonnull @pvr2_context_sync_data, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %pvr2_context_notify.exit

if.end37.critedge.i.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  br label %pvr2_context_notify.exit

pvr2_context_notify.exit:                         ; preds = %if.end37.critedge.i.i, %if.then36.i.i, %if.then2.i.i.pvr2_context_notify.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvr2_context_notify(ptr noundef %mp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvr2_context_mutex, i32 noundef 0) #6
  %notify_flag11.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 9
  %0 = ptrtoint ptr %notify_flag11.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %notify_flag11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool12.not.i = icmp eq i32 %1, 0
  br i1 %tobool12.not.i, label %if.then2.i, label %if.end37.critedge.i

if.then2.i:                                       ; preds = %entry
  %2 = load ptr, ptr @pvr2_context_notify_first, align 4
  %cmp.not.i = icmp eq ptr %2, null
  %3 = load ptr, ptr @pvr2_context_notify_last, align 4
  %notify_prev.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 5
  %4 = ptrtoint ptr %notify_prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %notify_prev.i, align 4
  %notify_next.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 4
  %5 = ptrtoint ptr %notify_next.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %notify_next.i, align 4
  store ptr %mp, ptr @pvr2_context_notify_last, align 4
  %tobool4.not.i = icmp eq ptr %3, null
  %notify_next7.i = getelementptr inbounds %struct.pvr2_context, ptr %3, i32 0, i32 4
  %pvr2_context_notify_first.sink.i = select i1 %tobool4.not.i, ptr @pvr2_context_notify_first, ptr %notify_next7.i
  %6 = ptrtoint ptr %pvr2_context_notify_first.sink.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mp, ptr %pvr2_context_notify_first.sink.i, align 4
  %7 = ptrtoint ptr %notify_flag11.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %notify_flag11.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  br i1 %cmp.not.i, label %if.then36.i, label %if.then2.i.pvr2_context_set_notify.exit_crit_edge

if.then2.i.pvr2_context_set_notify.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_set_notify.exit

if.then36.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef nonnull @pvr2_context_sync_data, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %pvr2_context_set_notify.exit

if.end37.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  br label %pvr2_context_set_notify.exit

pvr2_context_set_notify.exit:                     ; preds = %if.end37.critedge.i, %if.then36.i, %if.then2.i.pvr2_context_set_notify.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_channel_init(ptr noundef %cp, ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %hdw = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 6
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 4
  %hdw1 = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 4
  %2 = ptrtoint ptr %hdw1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %hdw1, align 4
  %3 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mp, ptr %cp, align 4
  %mc_next = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 1
  %4 = ptrtoint ptr %mc_next to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mc_next, align 4
  %mc_last = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 1
  %5 = ptrtoint ptr %mc_last to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mc_last, align 4
  %mc_prev = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 2
  %7 = ptrtoint ptr %mc_prev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mc_prev, align 4
  %8 = load ptr, ptr %mc_last, align 4
  %tobool.not = icmp eq ptr %8, null
  %mc_next4 = getelementptr inbounds %struct.pvr2_channel, ptr %8, i32 0, i32 1
  %mp.sink = select i1 %tobool.not, ptr %mp, ptr %mc_next4
  %9 = ptrtoint ptr %mp.sink to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cp, ptr %mp.sink, align 4
  store ptr %cp, ptr %mc_last, align 4
  tail call fastcc void @pvr2_context_exit(ptr noundef %mp)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvr2_context_exit(ptr noundef %mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %if.end4.critedge

lor.lhs.false:                                    ; preds = %entry
  %disconnect_flag = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 11
  %2 = ptrtoint ptr %disconnect_flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disconnect_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %mutex = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br i1 %tobool1.not, label %lor.lhs.false.if.end4_crit_edge, label %if.then3

lor.lhs.false.if.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @pvr2_context_mutex, i32 noundef 0) #6
  %notify_flag11.i.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 9
  %4 = ptrtoint ptr %notify_flag11.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_flag11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool12.not.i.i, label %if.then2.i.i, label %if.end37.critedge.i.i

if.then2.i.i:                                     ; preds = %if.then3
  %6 = load ptr, ptr @pvr2_context_notify_first, align 4
  %cmp.not.i.i = icmp eq ptr %6, null
  %7 = load ptr, ptr @pvr2_context_notify_last, align 4
  %notify_prev.i.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 5
  %8 = ptrtoint ptr %notify_prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %notify_prev.i.i, align 4
  %notify_next.i.i = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 4
  %9 = ptrtoint ptr %notify_next.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %notify_next.i.i, align 4
  store ptr %mp, ptr @pvr2_context_notify_last, align 4
  %tobool4.not.i.i = icmp eq ptr %7, null
  %notify_next7.i.i = getelementptr inbounds %struct.pvr2_context, ptr %7, i32 0, i32 4
  %pvr2_context_notify_first.sink.i.i = select i1 %tobool4.not.i.i, ptr @pvr2_context_notify_first, ptr %notify_next7.i.i
  %10 = ptrtoint ptr %pvr2_context_notify_first.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mp, ptr %pvr2_context_notify_first.sink.i.i, align 4
  %11 = ptrtoint ptr %notify_flag11.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %notify_flag11.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  br i1 %cmp.not.i.i, label %if.then36.i.i, label %if.then2.i.i.if.end4_crit_edge

if.then2.i.i.if.end4_crit_edge:                   ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then36.i.i:                                    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef nonnull @pvr2_context_sync_data, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end4

if.end37.critedge.i.i:                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef nonnull @pvr2_context_mutex) #6
  br label %if.end4

if.end4.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mutex.c = getelementptr inbounds %struct.pvr2_context, ptr %mp, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mutex.c) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end4.critedge, %if.end37.critedge.i.i, %if.then36.i.i, %if.then2.i.i.if.end4_crit_edge, %lor.lhs.false.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_channel_done(ptr nocapture noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 4
  %mutex.i = getelementptr inbounds %struct.pvr2_context, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %input_mask = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 5
  %2 = ptrtoint ptr %input_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %input_mask, align 4
  %stream.i = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 3
  %3 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stream.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.pvr2_channel_disclaim_stream.exit_crit_edge, label %if.end.i

entry.pvr2_channel_disclaim_stream.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_channel_disclaim_stream.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stream2.i = getelementptr inbounds %struct.pvr2_context_stream, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %stream2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream2.i, align 4
  tail call void @pvr2_stream_kill(ptr noundef %6) #6
  %7 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 4
  store ptr null, ptr %stream.i, align 4
  br label %pvr2_channel_disclaim_stream.exit

pvr2_channel_disclaim_stream.exit:                ; preds = %if.end.i, %entry.pvr2_channel_disclaim_stream.exit_crit_edge
  %hdw1.i = getelementptr inbounds %struct.pvr2_context, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %hdw1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdw1.i, align 4
  %call.i = tail call i32 @pvr2_hdw_get_input_available(ptr noundef %11) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %cp.014.i = load ptr, ptr %1, align 4
  %tobool.not15.i = icmp eq ptr %cp.014.i, null
  br i1 %tobool.not15.i, label %pvr2_channel_disclaim_stream.exit.pvr2_context_reset_input_limits.exit_crit_edge, label %pvr2_channel_disclaim_stream.exit.for.body.i_crit_edge

pvr2_channel_disclaim_stream.exit.for.body.i_crit_edge: ; preds = %pvr2_channel_disclaim_stream.exit
  br label %for.body.i

pvr2_channel_disclaim_stream.exit.pvr2_context_reset_input_limits.exit_crit_edge: ; preds = %pvr2_channel_disclaim_stream.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_reset_input_limits.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %pvr2_channel_disclaim_stream.exit.for.body.i_crit_edge
  %cp.017.i = phi ptr [ %cp.0.i, %for.body.i.for.body.i_crit_edge ], [ %cp.014.i, %pvr2_channel_disclaim_stream.exit.for.body.i_crit_edge ]
  %tmsk.016.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %pvr2_channel_disclaim_stream.exit.for.body.i_crit_edge ]
  %input_mask.i = getelementptr inbounds %struct.pvr2_channel, ptr %cp.017.i, i32 0, i32 5
  %13 = ptrtoint ptr %input_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %input_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  %and.i = select i1 %tobool2.not.i, i32 -1, i32 %14
  %spec.select.i = and i32 %and.i, %tmsk.016.i
  %mc_next.i = getelementptr inbounds %struct.pvr2_channel, ptr %cp.017.i, i32 0, i32 1
  %15 = ptrtoint ptr %mc_next.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %cp.0.i = load ptr, ptr %mc_next.i, align 4
  %tobool.not.i29 = icmp eq ptr %cp.0.i, null
  br i1 %tobool.not.i29, label %for.body.i.pvr2_context_reset_input_limits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.pvr2_context_reset_input_limits.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_reset_input_limits.exit

pvr2_context_reset_input_limits.exit:             ; preds = %for.body.i.pvr2_context_reset_input_limits.exit_crit_edge, %pvr2_channel_disclaim_stream.exit.pvr2_context_reset_input_limits.exit_crit_edge
  %tmsk.0.lcssa.i = phi i32 [ %call.i, %pvr2_channel_disclaim_stream.exit.pvr2_context_reset_input_limits.exit_crit_edge ], [ %spec.select.i, %for.body.i.pvr2_context_reset_input_limits.exit_crit_edge ]
  %call4.i = tail call i32 @pvr2_hdw_set_input_allowed(ptr noundef %11, i32 noundef %call.i, i32 noundef %tmsk.0.lcssa.i) #6
  %call5.i = tail call i32 @pvr2_hdw_commit_ctl(ptr noundef %11) #6
  %mc_next = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 1
  %16 = ptrtoint ptr %mc_next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc_next, align 4
  %tobool.not = icmp eq ptr %17, null
  %mc_prev3 = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 2
  %18 = ptrtoint ptr %mc_prev3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc_prev3, align 4
  %mc_last = getelementptr inbounds %struct.pvr2_context, ptr %1, i32 0, i32 1
  %mc_prev2 = getelementptr inbounds %struct.pvr2_channel, ptr %17, i32 0, i32 2
  %mc_last.sink = select i1 %tobool.not, ptr %mc_last, ptr %mc_prev2
  %20 = ptrtoint ptr %mc_last.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %mc_last.sink, align 4
  %mc_prev4 = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 2
  %21 = ptrtoint ptr %mc_prev4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mc_prev4, align 4
  %tobool5.not = icmp eq ptr %22, null
  %23 = load ptr, ptr %mc_next, align 4
  %mc_next9 = getelementptr inbounds %struct.pvr2_channel, ptr %22, i32 0, i32 1
  %.sink = select i1 %tobool5.not, ptr %1, ptr %mc_next9
  %24 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %.sink, align 4
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 4
  %25 = ptrtoint ptr %hdw to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %hdw, align 4
  tail call fastcc void @pvr2_context_exit(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_channel_limit_inputs(ptr noundef %cp, i32 noundef %cmsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hdw1 = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 4
  %0 = ptrtoint ptr %hdw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw1, align 4
  %call = tail call i32 @pvr2_hdw_get_input_available(ptr noundef %1) #6
  %and = and i32 %call, %cmsk
  %input_mask = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 5
  %2 = ptrtoint ptr %input_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp = icmp eq i32 %and, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp, align 4
  %mutex.i = getelementptr inbounds %struct.pvr2_context, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %input_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %input_mask, align 4
  %7 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cp, align 4
  %hdw1.i = getelementptr inbounds %struct.pvr2_context, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %hdw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdw1.i, align 4
  %call.i = tail call i32 @pvr2_hdw_get_input_available(ptr noundef %10) #6
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %cp.014.i = load ptr, ptr %8, align 4
  %tobool.not15.i = icmp eq ptr %cp.014.i, null
  br i1 %tobool.not15.i, label %if.then2.pvr2_context_reset_input_limits.exit_crit_edge, label %if.then2.for.body.i_crit_edge

if.then2.for.body.i_crit_edge:                    ; preds = %if.then2
  br label %for.body.i

if.then2.pvr2_context_reset_input_limits.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_reset_input_limits.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then2.for.body.i_crit_edge
  %cp.017.i = phi ptr [ %cp.0.i, %for.body.i.for.body.i_crit_edge ], [ %cp.014.i, %if.then2.for.body.i_crit_edge ]
  %tmsk.016.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.then2.for.body.i_crit_edge ]
  %input_mask.i = getelementptr inbounds %struct.pvr2_channel, ptr %cp.017.i, i32 0, i32 5
  %12 = ptrtoint ptr %input_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i = icmp eq i32 %13, 0
  %and.i = select i1 %tobool2.not.i, i32 -1, i32 %13
  %spec.select.i = and i32 %and.i, %tmsk.016.i
  %mc_next.i = getelementptr inbounds %struct.pvr2_channel, ptr %cp.017.i, i32 0, i32 1
  %14 = ptrtoint ptr %mc_next.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cp.0.i = load ptr, ptr %mc_next.i, align 4
  %tobool.not.i = icmp eq ptr %cp.0.i, null
  br i1 %tobool.not.i, label %for.body.i.pvr2_context_reset_input_limits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.pvr2_context_reset_input_limits.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_context_reset_input_limits.exit

pvr2_context_reset_input_limits.exit:             ; preds = %for.body.i.pvr2_context_reset_input_limits.exit_crit_edge, %if.then2.pvr2_context_reset_input_limits.exit_crit_edge
  %tmsk.0.lcssa.i = phi i32 [ %call.i, %if.then2.pvr2_context_reset_input_limits.exit_crit_edge ], [ %spec.select.i, %for.body.i.pvr2_context_reset_input_limits.exit_crit_edge ]
  %call4.i = tail call i32 @pvr2_hdw_set_input_allowed(ptr noundef %10, i32 noundef %call.i, i32 noundef %tmsk.0.lcssa.i) #6
  br label %do.end.sink.split

if.end5:                                          ; preds = %if.end
  %15 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cp, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %p2.057 = load ptr, ptr %16, align 4
  %tobool7.not58 = icmp eq ptr %p2.057, null
  br i1 %tobool7.not58, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %p2.060 = phi ptr [ %p2.0, %for.inc.for.body_crit_edge ], [ %p2.057, %if.end5.for.body_crit_edge ]
  %tmsk.059 = phi i32 [ %tmsk.1, %for.inc.for.body_crit_edge ], [ %call, %if.end5.for.body_crit_edge ]
  %cmp8 = icmp eq ptr %p2.060, %cp
  br i1 %cmp8, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end10:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %input_mask11 = getelementptr inbounds %struct.pvr2_channel, ptr %p2.060, i32 0, i32 5
  %18 = ptrtoint ptr %input_mask11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %input_mask11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  %and16 = select i1 %tobool12.not, i32 -1, i32 %19
  %spec.select = and i32 %and16, %tmsk.059
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %for.body.for.inc_crit_edge
  %tmsk.1 = phi i32 [ %tmsk.059, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end10 ]
  %mc_next = getelementptr inbounds %struct.pvr2_channel, ptr %p2.060, i32 0, i32 1
  %20 = ptrtoint ptr %mc_next to i32
  call void @__asan_load4_noabort(i32 %20)
  %p2.0 = load ptr, ptr %mc_next, align 4
  %tobool7.not = icmp eq ptr %p2.0, null
  br i1 %tobool7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge
  %tmsk.0.lcssa = phi i32 [ %call, %if.end5.for.end_crit_edge ], [ %tmsk.1, %for.inc.for.end_crit_edge ]
  %and17 = and i32 %tmsk.0.lcssa, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %for.end.do.end_crit_edge, label %if.end20

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end20:                                         ; preds = %for.end
  %call22 = tail call i32 @pvr2_hdw_set_input_allowed(ptr noundef %1, i32 noundef %call, i32 noundef %and17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 0
  br i1 %cmp23.not, label %if.end25, label %if.end20.do.end_crit_edge

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %input_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and, ptr %input_mask, align 4
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.end25, %pvr2_context_reset_input_limits.exit
  %.sink = phi ptr [ %1, %if.end25 ], [ %10, %pvr2_context_reset_input_limits.exit ]
  %call27 = tail call i32 @pvr2_hdw_commit_ctl(ptr noundef %.sink) #6
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end20.do.end_crit_edge, %for.end.do.end_crit_edge
  %ret.0 = phi i32 [ %call22, %if.end20.do.end_crit_edge ], [ -1, %for.end.do.end_crit_edge ], [ 0, %do.end.sink.split ]
  %22 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cp, align 4
  tail call fastcc void @pvr2_context_exit(ptr noundef %23)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_get_input_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_set_input_allowed(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_commit_ctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_channel_get_limited_inputs(ptr nocapture noundef readonly %cp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %input_mask = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 5
  %0 = ptrtoint ptr %input_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %input_mask, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_channel_claim_stream(ptr noundef %cp, ptr noundef %sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 4
  %mutex.i = getelementptr inbounds %struct.pvr2_context, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %stream = getelementptr inbounds %struct.pvr2_channel, ptr %cp, i32 0, i32 3
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %cmp = icmp eq ptr %3, %sp
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %sp, null
  br i1 %tobool.not, label %do.end.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sp, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end6.critedge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end6.critedge:                                 ; preds = %land.lhs.true
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end6.critedge.pvr2_channel_disclaim_stream.exit_crit_edge, label %if.end.i

if.end6.critedge.pvr2_channel_disclaim_stream.exit_crit_edge: ; preds = %if.end6.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %pvr2_channel_disclaim_stream.exit

if.end.i:                                         ; preds = %if.end6.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %stream2.i = getelementptr inbounds %struct.pvr2_context_stream, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %stream2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream2.i, align 4
  tail call void @pvr2_stream_kill(ptr noundef %7) #6
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 4
  br label %pvr2_channel_disclaim_stream.exit

pvr2_channel_disclaim_stream.exit:                ; preds = %if.end.i, %if.end6.critedge.pvr2_channel_disclaim_stream.exit_crit_edge
  %11 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cp, ptr %sp, align 4
  br label %do.end.sink.split

do.end.critedge:                                  ; preds = %if.end
  %tobool.not.i21 = icmp eq ptr %3, null
  br i1 %tobool.not.i21, label %do.end.critedge.do.end_crit_edge, label %if.end.i23

do.end.critedge.do.end_crit_edge:                 ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i23:                                       ; preds = %do.end.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %stream2.i22 = getelementptr inbounds %struct.pvr2_context_stream, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %stream2.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stream2.i22, align 4
  tail call void @pvr2_stream_kill(ptr noundef %13) #6
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stream, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.end.i23, %pvr2_channel_disclaim_stream.exit
  %.sink = phi ptr [ null, %if.end.i23 ], [ %sp, %pvr2_channel_disclaim_stream.exit ]
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.sink, ptr %stream, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %do.end.critedge.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %code.0 = phi i32 [ 0, %entry.do.end_crit_edge ], [ -16, %land.lhs.true.do.end_crit_edge ], [ 0, %do.end.critedge.do.end_crit_edge ], [ 0, %do.end.sink.split ]
  %18 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cp, align 4
  tail call fastcc void @pvr2_context_exit(ptr noundef %19)
  ret i32 %code.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvr2_channel_create_mpeg_stream(ptr nocapture noundef readonly %sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pvr2_ioread_create() #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stream = getelementptr inbounds %struct.pvr2_context_stream, ptr %sp, i32 0, i32 1
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %call1 = tail call i32 @pvr2_ioread_setup(ptr noundef nonnull %call, ptr noundef %1) #6
  tail call void @pvr2_ioread_set_sync_key(ptr noundef nonnull %call, ptr noundef nonnull @stream_sync_key, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_ioread_create() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_ioread_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_ioread_set_sync_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_hdw_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_hdw_get_video_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_hdw_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_stream_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 183, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 194, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 209, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @pvr2_context_create._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @pvr2_context_create._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @pvr2_context_create.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 211, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @pvr2_context_exist_first, !13, !"pvr2_context_exist_first", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 18, i32 29}
!14 = !{ptr @pvr2_context_exist_last, !15, !"pvr2_context_exist_last", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 19, i32 29}
!16 = distinct !{null, !17, !"pvr2_context_cleanup_flag", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 25, i32 12}
!18 = distinct !{null, !19, !"pvr2_context_cleaned_flag", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 26, i32 12}
!20 = !{ptr @pvr2_context_thread_ptr, !21, !"pvr2_context_thread_ptr", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 27, i32 28}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 153, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pvr2_context_thread_func._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @pvr2_context_thread_func._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 169, i32 2}
!29 = !{ptr @pvr2_context_thread_func._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pvr2_context_thread_func._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 175, i32 2}
!33 = !{ptr @pvr2_context_thread_func._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pvr2_context_thread_func._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @pvr2_context_notify_first, !36, !"pvr2_context_notify_first", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 20, i32 29}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 102, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pvr2_context_check._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pvr2_context_check._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 106, i32 3}
!44 = !{ptr @pvr2_context_check._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pvr2_context_check._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 119, i32 4}
!48 = !{ptr @pvr2_context_check._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pvr2_context_check._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 23, i32 8}
!52 = !{ptr @pvr2_context_sync_data, !51, !"pvr2_context_sync_data", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 24, i32 8}
!55 = !{ptr @pvr2_context_cleanup_data, !54, !"pvr2_context_cleanup_data", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 22, i32 8}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pvr2_context_mutex, !57, !"pvr2_context_mutex", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 69, i32 2}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pvr2_context_destroy._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @pvr2_context_destroy._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @pvr2_context_notify_last, !66, !"pvr2_context_notify_last", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 21, i32 29}
!67 = !{ptr @stream_sync_key, !68, !"stream_sync_key", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-context.c", i32 395, i32 13}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
