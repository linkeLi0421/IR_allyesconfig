; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-ioread.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-ioread.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pvr2_ioread = type { ptr, [32 x ptr], ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_ioread_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016pvrusb2: pvr2_ioread_create id=%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_ioread_create\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-ioread.c\00", [53 x i8] zeroinitializer }, align 32
@pvr2_ioread_create._entry_ptr = internal global ptr @pvr2_ioread_create._entry, section ".printk_index", align 4
@pvr2_ioread_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: pvr2_ioread_destroy id=%p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_ioread_destroy\00", [44 x i8] zeroinitializer }, align 32
@pvr2_ioread_destroy._entry_ptr = internal global ptr @pvr2_ioread_destroy._entry, section ".printk_index", align 4
@pvr2_ioread_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ pvr2_ioread_setup (tear-down) id=%p\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvr2_ioread_setup\00", [46 x i8] zeroinitializer }, align 32
@pvr2_ioread_setup._entry_ptr = internal global ptr @pvr2_ioread_setup._entry, section ".printk_index", align 4
@pvr2_ioread_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ pvr2_ioread_setup (setup) id=%p\0A\00", [63 x i8] zeroinitializer }, align 32
@pvr2_ioread_setup._entry_ptr.9 = internal global ptr @pvr2_ioread_setup._entry.7, section ".printk_index", align 4
@pvr2_ioread_avail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ data is %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvr2_ioread_avail\00", [46 x i8] zeroinitializer }, align 32
@pvr2_ioread_avail._entry_ptr = internal global ptr @pvr2_ioread_avail._entry, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"available\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pending\00", [24 x i8] zeroinitializer }, align 32
@pvr2_ioread_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ pvr2_ioread_read id=%p ZERO Request? Returning zero.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvr2_ioread_read\00", [47 x i8] zeroinitializer }, align 32
@pvr2_ioread_read._entry_ptr = internal global ptr @pvr2_ioread_read._entry, section ".printk_index", align 4
@pvr2_ioread_read._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ sync_state <== 0\0A\00", [46 x i8] zeroinitializer }, align 32
@pvr2_ioread_read._entry_ptr.18 = internal global ptr @pvr2_ioread_read._entry.16, section ".printk_index", align 4
@pvr2_ioread_read._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ pvr2_ioread_read id=%p request=%d result=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@pvr2_ioread_read._entry_ptr.21 = internal global ptr @pvr2_ioread_read._entry.19, section ".printk_index", align 4
@pvr2_ioread_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cp->mutex\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pvr2_ioread_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ pvr2_ioread_stop id=%p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvr2_ioread_stop\00", [47 x i8] zeroinitializer }, align 32
@pvr2_ioread_stop._entry_ptr = internal global ptr @pvr2_ioread_stop._entry, section ".printk_index", align 4
@pvr2_ioread_stop._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.24, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_ioread_stop._entry_ptr.26 = internal global ptr @pvr2_ioread_stop._entry.25, section ".printk_index", align 4
@pvr2_ioread_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ pvr2_ioread_start id=%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pvr2_ioread_start\00", [46 x i8] zeroinitializer }, align 32
@pvr2_ioread_start._entry_ptr = internal global ptr @pvr2_ioread_start._entry, section ".printk_index", align 4
@pvr2_ioread_start._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ pvr2_ioread_start id=%p error=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@pvr2_ioread_start._entry_ptr.31 = internal global ptr @pvr2_ioread_start._entry.29, section ".printk_index", align 4
@pvr2_ioread_start._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ sync_state <== 1\0A\00", [46 x i8] zeroinitializer }, align 32
@pvr2_ioread_start._entry_ptr.34 = internal global ptr @pvr2_ioread_start._entry.32, section ".printk_index", align 4
@pvr2_ioread_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ sync_state <== 2 (skipped %u bytes)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_ioread_filter\00", [45 x i8] zeroinitializer }, align 32
@pvr2_ioread_filter._entry_ptr = internal global ptr @pvr2_ioread_filter._entry, section ".printk_index", align 4
@pvr2_ioread_filter._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016pvrusb2: ERROR: pvr2_ioread filter sync problem len=%u offs=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@pvr2_ioread_filter._entry_ptr.39 = internal global ptr @pvr2_ioread_filter._entry.37, section ".printk_index", align 4
@pvr2_ioread_get_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ pvr2_ioread_read id=%p queue_error=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pvr2_ioread_get_buffer\00", [41 x i8] zeroinitializer }, align 32
@pvr2_ioread_get_buffer._entry_ptr = internal global ptr @pvr2_ioread_get_buffer._entry, section ".printk_index", align 4
@pvr2_ioread_get_buffer._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016pvrusb2: /*---TRACE_READ---*/ pvr2_ioread_read id=%p buffer_error=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@pvr2_ioread_get_buffer._entry_ptr.44 = internal global ptr @pvr2_ioread_get_buffer._entry.42, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 78, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 90, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 195, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 206, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 380, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 398, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 457, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 481, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 44, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 129, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 140, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 152, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 157, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 171, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 329, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 339, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 256, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private constant [46 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 276, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 230, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 214, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 174, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @pvr2_ioread_avail._entry, ptr @pvr2_ioread_avail._entry_ptr, ptr @pvr2_ioread_create._entry, ptr @pvr2_ioread_create._entry_ptr, ptr @pvr2_ioread_destroy._entry, ptr @pvr2_ioread_destroy._entry_ptr, ptr @pvr2_ioread_filter._entry, ptr @pvr2_ioread_filter._entry.37, ptr @pvr2_ioread_filter._entry_ptr, ptr @pvr2_ioread_filter._entry_ptr.39, ptr @pvr2_ioread_get_buffer._entry, ptr @pvr2_ioread_get_buffer._entry.42, ptr @pvr2_ioread_get_buffer._entry_ptr, ptr @pvr2_ioread_get_buffer._entry_ptr.44, ptr @pvr2_ioread_read._entry, ptr @pvr2_ioread_read._entry.16, ptr @pvr2_ioread_read._entry.19, ptr @pvr2_ioread_read._entry_ptr, ptr @pvr2_ioread_read._entry_ptr.18, ptr @pvr2_ioread_read._entry_ptr.21, ptr @pvr2_ioread_setup._entry, ptr @pvr2_ioread_setup._entry.7, ptr @pvr2_ioread_setup._entry_ptr, ptr @pvr2_ioread_setup._entry_ptr.9, ptr @pvr2_ioread_start._entry, ptr @pvr2_ioread_start._entry.29, ptr @pvr2_ioread_start._entry.32, ptr @pvr2_ioread_start._entry_ptr, ptr @pvr2_ioread_start._entry_ptr.31, ptr @pvr2_ioread_start._entry_ptr.34, ptr @pvr2_ioread_stop._entry, ptr @pvr2_ioread_stop._entry.25, ptr @pvr2_ioread_stop._entry_ptr, ptr @pvr2_ioread_stop._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @pvr2_ioread_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_avail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_read._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_read._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_stop._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_start._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_start._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_filter._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_get_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_ioread_get_buffer._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvr2_ioread_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 272) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %1 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %call7.i.i, align 8
  %mutex.i = getelementptr inbounds %struct.pvr2_ioread, ptr %call7.i.i, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @pvr2_ioread_init.__key) #8
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %idx.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end7
  %idx.033.i = phi i32 [ 0, %do.end7 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3264, i32 noundef 2) #13
  %arrayidx.i = getelementptr %struct.pvr2_ioread, ptr %call7.i.i, i32 0, i32 1, i32 %idx.033.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i, label %for.body.i.for.body7.i_crit_edge, label %for.cond.i

for.body.i.for.body7.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc15.i.for.body7.i_crit_edge, %for.body.i.for.body7.i_crit_edge
  %idx.134.i = phi i32 [ %inc16.i, %for.inc15.i.for.body7.i_crit_edge ], [ 0, %for.body.i.for.body7.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.pvr2_ioread, ptr %call7.i.i, i32 0, i32 1, i32 %idx.134.i
  %4 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx9.i, align 4
  %tobool10.not.i = icmp eq ptr %5, null
  br i1 %tobool10.not.i, label %for.body7.i.for.inc15.i_crit_edge, label %if.end12.i

for.body7.i.for.inc15.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc15.i

if.end12.i:                                       ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %for.inc15.i

for.inc15.i:                                      ; preds = %if.end12.i, %for.body7.i.for.inc15.i_crit_edge
  %inc16.i = add nuw nsw i32 %idx.134.i, 1
  %exitcond36.not.i = icmp eq i32 %inc16.i, 32
  br i1 %exitcond36.not.i, label %if.then9, label %for.inc15.i.for.body7.i_crit_edge

for.inc15.i.for.body7.i_crit_edge:                ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i

if.then9:                                         ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.cond.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then9 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_ioread_destroy(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @pvr2_ioread_setup(ptr noundef nonnull %cp, ptr noundef null) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %idx.08.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pvr2_ioread, ptr %cp, i32 0, i32 1, i32 %idx.08.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %pvr2_ioread_done.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

pvr2_ioread_done.exit:                            ; preds = %for.inc.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %2 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %pvr2_ioread_done.exit.do.end5_crit_edge, label %do.end

pvr2_ioread_done.exit.do.end5_crit_edge:          ; preds = %pvr2_ioread_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %pvr2_ioread_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %cp) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %pvr2_ioread_done.exit.do.end5_crit_edge
  %sync_key_ptr = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 2
  %3 = ptrtoint ptr %sync_key_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sync_key_ptr, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %do.end5.if.end10_crit_edge, label %if.then7

do.end5.if.end10_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %4) #8
  %5 = ptrtoint ptr %sync_key_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sync_key_ptr, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end5.if.end10_crit_edge
  tail call void @kfree(ptr noundef nonnull %cp) #8
  br label %return

return:                                           ; preds = %if.end10, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_ioread_set_sync_key(ptr noundef %cp, ptr noundef readonly %sync_key_ptr, i32 noundef %sync_key_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %sync_key_ptr, null
  %spec.select = select i1 %tobool1.not, i32 0, i32 %sync_key_len
  %sync_key_len4 = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 3
  %0 = ptrtoint ptr %sync_key_len4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_key_len4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %1)
  %cmp = icmp eq i32 %spec.select, %1
  br i1 %cmp, label %land.lhs.true, label %if.then12

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool5.not = icmp eq i32 %spec.select, 0
  br i1 %tobool5.not, label %land.lhs.true.return_crit_edge, label %lor.lhs.false

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sync_key_ptr6 = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 2
  %2 = ptrtoint ptr %sync_key_ptr6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync_key_ptr6, align 4
  %bcmp = tail call i32 @bcmp(ptr %sync_key_ptr, ptr %3, i32 %spec.select) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.end30_crit_edge

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then12:                                        ; preds = %if.end
  %sync_key_ptr13 = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 2
  %4 = ptrtoint ptr %sync_key_ptr13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_key_ptr13, align 4
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %if.then12.if.end18_crit_edge, label %if.then15

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %5) #8
  %6 = ptrtoint ptr %sync_key_ptr13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %sync_key_ptr13, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then12.if.end18_crit_edge
  %7 = ptrtoint ptr %sync_key_len4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %sync_key_len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool20.not = icmp eq i32 %spec.select, 0
  br i1 %tobool20.not, label %if.end18.return_crit_edge, label %if.end8.i

if.end18.return_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end8.i:                                        ; preds = %if.end18
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select, i32 noundef 3264) #13
  %8 = ptrtoint ptr %sync_key_ptr13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %sync_key_ptr13, align 4
  %tobool25.not = icmp eq ptr %call9.i, null
  br i1 %tobool25.not, label %if.end8.i.if.end30_crit_edge, label %if.end30.thread60

if.end8.i.if.end30_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end30.thread60:                                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %sync_key_len4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %sync_key_len4, align 4
  br label %if.end34

if.end30:                                         ; preds = %if.end8.i.if.end30_crit_edge, %lor.lhs.false.if.end30_crit_edge
  %10 = ptrtoint ptr %sync_key_len4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %sync_key_len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool32.not = icmp eq i32 %.pr, 0
  br i1 %tobool32.not, label %if.end30.return_crit_edge, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end30.return_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end34:                                         ; preds = %if.end30.if.end34_crit_edge, %if.end30.thread60
  %11 = phi i32 [ %sync_key_len, %if.end30.thread60 ], [ %.pr, %if.end30.if.end34_crit_edge ]
  %sync_key_ptr35 = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 2
  %12 = ptrtoint ptr %sync_key_ptr35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sync_key_ptr35, align 4
  %14 = call ptr @memcpy(ptr %13, ptr %sync_key_ptr, i32 %11)
  br label %return

return:                                           ; preds = %if.end34, %if.end30.return_crit_edge, %if.end18.return_crit_edge, %lor.lhs.false.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pvr2_ioread_get_stream(ptr nocapture noundef readonly %cp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ioread_setup(ptr noundef %cp, ptr noundef %sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %0 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %do.body1

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.body1:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %2 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body1.do.end6_crit_edge, label %do.end

do.body1.do.end6_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %cp) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body1.do.end6_crit_edge
  %enabled.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 7
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.end6.pvr2_ioread_stop.exit_crit_edge, label %do.body.i

do.end6.pvr2_ioread_stop.exit_crit_edge:          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_ioread_stop.exit

do.body.i:                                        ; preds = %do.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %5 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end5.i_crit_edge, label %do.end.i

do.body.i.do.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %cp) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.body.i.do.end5.i_crit_edge
  %6 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cp, align 4
  tail call void @pvr2_stream_kill(ptr noundef %7) #8
  %sync_state.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 5
  %8 = call ptr @memset(ptr %enabled.i, i32 0, i32 28)
  %9 = ptrtoint ptr %sync_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sync_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not.i = icmp eq i32 %10, 0
  br i1 %tobool7.not.i, label %do.end5.i.pvr2_ioread_stop.exit_crit_edge, label %do.body9.i

do.end5.i.pvr2_ioread_stop.exit_crit_edge:        ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_ioread_stop.exit

do.body9.i:                                       ; preds = %do.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %11 = load i32, ptr @pvrusb2_debug, align 4
  %and10.i = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body9.i.do.end18.i_crit_edge, label %do.end14.i

do.body9.i.do.end18.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end18.i

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end14.i, %do.body9.i.do.end18.i_crit_edge
  %12 = ptrtoint ptr %sync_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sync_state.i, align 4
  br label %pvr2_ioread_stop.exit

pvr2_ioread_stop.exit:                            ; preds = %do.end18.i, %do.end5.i.pvr2_ioread_stop.exit_crit_edge, %do.end6.pvr2_ioread_stop.exit_crit_edge
  %13 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cp, align 4
  tail call void @pvr2_stream_kill(ptr noundef %14) #8
  %15 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cp, align 4
  %call9 = tail call i32 @pvr2_stream_get_buffer_count(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %pvr2_ioread_stop.exit.if.end14_crit_edge, label %if.then11

pvr2_ioread_stop.exit.if.end14_crit_edge:         ; preds = %pvr2_ioread_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %pvr2_ioread_stop.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cp, align 4
  %call13 = tail call i32 @pvr2_stream_set_buffer_count(ptr noundef %18, i32 noundef 0) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %pvr2_ioread_stop.exit.if.end14_crit_edge
  %19 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cp, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %entry.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %sp, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %do.body19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body19:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %20 = load i32, ptr @pvrusb2_debug, align 4
  %and20 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.end30_crit_edge, label %do.end25

do.body19.do.end30_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %cp) #12
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %do.body19.do.end30_crit_edge
  tail call void @pvr2_stream_kill(ptr noundef nonnull %sp) #8
  %call31 = tail call i32 @pvr2_stream_set_buffer_count(ptr noundef nonnull %sp, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %do.end30.cleanup_crit_edge, label %do.end30.for.body_crit_edge

do.end30.for.body_crit_edge:                      ; preds = %do.end30
  br label %for.body

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end30.for.body_crit_edge
  %idx.065 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end30.for.body_crit_edge ]
  %call36 = tail call ptr @pvr2_stream_get_buffer(ptr noundef nonnull %sp, i32 noundef %idx.065) #8
  %arrayidx = getelementptr %struct.pvr2_ioread, ptr %cp, i32 0, i32 1, i32 %idx.065
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call37 = tail call i32 @pvr2_buffer_set_buffer(ptr noundef %call36, ptr noundef %22, i32 noundef 16384) #8
  %inc = add nuw nsw i32 %idx.065, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sp, ptr %cp, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end30.cleanup_crit_edge, %if.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end30.cleanup_crit_edge ], [ 0, %for.end ], [ 0, %if.end16.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pvr2_stream_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_stream_get_buffer_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_stream_set_buffer_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_stream_get_buffer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_set_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ioread_set_enabled(ptr noundef %cp, i32 noundef %fl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fl)
  %tobool.not = icmp eq i32 %fl, 0
  %enabled = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 7
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp ne i32 %1, 0
  %cmp = xor i1 %tobool.not, %tobool1.not
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i15 = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  br i1 %tobool.not.i15, label %if.end.i, label %if.then5.do.end_crit_edge

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then5
  %4 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cp, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.do.end_crit_edge, label %do.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %6 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.body.i.while.cond.i.preheader_crit_edge, label %do.end.i

do.body.i.while.cond.i.preheader_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.preheader

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %cp) #12
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %do.end.i, %do.body.i.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %7 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cp, align 4
  %call11.i = tail call ptr @pvr2_stream_get_idle_buffer(ptr noundef %8) #8
  %cmp.not.i = icmp eq ptr %call11.i, null
  br i1 %cmp.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %call12.i = tail call i32 @pvr2_buffer_queue(ptr noundef nonnull %call11.i) #8
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %do.body15.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

do.body15.i:                                      ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %9 = load i32, ptr @pvrusb2_debug, align 4
  %and16.i = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body15.i.do.end26.i_crit_edge, label %do.end21.i

do.body15.i.do.end26.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26.i

do.end21.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #10
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %cp, i32 noundef %call12.i) #12
  br label %do.end26.i

do.end26.i:                                       ; preds = %do.end21.i, %do.body15.i.do.end26.i_crit_edge
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %do.end26.i.do.end_crit_edge, label %do.body.i.i

do.end26.i.do.end_crit_edge:                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.i.i:                                      ; preds = %do.end26.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %12 = load i32, ptr @pvrusb2_debug, align 4
  %and.i.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.do.end5.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end5.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %cp) #12
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end5.i.i_crit_edge
  %13 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cp, align 4
  tail call void @pvr2_stream_kill(ptr noundef %14) #8
  %sync_state.i.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 5
  %15 = call ptr @memset(ptr %enabled, i32 0, i32 28)
  %16 = ptrtoint ptr %sync_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sync_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool7.not.i.i, label %do.end5.i.i.do.end_crit_edge, label %do.body9.i.i

do.end5.i.i.do.end_crit_edge:                     ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body9.i.i:                                     ; preds = %do.end5.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %18 = load i32, ptr @pvrusb2_debug, align 4
  %and10.i.i = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %do.body9.i.i.do.end.sink.split_crit_edge, label %do.end14.i.i

do.body9.i.i.do.end.sink.split_crit_edge:         ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.sink.split

do.end14.i.i:                                     ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %do.end.sink.split

while.end.i:                                      ; preds = %while.cond.i
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %enabled, align 4
  %stream_running.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 9
  %sync_key_len.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 3
  %20 = call ptr @memset(ptr %stream_running.i, i32 0, i32 20)
  %21 = ptrtoint ptr %sync_key_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sync_key_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool29.not.i = icmp eq i32 %22, 0
  br i1 %tobool29.not.i, label %while.end.i.if.end43.i_crit_edge, label %do.body31.i

while.end.i.if.end43.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

do.body31.i:                                      ; preds = %while.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %23 = load i32, ptr @pvrusb2_debug, align 4
  %and32.i = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %do.body31.i.do.end42.i_crit_edge, label %do.end37.i

do.body31.i.do.end42.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42.i

do.end37.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #10
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %do.end42.i

do.end42.i:                                       ; preds = %do.end37.i, %do.body31.i.do.end42.i_crit_edge
  %sync_state.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 5
  %24 = ptrtoint ptr %sync_state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %sync_state.i, align 4
  %sync_trashed_count.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 6
  %25 = ptrtoint ptr %sync_trashed_count.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sync_trashed_count.i, align 4
  %sync_buf_offs.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 4
  %26 = ptrtoint ptr %sync_buf_offs.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sync_buf_offs.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end42.i, %while.end.i.if.end43.i_crit_edge
  %spigot_open.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 8
  br label %do.end.sink.split

if.else:                                          ; preds = %if.end
  br i1 %tobool.not.i15, label %if.else.do.end_crit_edge, label %do.body.i18

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.i18:                                      ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %27 = load i32, ptr @pvrusb2_debug, align 4
  %and.i16 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool1.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool1.not.i17, label %do.body.i18.do.end5.i_crit_edge, label %do.end.i20

do.body.i18.do.end5.i_crit_edge:                  ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i20:                                       ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #10
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %cp) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i20, %do.body.i18.do.end5.i_crit_edge
  %28 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cp, align 4
  tail call void @pvr2_stream_kill(ptr noundef %29) #8
  %sync_state.i21 = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 5
  %30 = call ptr @memset(ptr %enabled, i32 0, i32 28)
  %31 = ptrtoint ptr %sync_state.i21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sync_state.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool7.not.i = icmp eq i32 %32, 0
  br i1 %tobool7.not.i, label %do.end5.i.do.end_crit_edge, label %do.body9.i

do.end5.i.do.end_crit_edge:                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body9.i:                                       ; preds = %do.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %33 = load i32, ptr @pvrusb2_debug, align 4
  %and10.i = and i32 %33, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body9.i.do.end.sink.split_crit_edge, label %do.end14.i

do.body9.i.do.end.sink.split_crit_edge:           ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.sink.split

do.end14.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %do.end14.i, %do.body9.i.do.end.sink.split_crit_edge, %if.end43.i, %do.end14.i.i, %do.body9.i.i.do.end.sink.split_crit_edge
  %sync_state.i21.sink = phi ptr [ %spigot_open.i, %if.end43.i ], [ %sync_state.i.i, %do.end14.i.i ], [ %sync_state.i.i, %do.body9.i.i.do.end.sink.split_crit_edge ], [ %sync_state.i21, %do.end14.i ], [ %sync_state.i21, %do.body9.i.do.end.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ 0, %if.end43.i ], [ %call12.i, %do.end14.i.i ], [ %call12.i, %do.body9.i.i.do.end.sink.split_crit_edge ], [ 0, %do.end14.i ], [ 0, %do.body9.i.do.end.sink.split_crit_edge ]
  %34 = ptrtoint ptr %sync_state.i21.sink to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %sync_state.i21.sink, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %do.end5.i.do.end_crit_edge, %if.else.do.end_crit_edge, %do.end5.i.i.do.end_crit_edge, %do.end26.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.then5.do.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then5.do.end_crit_edge ], [ 0, %if.end.i.do.end_crit_edge ], [ %call12.i, %do.end26.i.do.end_crit_edge ], [ %call12.i, %do.end5.i.i.do.end_crit_edge ], [ 0, %if.else.do.end_crit_edge ], [ 0, %do.end5.i.do.end_crit_edge ], [ %ret.0.ph, %do.end.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ioread_avail(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 7
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sync_state = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 5
  %2 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sync_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.end2.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end2.i:                                        ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  %c_data_len.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 12
  %c_data_offs.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 13
  %sync_buf_offs.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 4
  %sync_key_len.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 3
  %c_data_ptr.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 11
  %sync_key_ptr.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 2
  %sync_trashed_count.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 6
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end43.i.while.cond.i_crit_edge, %if.end2.i
  %call.i = tail call fastcc i32 @pvr2_ioread_get_buffer(ptr noundef %cp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %while.cond.i.pvr2_ioread_filter.exit_crit_edge, label %if.end5.i

while.cond.i.pvr2_ioread_filter.exit_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_ioread_filter.exit

if.end5.i:                                        ; preds = %while.cond.i
  %4 = ptrtoint ptr %c_data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_data_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not.i = icmp eq i32 %5, 0
  br i1 %tobool6.not.i, label %if.end5.i.pvr2_ioread_filter.exit_crit_edge, label %if.end8.i

if.end5.i.pvr2_ioread_filter.exit_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_ioread_filter.exit

if.end8.i:                                        ; preds = %if.end5.i
  %6 = ptrtoint ptr %c_data_offs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_data_offs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp10106.i = icmp ult i32 %7, %5
  br i1 %cmp10106.i, label %for.body.lr.ph.i, label %if.end8.i.for.end.i_crit_edge

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end8.i
  %8 = ptrtoint ptr %sync_key_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sync_key_len.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end13.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.0107.i = phi i32 [ %7, %for.body.lr.ph.i ], [ %inc23.i, %if.end13.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %sync_buf_offs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sync_buf_offs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp11.not.i = icmp ult i32 %11, %9
  br i1 %cmp11.not.i, label %if.end13.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end13.i:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %c_data_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c_data_ptr.i, align 4
  %arrayidx.i = getelementptr i8, ptr %13, i32 %idx.0107.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %sync_key_ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sync_key_ptr.i, align 4
  %arrayidx15.i = getelementptr i8, ptr %17, i32 %11
  %18 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx15.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %19)
  %cmp17.i = icmp eq i8 %15, %19
  %inc.i = add nuw i32 %11, 1
  %storemerge.i = select i1 %cmp17.i, i32 %inc.i, i32 0
  %20 = ptrtoint ptr %sync_buf_offs.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge.i, ptr %sync_buf_offs.i, align 4
  %inc23.i = add i32 %idx.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i, %5
  br i1 %exitcond.not.i, label %if.end13.i.for.end.i_crit_edge, label %if.end13.i.for.body.i_crit_edge

if.end13.i.for.body.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end13.i.for.end.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end13.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ %7, %if.end8.i.for.end.i_crit_edge ], [ %5, %if.end13.i.for.end.i_crit_edge ], [ %idx.0107.i, %for.body.i.for.end.i_crit_edge ]
  %add.i = add i32 %idx.0.lcssa.i, %7
  %21 = ptrtoint ptr %c_data_offs.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i, ptr %c_data_offs.i, align 4
  %22 = ptrtoint ptr %sync_trashed_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sync_trashed_count.i, align 4
  %add25.i = add i32 %23, %idx.0.lcssa.i
  store i32 %add25.i, ptr %sync_trashed_count.i, align 4
  %24 = ptrtoint ptr %sync_buf_offs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sync_buf_offs.i, align 4
  %26 = ptrtoint ptr %sync_key_len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sync_key_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp28.not.i = icmp ult i32 %25, %27
  br i1 %cmp28.not.i, label %if.end43.i, label %if.then30.i

if.then30.i:                                      ; preds = %for.end.i
  %sub.i = sub i32 %add25.i, %27
  %28 = ptrtoint ptr %sync_trashed_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i, ptr %sync_trashed_count.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %29 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool33.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool33.not.i, label %if.then30.i.do.end40.i_crit_edge, label %do.end.i

if.then30.i.do.end40.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i

do.end.i:                                         ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %sub.i) #12
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end.i, %if.then30.i.do.end40.i_crit_edge
  %30 = ptrtoint ptr %sync_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %sync_state, align 4
  %31 = ptrtoint ptr %sync_buf_offs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %sync_buf_offs.i, align 4
  br label %pvr2_ioread_filter.exit

if.end43.i:                                       ; preds = %for.end.i
  %cmp46.i = icmp ult i32 %add.i, %5
  br i1 %cmp46.i, label %do.body49.i, label %if.end43.i.while.cond.i_crit_edge

if.end43.i.while.cond.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

do.body49.i:                                      ; preds = %if.end43.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %32 = load i32, ptr @pvrusb2_debug, align 4
  %and50.i = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %do.body49.i.pvr2_ioread_filter.exit_crit_edge, label %do.end55.i

do.body49.i.pvr2_ioread_filter.exit_crit_edge:    ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_ioread_filter.exit

do.end55.i:                                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #10
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %5, i32 noundef %add.i) #12
  br label %pvr2_ioread_filter.exit

pvr2_ioread_filter.exit:                          ; preds = %do.end55.i, %do.body49.i.pvr2_ioread_filter.exit_crit_edge, %do.end40.i, %if.end5.i.pvr2_ioread_filter.exit_crit_edge, %while.cond.i.pvr2_ioread_filter.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  %33 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sync_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp3 = icmp eq i32 %34, 1
  br i1 %cmp3, label %pvr2_ioread_filter.exit.cleanup_crit_edge, label %pvr2_ioread_filter.exit.if.end6_crit_edge

pvr2_ioread_filter.exit.if.end6_crit_edge:        ; preds = %pvr2_ioread_filter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

pvr2_ioread_filter.exit.cleanup_crit_edge:        ; preds = %pvr2_ioread_filter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %pvr2_ioread_filter.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %stream_running = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 9
  %35 = ptrtoint ptr %stream_running to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stream_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool7.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cp, align 4
  %call13 = tail call i32 @pvr2_stream_get_ready_count(ptr noundef %38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool9.not = icmp eq i32 %call13, 0
  %cmp14.sink = select i1 %tobool7.not, i1 %cmp14, i1 %tobool9.not
  %cmp19.in = select i1 %tobool7.not, i1 %cmp14, i1 %tobool9.not
  %spec.select49 = select i1 %cmp14.sink, i32 -11, i32 0
  %cmp19 = xor i1 %cmp19.in, true
  %spigot_open = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 8
  %39 = ptrtoint ptr %spigot_open to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %spigot_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool18.not = icmp eq i32 %40, 0
  %cmp22.not = xor i1 %tobool18.not, %cmp19
  br i1 %cmp22.not, label %if.end6.cleanup_crit_edge, label %if.then23

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end6
  %conv = zext i1 %cmp19 to i32
  %41 = ptrtoint ptr %spigot_open to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv, ptr %spigot_open, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %42 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %42, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.then23.cleanup_crit_edge, label %do.end

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %cmp19.in, ptr @.str.13, ptr @.str.12
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %cond) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then23.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %pvr2_ioread_filter.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -11, %pvr2_ioread_filter.exit.cleanup_crit_edge ], [ %spec.select49, %if.then23.cleanup_crit_edge ], [ %spec.select49, %do.end ], [ %spec.select49, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_stream_get_ready_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_ioread_read(ptr noundef %cp, ptr noundef %buf, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %tobool.not = icmp eq i32 %cnt, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %cp) #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call i32 @pvr2_ioread_avail(ptr noundef %cp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %stream_running = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 9
  %1 = ptrtoint ptr %stream_running to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %stream_running, align 4
  %mutex = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %call14147 = tail call fastcc i32 @pvr2_ioread_get_buffer(ptr noundef %cp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14147)
  %tobool15.not148 = icmp eq i32 %call14147, 0
  br i1 %tobool15.not148, label %if.end9.do.end68.thread_crit_edge, label %if.end17.lr.ph

if.end9.do.end68.thread_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68.thread

if.end17.lr.ph:                                   ; preds = %if.end9
  %tobool11.not = icmp eq ptr %buf, null
  %sync_state = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 5
  %c_data_ptr = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 11
  %c_data_offs = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 13
  %c_data_len = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 12
  %sync_key_ptr = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 2
  %sync_buf_offs = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 4
  %sync_key_len = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 3
  %spec.select170 = select i1 %tobool11.not, i32 0, i32 %cnt
  br label %if.end17

if.end17:                                         ; preds = %if.end66.if.end17_crit_edge, %if.end17.lr.ph
  %buf.addr.0151 = phi ptr [ %add.ptr39, %if.end66.if.end17_crit_edge ], [ %buf, %if.end17.lr.ph ]
  %cnt.addr.1150 = phi i32 [ %sub38, %if.end66.if.end17_crit_edge ], [ %spec.select170, %if.end17.lr.ph ]
  %copied_cnt.0149 = phi i32 [ %add, %if.end66.if.end17_crit_edge ], [ 0, %if.end17.lr.ph ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.addr.1150)
  %tobool18.not = icmp eq i32 %cnt.addr.1150, 0
  br i1 %tobool18.not, label %if.end17._crit_edge, label %if.end20

if.end17._crit_edge:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %26

if.end20:                                         ; preds = %if.end17
  %2 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sync_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp21 = icmp eq i32 %3, 2
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sync_key_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sync_key_ptr, align 4
  %6 = ptrtoint ptr %sync_buf_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sync_buf_offs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  br label %if.end27

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %c_data_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %c_data_ptr, align 4
  %10 = ptrtoint ptr %c_data_offs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_data_offs, align 4
  %add.ptr24 = getelementptr i8, ptr %9, i32 %11
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22
  %c_data_len.sink = phi ptr [ %c_data_len, %if.else ], [ %sync_key_len, %if.then22 ]
  %.sink171 = phi i32 [ %11, %if.else ], [ %7, %if.then22 ]
  %src.0 = phi ptr [ %add.ptr24, %if.else ], [ %add.ptr, %if.then22 ]
  %12 = ptrtoint ptr %c_data_len.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_data_len.sink, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %.sink171)
  %tobool28.not = icmp eq i32 %13, %.sink171
  br i1 %tobool28.not, label %if.end27._crit_edge, label %if.end30

if.end27._crit_edge:                              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %26

if.end30:                                         ; preds = %if.end27
  %sub26 = sub i32 %13, %.sink171
  %14 = tail call i32 @llvm.umin.i32(i32 %sub26, i32 %cnt.addr.1150)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9.i.i = icmp slt i32 %14, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end30
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.do.end68.thread_crit_edge, label %if.then27.i.i, !prof !98

land.rhs16.i.i.do.end68.thread_crit_edge:         ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %do.end68.thread

if.then.i.i.i:                                    ; preds = %if.end30
  tail call void @__check_object_size(ptr noundef %src.0, i32 noundef %14, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.47, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.do.end68.thread_crit_edge, label %if.end.i.i

if.then.i.i.i.do.end68.thread_crit_edge:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68.thread

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0151, i32 %14, i32 -1226833920) #15, !srcloc !99
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.do.end68.thread_crit_edge

if.end.i.i.do.end68.thread_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src.0, i32 noundef %14) #8
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0151, ptr noundef %src.0, i32 noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool35.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool35.not, label %if.end37, label %copy_to_user.exit.do.end68.thread_crit_edge

copy_to_user.exit.do.end68.thread_crit_edge:      ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68.thread

if.end37:                                         ; preds = %copy_to_user.exit
  %sub38 = sub i32 %cnt.addr.1150, %14
  %add.ptr39 = getelementptr i8, ptr %buf.addr.0151, i32 %14
  %add = add i32 %14, %copied_cnt.0149
  %16 = ptrtoint ptr %sync_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sync_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp41 = icmp eq i32 %17, 2
  br i1 %cmp41, label %if.then42, label %if.else63

if.then42:                                        ; preds = %if.end37
  %18 = ptrtoint ptr %sync_buf_offs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sync_buf_offs, align 4
  %add44 = add i32 %19, %14
  store i32 %add44, ptr %sync_buf_offs, align 4
  %20 = ptrtoint ptr %sync_key_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sync_key_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %21)
  %cmp47.not = icmp ult i32 %add44, %21
  br i1 %cmp47.not, label %if.then42.if.end66_crit_edge, label %do.body49

if.then42.if.end66_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.body49:                                        ; preds = %if.then42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %22 = load i32, ptr @pvrusb2_debug, align 4
  %and50 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end60_crit_edge, label %do.end55

do.body49.do.end60_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

do.end55:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %do.end60

do.end60:                                         ; preds = %do.end55, %do.body49.do.end60_crit_edge
  %23 = ptrtoint ptr %sync_state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sync_state, align 4
  br label %if.end66

if.else63:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %c_data_offs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c_data_offs, align 4
  %add65 = add i32 %25, %14
  store i32 %add65, ptr %c_data_offs, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.else63, %do.end60, %if.then42.if.end66_crit_edge
  %call14 = tail call fastcc i32 @pvr2_ioread_get_buffer(ptr noundef %cp)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end66.do.end68.thread_crit_edge, label %if.end66.if.end17_crit_edge

if.end66.if.end17_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end66.do.end68.thread_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end68.thread

do.end68.thread:                                  ; preds = %if.end66.do.end68.thread_crit_edge, %copy_to_user.exit.do.end68.thread_crit_edge, %if.end.i.i.do.end68.thread_crit_edge, %if.then.i.i.i.do.end68.thread_crit_edge, %if.then27.i.i, %land.rhs16.i.i.do.end68.thread_crit_edge, %if.end9.do.end68.thread_crit_edge
  %ret.0.ph = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.do.end68.thread_crit_edge ], [ -5, %if.end9.do.end68.thread_crit_edge ], [ -14, %if.end.i.i.do.end68.thread_crit_edge ], [ -14, %if.then.i.i.i.do.end68.thread_crit_edge ], [ -14, %copy_to_user.exit.do.end68.thread_crit_edge ], [ -5, %if.end66.do.end68.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %27

26:                                               ; preds = %if.end27._crit_edge, %if.end17._crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied_cnt.0149)
  %tobool72.not = icmp eq i32 %copied_cnt.0149, 0
  %.copied_cnt.0 = select i1 %tobool72.not, i32 -11, i32 %copied_cnt.0149
  br label %27

27:                                               ; preds = %26, %do.end68.thread
  %28 = phi i32 [ %.copied_cnt.0, %26 ], [ %ret.0.ph, %do.end68.thread ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %29 = load i32, ptr @pvrusb2_debug, align 4
  %and78 = and i32 %29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %.cleanup_crit_edge, label %do.end83

.cleanup_crit_edge:                               ; preds = %27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end83:                                         ; preds = %27
  call void @__sanitizer_cov_trace_pc() #10
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %cp, i32 noundef %cnt, i32 noundef %28) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %28, %do.end83 ], [ %28, %.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvr2_ioread_get_buffer(ptr noundef %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c_data_len = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 12
  %c_data_offs = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 13
  %0 = ptrtoint ptr %c_data_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_data_len, align 4
  %2 = ptrtoint ptr %c_data_offs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_data_offs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not91 = icmp ugt i32 %1, %3
  br i1 %cmp.not91, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %c_buf = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 10
  %c_data_ptr = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %4 = ptrtoint ptr %c_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c_buf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.body.if.end14_crit_edge, label %if.then

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %while.body
  %call = tail call i32 @pvr2_buffer_queue(ptr noundef nonnull %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %do.body, label %if.end10

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %6 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %cp, i32 noundef %call) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %enabled.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 7
  %7 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %do.end9.cleanup_crit_edge, label %do.body.i

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %9 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.do.end5.i_crit_edge, label %do.end.i

do.body.i.do.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %cp) #12
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i, %do.body.i.do.end5.i_crit_edge
  %10 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cp, align 4
  tail call void @pvr2_stream_kill(ptr noundef %11) #8
  %sync_state.i = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 5
  %12 = call ptr @memset(ptr %enabled.i, i32 0, i32 28)
  %13 = ptrtoint ptr %sync_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sync_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not.i = icmp eq i32 %14, 0
  br i1 %tobool7.not.i, label %do.end5.i.cleanup_crit_edge, label %do.body9.i

do.end5.i.cleanup_crit_edge:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body9.i:                                       ; preds = %do.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %15 = load i32, ptr @pvrusb2_debug, align 4
  %and10.i = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %do.body9.i.cleanup.sink.split_crit_edge, label %do.body9.i.cleanup.sink.split.sink.split_crit_edge

do.body9.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

do.body9.i.cleanup.sink.split_crit_edge:          ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = call ptr @memset(ptr %c_buf, i32 0, i32 16)
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %while.body.if.end14_crit_edge
  %17 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cp, align 4
  %call15 = tail call ptr @pvr2_stream_get_ready_buffer(ptr noundef %18) #8
  %19 = ptrtoint ptr %c_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call15, ptr %c_buf, align 4
  %tobool18.not = icmp eq ptr %call15, null
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %call22 = tail call i32 @pvr2_buffer_get_count(ptr noundef nonnull %call15) #8
  %20 = ptrtoint ptr %c_data_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call22, ptr %c_data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool25.not = icmp eq i32 %call22, 0
  br i1 %tobool25.not, label %if.then26, label %if.end44

if.then26:                                        ; preds = %if.end20
  %21 = ptrtoint ptr %c_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c_buf, align 4
  %call28 = tail call i32 @pvr2_buffer_get_status(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.body31, label %if.then26.while.cond.backedge_crit_edge

if.then26.while.cond.backedge_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

do.body31:                                        ; preds = %if.then26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %23 = load i32, ptr @pvrusb2_debug, align 4
  %and32 = and i32 %23, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end42_crit_edge, label %do.end37

do.body31.do.end42_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %cp, i32 noundef %call28) #12
  br label %do.end42

do.end42:                                         ; preds = %do.end37, %do.body31.do.end42_crit_edge
  %enabled.i74 = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 7
  %24 = ptrtoint ptr %enabled.i74 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enabled.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i75 = icmp eq i32 %25, 0
  br i1 %tobool.not.i75, label %do.end42.cleanup_crit_edge, label %do.body.i78

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i78:                                      ; preds = %do.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %26 = load i32, ptr @pvrusb2_debug, align 4
  %and.i76 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool1.not.i77 = icmp eq i32 %and.i76, 0
  br i1 %tobool1.not.i77, label %do.body.i78.do.end5.i83_crit_edge, label %do.end.i80

do.body.i78.do.end5.i83_crit_edge:                ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5.i83

do.end.i80:                                       ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #10
  %call.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %cp) #12
  br label %do.end5.i83

do.end5.i83:                                      ; preds = %do.end.i80, %do.body.i78.do.end5.i83_crit_edge
  %27 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cp, align 4
  tail call void @pvr2_stream_kill(ptr noundef %28) #8
  %sync_state.i81 = getelementptr inbounds %struct.pvr2_ioread, ptr %cp, i32 0, i32 5
  %29 = call ptr @memset(ptr %enabled.i74, i32 0, i32 28)
  %30 = ptrtoint ptr %sync_state.i81 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sync_state.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool7.not.i82 = icmp eq i32 %31, 0
  br i1 %tobool7.not.i82, label %do.end5.i83.cleanup_crit_edge, label %do.body9.i86

do.end5.i83.cleanup_crit_edge:                    ; preds = %do.end5.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body9.i86:                                     ; preds = %do.end5.i83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %32 = load i32, ptr @pvrusb2_debug, align 4
  %and10.i84 = and i32 %32, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i84)
  %tobool11.not.i85 = icmp eq i32 %and10.i84, 0
  br i1 %tobool11.not.i85, label %do.body9.i86.cleanup.sink.split_crit_edge, label %do.body9.i86.cleanup.sink.split.sink.split_crit_edge

do.body9.i86.cleanup.sink.split.sink.split_crit_edge: ; preds = %do.body9.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

do.body9.i86.cleanup.sink.split_crit_edge:        ; preds = %do.body9.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end44:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %c_data_offs to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %c_data_offs, align 4
  %34 = ptrtoint ptr %c_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %c_buf, align 4
  %call47 = tail call i32 @pvr2_buffer_get_id(ptr noundef %35) #8
  %arrayidx = getelementptr %struct.pvr2_ioread, ptr %cp, i32 0, i32 1, i32 %call47
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %38 = ptrtoint ptr %c_data_ptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %c_data_ptr, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end44, %if.then26.while.cond.backedge_crit_edge
  %39 = ptrtoint ptr %c_data_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c_data_len, align 4
  %41 = ptrtoint ptr %c_data_offs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %c_data_offs, align 4
  %cmp.not = icmp ugt i32 %40, %42
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %do.body9.i86.cleanup.sink.split.sink.split_crit_edge, %do.body9.i.cleanup.sink.split.sink.split_crit_edge
  %sync_state.i81.sink.ph = phi ptr [ %sync_state.i, %do.body9.i.cleanup.sink.split.sink.split_crit_edge ], [ %sync_state.i81, %do.body9.i86.cleanup.sink.split.sink.split_crit_edge ]
  %call16.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %do.body9.i86.cleanup.sink.split_crit_edge, %do.body9.i.cleanup.sink.split_crit_edge
  %sync_state.i81.sink = phi ptr [ %sync_state.i, %do.body9.i.cleanup.sink.split_crit_edge ], [ %sync_state.i81, %do.body9.i86.cleanup.sink.split_crit_edge ], [ %sync_state.i81.sink.ph, %cleanup.sink.split.sink.split ]
  %43 = ptrtoint ptr %sync_state.i81.sink to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %sync_state.i81.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.backedge.cleanup_crit_edge, %do.end5.i83.cleanup_crit_edge, %do.end42.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end5.i.cleanup_crit_edge, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end9.cleanup_crit_edge ], [ 0, %do.end5.i.cleanup_crit_edge ], [ 0, %do.end42.cleanup_crit_edge ], [ 0, %do.end5.i83.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 1, %while.cond.backedge.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_stream_get_idle_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pvr2_stream_get_ready_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_get_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_get_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pvr2_buffer_get_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 78, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pvr2_ioread_create._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pvr2_ioread_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 90, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pvr2_ioread_destroy._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @pvr2_ioread_destroy._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 195, i32 4}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pvr2_ioread_setup._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @pvr2_ioread_setup._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 206, i32 4}
!18 = !{ptr @pvr2_ioread_setup._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @pvr2_ioread_setup._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 380, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pvr2_ioread_avail._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @pvr2_ioread_avail._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 398, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pvr2_ioread_read._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @pvr2_ioread_read._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 457, i32 6}
!34 = !{ptr @pvr2_ioread_read._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pvr2_ioread_read._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 481, i32 2}
!38 = !{ptr @pvr2_ioread_read._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @pvr2_ioread_read._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @pvr2_ioread_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 44, i32 2}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 129, i32 2}
!45 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pvr2_ioread_stop._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @pvr2_ioread_stop._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @pvr2_ioread_stop._entry.25, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 140, i32 3}
!50 = !{ptr @pvr2_ioread_stop._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 152, i32 2}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pvr2_ioread_start._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @pvr2_ioread_start._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 157, i32 4}
!58 = !{ptr @pvr2_ioread_start._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pvr2_ioread_start._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 171, i32 3}
!62 = !{ptr @pvr2_ioread_start._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pvr2_ioread_start._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 329, i32 4}
!66 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @pvr2_ioread_filter._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @pvr2_ioread_filter._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 339, i32 4}
!71 = !{ptr @pvr2_ioread_filter._entry.37, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @pvr2_ioread_filter._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 256, i32 5}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pvr2_ioread_get_buffer._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @pvr2_ioread_get_buffer._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-ioread.c", i32 276, i32 5}
!80 = !{ptr @pvr2_ioread_get_buffer._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @pvr2_ioread_get_buffer._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i64 2153529271, i64 2153529296}
