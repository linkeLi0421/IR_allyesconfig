; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-io.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pvr2_stream = type { %struct.list_head, i32, i32, %struct.list_head, i32, i32, %struct.list_head, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pvr2_buffer = type { i32, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr }
%struct.pvr2_stream_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_stream_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016pvrusb2: pvr2_stream_create: sp=%p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_stream_create\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-io.c\00", [57 x i8] zeroinitializer }, align 32
@pvr2_stream_create._entry_ptr = internal global ptr @pvr2_stream_create._entry, section ".printk_index", align 4
@pvr2_stream_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016pvrusb2: pvr2_stream_destroy: sp=%p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_stream_destroy\00", [44 x i8] zeroinitializer }, align 32
@pvr2_stream_destroy._entry_ptr = internal global ptr @pvr2_stream_destroy._entry, section ".printk_index", align 4
@pvr2_buffer_set_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016pvrusb2: /*---TRACE_FLOW---*/ bufferPool\09%8s cap cap=%07d cnt=%02d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pvr2_buffer_set_buffer\00", [41 x i8] zeroinitializer }, align 32
@pvr2_buffer_set_buffer._entry_ptr = internal global ptr @pvr2_buffer_set_buffer._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pvr2_stream_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sp->list_lock\00", [17 x i8] zeroinitializer }, align 32
@pvr2_stream_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sp->mutex\00", [21 x i8] zeroinitializer }, align 32
@pvr2_stream_buffer_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016pvrusb2: /*---TRACE_FLOW---*/ poolResize\09stream=%p cur=%d adj=%+d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pvr2_stream_buffer_count\00", [39 x i8] zeroinitializer }, align 32
@pvr2_stream_buffer_count._entry_ptr = internal global ptr @pvr2_stream_buffer_count._entry, section ".printk_index", align 4
@pvr2_buffer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016pvrusb2: /*---TRACE_FLOW---*/ bufferInit     %p stream=%p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvr2_buffer_init\00", [47 x i8] zeroinitializer }, align 32
@pvr2_buffer_init._entry_ptr = internal global ptr @pvr2_buffer_init._entry, section ".printk_index", align 4
@pvr2_buffer_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pvrusb2: /*---TRACE_FLOW---*/ bufferDone     %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvr2_buffer_done\00", [47 x i8] zeroinitializer }, align 32
@pvr2_buffer_done._entry_ptr = internal global ptr @pvr2_buffer_done._entry, section ".printk_index", align 4
@pvr2_buffer_set_none._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016pvrusb2: /*---TRACE_FLOW---*/ bufferState    %p %6s --> %6s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_buffer_set_none\00", [43 x i8] zeroinitializer }, align 32
@pvr2_buffer_set_none._entry_ptr = internal global ptr @pvr2_buffer_set_none._entry, section ".printk_index", align 4
@pvr2_buffer_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016pvrusb2: /*---TRACE_FLOW---*/ bufferPool\09%8s dec cap=%07d cnt=%02d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_buffer_remove\00", [45 x i8] zeroinitializer }, align 32
@pvr2_buffer_remove._entry_ptr = internal global ptr @pvr2_buffer_remove._entry, section ".printk_index", align 4
@pvr2_stream_achieve_buffer_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016pvrusb2: /*---TRACE_FLOW---*/ poolCheck\09stream=%p cur=%d tgt=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pvr2_stream_achieve_buffer_count\00", [63 x i8] zeroinitializer }, align 32
@pvr2_stream_achieve_buffer_count._entry_ptr = internal global ptr @pvr2_stream_achieve_buffer_count._entry, section ".printk_index", align 4
@pvr2_buffer_set_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.22, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_buffer_set_idle\00", [43 x i8] zeroinitializer }, align 32
@pvr2_buffer_set_idle._entry_ptr = internal global ptr @pvr2_buffer_set_idle._entry, section ".printk_index", align 4
@pvr2_buffer_set_idle._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016pvrusb2: /*---TRACE_FLOW---*/ bufferPool\09%8s inc cap=%07d cnt=%02d\0A\00", [58 x i8] zeroinitializer }, align 32
@pvr2_buffer_set_idle._entry_ptr.25 = internal global ptr @pvr2_buffer_set_idle._entry.23, section ".printk_index", align 4
@pvr2_buffer_set_queued._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.26, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pvr2_buffer_set_queued\00", [41 x i8] zeroinitializer }, align 32
@pvr2_buffer_set_queued._entry_ptr = internal global ptr @pvr2_buffer_set_queued._entry, section ".printk_index", align 4
@pvr2_buffer_set_queued._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_buffer_set_queued._entry_ptr.28 = internal global ptr @pvr2_buffer_set_queued._entry.27, section ".printk_index", align 4
@buffer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016pvrusb2: /*---TRACE_FLOW---*/ bufferComplete %p stat=%d cnt=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buffer_complete\00", [16 x i8] zeroinitializer }, align 32
@buffer_complete._entry_ptr = internal global ptr @buffer_complete._entry, section ".printk_index", align 4
@buffer_complete._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016pvrusb2: stream %p transfer ok - fail count reset\0A\00", [43 x i8] zeroinitializer }, align 32
@buffer_complete._entry_ptr.33 = internal global ptr @buffer_complete._entry.31, section ".printk_index", align 4
@buffer_complete._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016pvrusb2: stream %p ignoring error %d - fail count increased to %u\0A\00", [59 x i8] zeroinitializer }, align 32
@buffer_complete._entry_ptr.36 = internal global ptr @buffer_complete._entry.34, section ".printk_index", align 4
@pvr2_buffer_set_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.37, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pvr2_buffer_set_ready\00", [42 x i8] zeroinitializer }, align 32
@pvr2_buffer_set_ready._entry_ptr = internal global ptr @pvr2_buffer_set_ready._entry, section ".printk_index", align 4
@pvr2_buffer_set_ready._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.37, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_buffer_set_ready._entry_ptr.39 = internal global ptr @pvr2_buffer_set_ready._entry.38, section ".printk_index", align 4
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"queued\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ready\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@switch.table.pvr2_buffer_set_idle = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@switch.table.pvr2_buffer_set_idle.45 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@switch.table.pvr2_buffer_queue = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@switch.table.pvr2_buffer_queue.46 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@switch.table.buffer_complete = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@switch.table.buffer_complete.47 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@switch.table.pvr2_stream_buffer_count = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@switch.table.pvr2_buffer_remove = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 465, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 473, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 647, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 400, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 401, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 289, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 254, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 277, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 155, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 143, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 357, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 198, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 209, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 222, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 233, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 424, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 436, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 446, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 172, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 184, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 90, i32 38 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 91, i32 38 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 92, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 93, i32 39 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [42 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-io.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 95, i32 9 }
@___asan_gen_.211 = private unnamed_addr constant [34 x i8] c"switch.table.pvr2_buffer_set_idle\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [37 x i8] c"switch.table.pvr2_buffer_set_idle.45\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [31 x i8] c"switch.table.pvr2_buffer_queue\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [34 x i8] c"switch.table.pvr2_buffer_queue.46\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [29 x i8] c"switch.table.buffer_complete\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [32 x i8] c"switch.table.buffer_complete.47\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [38 x i8] c"switch.table.pvr2_stream_buffer_count\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [32 x i8] c"switch.table.pvr2_buffer_remove\00", align 1
@llvm.compiler.used = appending global [80 x ptr] [ptr @buffer_complete._entry, ptr @buffer_complete._entry.31, ptr @buffer_complete._entry.34, ptr @buffer_complete._entry_ptr, ptr @buffer_complete._entry_ptr.33, ptr @buffer_complete._entry_ptr.36, ptr @pvr2_buffer_done._entry, ptr @pvr2_buffer_done._entry_ptr, ptr @pvr2_buffer_init._entry, ptr @pvr2_buffer_init._entry_ptr, ptr @pvr2_buffer_remove._entry, ptr @pvr2_buffer_remove._entry_ptr, ptr @pvr2_buffer_set_buffer._entry, ptr @pvr2_buffer_set_buffer._entry_ptr, ptr @pvr2_buffer_set_idle._entry, ptr @pvr2_buffer_set_idle._entry.23, ptr @pvr2_buffer_set_idle._entry_ptr, ptr @pvr2_buffer_set_idle._entry_ptr.25, ptr @pvr2_buffer_set_none._entry, ptr @pvr2_buffer_set_none._entry_ptr, ptr @pvr2_buffer_set_queued._entry, ptr @pvr2_buffer_set_queued._entry.27, ptr @pvr2_buffer_set_queued._entry_ptr, ptr @pvr2_buffer_set_queued._entry_ptr.28, ptr @pvr2_buffer_set_ready._entry, ptr @pvr2_buffer_set_ready._entry.38, ptr @pvr2_buffer_set_ready._entry_ptr, ptr @pvr2_buffer_set_ready._entry_ptr.39, ptr @pvr2_stream_achieve_buffer_count._entry, ptr @pvr2_stream_achieve_buffer_count._entry_ptr, ptr @pvr2_stream_buffer_count._entry, ptr @pvr2_stream_buffer_count._entry_ptr, ptr @pvr2_stream_create._entry, ptr @pvr2_stream_create._entry_ptr, ptr @pvr2_stream_destroy._entry, ptr @pvr2_stream_destroy._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pvr2_stream_init.__key, ptr @.str.7, ptr @pvr2_stream_init.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @switch.table.pvr2_buffer_set_idle, ptr @switch.table.pvr2_buffer_set_idle.45, ptr @switch.table.pvr2_buffer_queue, ptr @switch.table.pvr2_buffer_queue.46, ptr @switch.table.buffer_complete, ptr @switch.table.buffer_complete.47, ptr @switch.table.pvr2_stream_buffer_count, ptr @switch.table.pvr2_buffer_remove], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_stream_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_stream_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_set_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_stream_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_stream_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_stream_buffer_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_set_none._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_stream_achieve_buffer_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_set_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_set_idle._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_set_queued._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_set_queued._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_complete._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_complete._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_set_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_buffer_set_ready._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvr2_buffer_set_idle to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvr2_buffer_set_idle.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvr2_buffer_queue to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvr2_buffer_queue.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.buffer_complete to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.buffer_complete.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvr2_stream_buffer_count to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvr2_buffer_remove to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pvr2_stream_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 236) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %1 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %1, 32
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
  %list_lock.i = getelementptr inbounds %struct.pvr2_stream, ptr %call7.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @pvr2_stream_init.__key, i16 noundef signext 3) #8
  %mutex.i = getelementptr inbounds %struct.pvr2_stream, ptr %call7.i.i, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @pvr2_stream_init.__key.8) #8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %ready_list.i = getelementptr inbounds %struct.pvr2_stream, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %ready_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ready_list.i, ptr %ready_list.i, align 8
  %prev.i7.i = getelementptr inbounds %struct.pvr2_stream, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ready_list.i, ptr %prev.i7.i, align 4
  %idle_list.i = getelementptr inbounds %struct.pvr2_stream, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %idle_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %idle_list.i, ptr %idle_list.i, align 8
  %prev.i8.i = getelementptr inbounds %struct.pvr2_stream, ptr %call7.i.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %idle_list.i, ptr %prev.i8.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_stream_destroy(ptr noundef %sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %sp) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %mutex.i = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #8
  tail call fastcc void @pvr2_stream_internal_flush(ptr noundef nonnull %sp) #8
  %call.i = tail call fastcc i32 @pvr2_stream_buffer_count(ptr noundef nonnull %sp, i32 noundef 0) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  tail call void @kfree(ptr noundef nonnull %sp) #8
  br label %return

return:                                           ; preds = %do.end5, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_stream_setup(ptr noundef %sp, ptr noundef %dev, i32 noundef %endpoint, i32 noundef %tolerance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call fastcc void @pvr2_stream_internal_flush(ptr noundef %sp)
  %dev1 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 15
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %endpoint2 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 16
  %1 = ptrtoint ptr %endpoint2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %endpoint, ptr %endpoint2, align 4
  %fail_tolerance = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 20
  %2 = ptrtoint ptr %fail_tolerance to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tolerance, ptr %fail_tolerance, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvr2_stream_internal_flush(ptr noundef %sp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sp, align 4
  %cmp.not15 = icmp eq ptr %1, %sp
  br i1 %cmp.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %9, %while.cond.backedge.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -32
  %state.i = getelementptr i8, ptr %2, i32 -24
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp eq i32 %4, 2
  br i1 %cmp.i, label %pvr2_buffer_wipe.exit, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

pvr2_buffer_wipe.exit:                            ; preds = %while.body
  %purb.i = getelementptr i8, ptr %2, i32 8
  %5 = ptrtoint ptr %purb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %purb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #8
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp2.not = icmp eq i32 %.pr, 2
  br i1 %cmp2.not, label %if.end, label %pvr2_buffer_wipe.exit.while.cond.backedge_crit_edge

pvr2_buffer_wipe.exit.while.cond.backedge_crit_edge: ; preds = %pvr2_buffer_wipe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end:                                           ; preds = %pvr2_buffer_wipe.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pvr2_buffer_set_idle(ptr noundef %add.ptr)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end, %pvr2_buffer_wipe.exit.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %8 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sp, align 4
  %cmp.not = icmp eq ptr %9, %sp
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %buffer_total_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 11
  %10 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_total_count, align 4
  %buffer_target_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 12
  %12 = ptrtoint ptr %buffer_target_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_target_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3.not = icmp eq i32 %11, %13
  br i1 %cmp3.not, label %while.end.if.end5_crit_edge, label %do.body.i

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.body.i:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %14 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %sp, i32 noundef %11, i32 noundef %13) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %15 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_total_count, align 4
  %17 = ptrtoint ptr %buffer_target_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buffer_target_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp10.i = icmp ult i32 %16, %18
  br i1 %cmp10.i, label %do.end7.i.if.end5.sink.split_crit_edge, label %while.cond.preheader.i

do.end7.i.if.end5.sink.split_crit_edge:           ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split

while.cond.preheader.i:                           ; preds = %do.end7.i
  %buffers.i = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  %19 = sub i32 %16, %18
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %cnt.0.i = phi i32 [ %add.i, %while.body.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.i, i32 %19)
  %exitcond.not.i = icmp eq i32 %cnt.0.i, %19
  br i1 %exitcond.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %20 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffers.i, align 4
  %add.i = add i32 %cnt.0.i, 1
  %sub19.i = sub i32 %16, %add.i
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %sub19.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %state.i13 = getelementptr inbounds %struct.pvr2_buffer, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %state.i13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i13, align 4
  %cmp20.not.i = icmp eq i32 %25, 1
  br i1 %cmp20.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.end.split.loop.exit.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.split.loop.exit.i:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.le.i = sub nuw i32 %16, %cnt.0.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.split.loop.exit.i, %while.cond.i.while.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ %cnt.0.i, %while.end.split.loop.exit.i ], [ %19, %while.cond.i.while.end.i_crit_edge ]
  %sub.lcssa.i = phi i32 [ %sub.le.i, %while.end.split.loop.exit.i ], [ %18, %while.cond.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa.i)
  %tobool23.not.i = icmp eq i32 %cnt.0.lcssa.i, 0
  br i1 %tobool23.not.i, label %while.end.i.if.end5_crit_edge, label %while.end.i.if.end5.sink.split_crit_edge

while.end.i.if.end5.sink.split_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.sink.split

while.end.i.if.end5_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5.sink.split:                               ; preds = %while.end.i.if.end5.sink.split_crit_edge, %do.end7.i.if.end5.sink.split_crit_edge
  %sub.lcssa.i.sink = phi i32 [ %18, %do.end7.i.if.end5.sink.split_crit_edge ], [ %sub.lcssa.i, %while.end.i.if.end5.sink.split_crit_edge ]
  %call27.i = tail call fastcc i32 @pvr2_stream_buffer_count(ptr noundef %sp, i32 noundef %sub.lcssa.i.sink) #8
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %while.end.i.if.end5_crit_edge, %while.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_stream_set_callback(ptr noundef %sp, ptr noundef %func, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %list_lock = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 17
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #8
  %callback_data = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 14
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %callback_data, align 4
  %callback_func = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 13
  %1 = ptrtoint ptr %callback_func to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %callback_func, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call3) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_stream_get_stats(ptr noundef %sp, ptr noundef writeonly %stats, i32 noundef %zero_counts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %list_lock = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 17
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #8
  %tobool.not = icmp eq ptr %stats, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %q_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 1
  %0 = ptrtoint ptr %q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q_count, align 4
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %stats, align 4
  %i_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 7
  %3 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_count, align 4
  %buffers_in_idle = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 1
  %5 = ptrtoint ptr %buffers_in_idle to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buffers_in_idle, align 4
  %r_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 4
  %6 = ptrtoint ptr %r_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r_count, align 4
  %buffers_in_ready = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 2
  %8 = ptrtoint ptr %buffers_in_ready to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buffers_in_ready, align 4
  %buffers_processed = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 21
  %9 = ptrtoint ptr %buffers_processed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffers_processed, align 4
  %buffers_processed5 = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 3
  %11 = ptrtoint ptr %buffers_processed5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buffers_processed5, align 4
  %buffers_failed = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 22
  %12 = ptrtoint ptr %buffers_failed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffers_failed, align 4
  %buffers_failed6 = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 4
  %14 = ptrtoint ptr %buffers_failed6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %buffers_failed6, align 4
  %bytes_processed = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 23
  %15 = ptrtoint ptr %bytes_processed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytes_processed, align 4
  %bytes_processed7 = getelementptr inbounds %struct.pvr2_stream_stats, ptr %stats, i32 0, i32 5
  %17 = ptrtoint ptr %bytes_processed7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %bytes_processed7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zero_counts)
  %tobool8.not = icmp eq i32 %zero_counts, 0
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %buffers_processed10 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 21
  %18 = ptrtoint ptr %buffers_processed10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %buffers_processed10, align 4
  %buffers_failed11 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 22
  %19 = ptrtoint ptr %buffers_failed11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %buffers_failed11, align 4
  %bytes_processed12 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 23
  %20 = ptrtoint ptr %bytes_processed12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bytes_processed12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_stream_get_buffer_count(ptr nocapture noundef readonly %sp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_target_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 12
  %0 = ptrtoint ptr %buffer_target_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_target_count, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_stream_set_buffer_count(ptr noundef %sp, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_target_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 12
  %0 = ptrtoint ptr %buffer_target_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_target_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cnt)
  %cmp = icmp eq i32 %1, %cnt
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %2 = ptrtoint ptr %buffer_target_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cnt, ptr %buffer_target_count, align 4
  %buffer_total_count.i = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 11
  %3 = ptrtoint ptr %buffer_total_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffer_total_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cnt)
  %cmp.i = icmp eq i32 %4, %cnt
  br i1 %cmp.i, label %if.end.pvr2_stream_achieve_buffer_count.exit_crit_edge, label %do.body.i

if.end.pvr2_stream_achieve_buffer_count.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_stream_achieve_buffer_count.exit

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %5 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %sp, i32 noundef %4, i32 noundef %cnt) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %6 = ptrtoint ptr %buffer_total_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_total_count.i, align 4
  %8 = ptrtoint ptr %buffer_target_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_target_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp10.i = icmp ult i32 %7, %9
  br i1 %cmp10.i, label %if.then11.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %do.end7.i
  %buffers.i = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  %10 = sub i32 %7, %9
  br label %while.cond.i

if.then11.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call fastcc i32 @pvr2_stream_buffer_count(ptr noundef %sp, i32 noundef %9) #8
  br label %pvr2_stream_achieve_buffer_count.exit

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %cnt.0.i = phi i32 [ %add.i, %while.body.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.i, i32 %10)
  %exitcond.not.i = icmp eq i32 %cnt.0.i, %10
  br i1 %exitcond.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %11 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffers.i, align 4
  %add.i = add i32 %cnt.0.i, 1
  %sub19.i = sub i32 %7, %add.i
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %sub19.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %state.i = getelementptr inbounds %struct.pvr2_buffer, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  %cmp20.not.i = icmp eq i32 %16, 1
  br i1 %cmp20.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.end.split.loop.exit.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.split.loop.exit.i:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.le.i = sub nuw i32 %7, %cnt.0.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.split.loop.exit.i, %while.cond.i.while.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ %cnt.0.i, %while.end.split.loop.exit.i ], [ %10, %while.cond.i.while.end.i_crit_edge ]
  %sub.lcssa.i = phi i32 [ %sub.le.i, %while.end.split.loop.exit.i ], [ %9, %while.cond.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa.i)
  %tobool23.not.i = icmp eq i32 %cnt.0.lcssa.i, 0
  br i1 %tobool23.not.i, label %while.end.i.pvr2_stream_achieve_buffer_count.exit_crit_edge, label %if.then24.i

while.end.i.pvr2_stream_achieve_buffer_count.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_stream_achieve_buffer_count.exit

if.then24.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call fastcc i32 @pvr2_stream_buffer_count(ptr noundef %sp, i32 noundef %sub.lcssa.i) #8
  br label %pvr2_stream_achieve_buffer_count.exit

pvr2_stream_achieve_buffer_count.exit:            ; preds = %if.then24.i, %while.end.i.pvr2_stream_achieve_buffer_count.exit_crit_edge, %if.then11.i, %if.end.pvr2_stream_achieve_buffer_count.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.then11.i ], [ 0, %if.end.pvr2_stream_achieve_buffer_count.exit_crit_edge ], [ 0, %if.then24.i ], [ 0, %while.end.i.pvr2_stream_achieve_buffer_count.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %pvr2_stream_achieve_buffer_count.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %pvr2_stream_achieve_buffer_count.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pvr2_stream_get_idle_buffer(ptr noundef readonly %sp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_list = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 6
  %0 = ptrtoint ptr %idle_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idle_list, align 4
  %cmp = icmp eq ptr %1, %idle_list
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %retval.0 = select i1 %cmp, ptr null, ptr %add.ptr
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pvr2_stream_get_ready_buffer(ptr noundef readonly %sp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ready_list = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 3
  %0 = ptrtoint ptr %ready_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ready_list, align 4
  %cmp = icmp eq ptr %1, %ready_list
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %retval.0 = select i1 %cmp, ptr null, ptr %add.ptr
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pvr2_stream_get_buffer(ptr nocapture noundef readonly %sp, i32 noundef %id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %buffer_total_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 11
  %0 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_total_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp1.not = icmp ugt i32 %1, %id
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %buffers = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffers, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %5, %if.end3 ], [ null, %entry.return_crit_edge ], [ null, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_stream_get_ready_count(ptr nocapture noundef readonly %sp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %r_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 4
  %0 = ptrtoint ptr %r_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r_count, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_stream_kill(ptr noundef %sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  tail call fastcc void @pvr2_stream_internal_flush(ptr noundef %sp)
  %ready_list.i = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 3
  %0 = ptrtoint ptr %ready_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ready_list.i, align 4
  %cmp.i14 = icmp eq ptr %1, %ready_list.i
  %add.ptr.i15 = getelementptr i8, ptr %1, i32 -32
  %cmp.not1216 = icmp eq ptr %add.ptr.i15, null
  %cmp.not17 = or i1 %cmp.i14, %cmp.not1216
  br i1 %cmp.not17, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %add.ptr.i18 = phi ptr [ %add.ptr.i, %while.body.while.body_crit_edge ], [ %add.ptr.i15, %entry.while.body_crit_edge ]
  tail call fastcc void @pvr2_buffer_set_idle(ptr noundef nonnull %add.ptr.i18)
  %2 = ptrtoint ptr %ready_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ready_list.i, align 4
  %cmp.i = icmp eq ptr %3, %ready_list.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -32
  %cmp.not12 = icmp eq ptr %add.ptr.i, null
  %cmp.not = or i1 %cmp.i, %cmp.not12
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %buffer_total_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 11
  %4 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer_total_count, align 4
  %buffer_target_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 12
  %6 = ptrtoint ptr %buffer_target_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_target_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp1.not = icmp eq i32 %5, %7
  br i1 %cmp1.not, label %while.end.do.end_crit_edge, label %do.body.i

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.body.i:                                        ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %8 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end7.i_crit_edge, label %do.end.i

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %sp, i32 noundef %5, i32 noundef %7) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  %9 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buffer_total_count, align 4
  %11 = ptrtoint ptr %buffer_target_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_target_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp10.i = icmp ult i32 %10, %12
  br i1 %cmp10.i, label %do.end7.i.do.end.sink.split_crit_edge, label %while.cond.preheader.i

do.end7.i.do.end.sink.split_crit_edge:            ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.sink.split

while.cond.preheader.i:                           ; preds = %do.end7.i
  %buffers.i = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  %13 = sub i32 %10, %12
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %cnt.0.i = phi i32 [ %add.i, %while.body.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0.i, i32 %13)
  %exitcond.not.i = icmp eq i32 %cnt.0.i, %13
  br i1 %exitcond.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %14 = ptrtoint ptr %buffers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffers.i, align 4
  %add.i = add i32 %cnt.0.i, 1
  %sub19.i = sub i32 %10, %add.i
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %sub19.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %state.i = getelementptr inbounds %struct.pvr2_buffer, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 4
  %cmp20.not.i = icmp eq i32 %19, 1
  br i1 %cmp20.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.end.split.loop.exit.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.split.loop.exit.i:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.le.i = sub nuw i32 %10, %cnt.0.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.split.loop.exit.i, %while.cond.i.while.end.i_crit_edge
  %cnt.0.lcssa.i = phi i32 [ %cnt.0.i, %while.end.split.loop.exit.i ], [ %13, %while.cond.i.while.end.i_crit_edge ]
  %sub.lcssa.i = phi i32 [ %sub.le.i, %while.end.split.loop.exit.i ], [ %12, %while.cond.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa.i)
  %tobool23.not.i = icmp eq i32 %cnt.0.lcssa.i, 0
  br i1 %tobool23.not.i, label %while.end.i.do.end_crit_edge, label %while.end.i.do.end.sink.split_crit_edge

while.end.i.do.end.sink.split_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.sink.split

while.end.i.do.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.sink.split:                                ; preds = %while.end.i.do.end.sink.split_crit_edge, %do.end7.i.do.end.sink.split_crit_edge
  %sub.lcssa.i.sink = phi i32 [ %12, %do.end7.i.do.end.sink.split_crit_edge ], [ %sub.lcssa.i, %while.end.i.do.end.sink.split_crit_edge ]
  %call27.i = tail call fastcc i32 @pvr2_stream_buffer_count(ptr noundef %sp, i32 noundef %sub.lcssa.i.sink) #8
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %while.end.i.do.end_crit_edge, %while.end.do.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvr2_buffer_set_idle(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 7
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %2 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.end4

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

do.end4:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %switch.lookup, label %do.end4.pvr2_buffer_state_decode.exit_crit_edge

do.end4.pvr2_buffer_state_decode.exit_crit_edge:  ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_state_decode.exit

switch.lookup:                                    ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.pvr2_buffer_set_idle, i32 0, i32 %4
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %pvr2_buffer_state_decode.exit

pvr2_buffer_state_decode.exit:                    ; preds = %switch.lookup, %do.end4.pvr2_buffer_state_decode.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.44, %do.end4.pvr2_buffer_state_decode.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %bp, ptr noundef nonnull %retval.0.i, ptr noundef nonnull @.str.41) #12
  br label %do.body10

do.body10:                                        ; preds = %pvr2_buffer_state_decode.exit, %entry.do.body10_crit_edge
  %list_lock = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 17
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #8
  tail call fastcc void @pvr2_buffer_remove(ptr noundef %bp)
  %list_overhead = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 8
  %idle_list = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_overhead, ptr noundef %8, ptr noundef %idle_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body10.list_add_tail.exit_crit_edge

do.body10.list_add_tail.exit_crit_edge:           ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list_overhead, ptr %prev.i, align 4
  %10 = ptrtoint ptr %list_overhead to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %idle_list, ptr %list_overhead, align 4
  %prev3.i.i = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list_overhead, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body10.list_add_tail.exit_crit_edge
  %state18 = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 2
  %13 = ptrtoint ptr %state18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %state18, align 4
  %i_count = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %i_count, align 4
  %max_count = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 4
  %16 = ptrtoint ptr %max_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_count, align 4
  %i_bcount = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %i_bcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_bcount, align 4
  %add = add i32 %19, %17
  store i32 %add, ptr %i_bcount, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %20 = load i32, ptr @pvrusb2_debug, align 4
  %and20 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %list_add_tail.exit.do.end34_crit_edge, label %do.end25

list_add_tail.exit.do.end34_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end25:                                         ; preds = %list_add_tail.exit
  %21 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %switch.lookup57, label %do.end25.pvr2_buffer_state_decode.exit56_crit_edge

do.end25.pvr2_buffer_state_decode.exit56_crit_edge: ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_state_decode.exit56

switch.lookup57:                                  ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep58 = getelementptr inbounds [4 x ptr], ptr @switch.table.pvr2_buffer_set_idle.45, i32 0, i32 %22
  %24 = ptrtoint ptr %switch.gep58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load59 = load ptr, ptr %switch.gep58, align 4
  br label %pvr2_buffer_state_decode.exit56

pvr2_buffer_state_decode.exit56:                  ; preds = %switch.lookup57, %do.end25.pvr2_buffer_state_decode.exit56_crit_edge
  %retval.0.i55 = phi ptr [ %switch.load59, %switch.lookup57 ], [ @.str.44, %do.end25.pvr2_buffer_state_decode.exit56_crit_edge ]
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %retval.0.i55, i32 noundef %add, i32 noundef %inc) #12
  br label %do.end34

do.end34:                                         ; preds = %pvr2_buffer_state_decode.exit56, %list_add_tail.exit.do.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call13) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_buffer_queue(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 7
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %mutex = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %state.i = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.pvr2_buffer_wipe.exit_crit_edge

if.end.pvr2_buffer_wipe.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_wipe.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %purb.i = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 9
  %4 = ptrtoint ptr %purb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %purb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #8
  br label %pvr2_buffer_wipe.exit

pvr2_buffer_wipe.exit:                            ; preds = %if.then.i, %if.end.pvr2_buffer_wipe.exit_crit_edge
  %dev = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %pvr2_buffer_wipe.exit.do.end_crit_edge, label %if.end3

pvr2_buffer_wipe.exit.do.end_crit_edge:           ; preds = %pvr2_buffer_wipe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end3:                                          ; preds = %pvr2_buffer_wipe.exit
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %10 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.do.body10.i_crit_edge, label %do.end4.i

if.end3.do.body10.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10.i

do.end4.i:                                        ; preds = %if.end3
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %switch.lookup, label %do.end4.i.pvr2_buffer_state_decode.exit.i_crit_edge

do.end4.i.pvr2_buffer_state_decode.exit.i_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_state_decode.exit.i

switch.lookup:                                    ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.pvr2_buffer_queue, i32 0, i32 %12
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %pvr2_buffer_state_decode.exit.i

pvr2_buffer_state_decode.exit.i:                  ; preds = %switch.lookup, %do.end4.i.pvr2_buffer_state_decode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.44, %do.end4.i.pvr2_buffer_state_decode.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %bp, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.42) #12
  br label %do.body10.i

do.body10.i:                                      ; preds = %pvr2_buffer_state_decode.exit.i, %if.end3.do.body10.i_crit_edge
  %list_lock.i = getelementptr inbounds %struct.pvr2_stream, ptr %9, i32 0, i32 17
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock.i) #8
  tail call fastcc void @pvr2_buffer_remove(ptr noundef nonnull %bp) #8
  %list_overhead.i = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_overhead.i, ptr noundef %16, ptr noundef %9) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body10.i.list_add_tail.exit.i_crit_edge

do.body10.i.list_add_tail.exit.i_crit_edge:       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list_overhead.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list_overhead.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %list_overhead.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list_overhead.i, ptr %16, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.body10.i.list_add_tail.exit.i_crit_edge
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %state.i, align 4
  %q_count.i = getelementptr inbounds %struct.pvr2_stream, ptr %9, i32 0, i32 1
  %22 = ptrtoint ptr %q_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %q_count.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %q_count.i, align 4
  %max_count.i = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 4
  %24 = ptrtoint ptr %max_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_count.i, align 4
  %q_bcount.i = getelementptr inbounds %struct.pvr2_stream, ptr %9, i32 0, i32 2
  %26 = ptrtoint ptr %q_bcount.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %q_bcount.i, align 4
  %add.i = add i32 %27, %25
  store i32 %add.i, ptr %q_bcount.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %28 = load i32, ptr @pvrusb2_debug, align 4
  %and20.i = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %list_add_tail.exit.i.pvr2_buffer_set_queued.exit_crit_edge, label %do.end25.i

list_add_tail.exit.i.pvr2_buffer_set_queued.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_set_queued.exit

do.end25.i:                                       ; preds = %list_add_tail.exit.i
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %31 = icmp ult i32 %30, 4
  br i1 %31, label %switch.lookup26, label %do.end25.i.pvr2_buffer_state_decode.exit56.i_crit_edge

do.end25.i.pvr2_buffer_state_decode.exit56.i_crit_edge: ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_state_decode.exit56.i

switch.lookup26:                                  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep27 = getelementptr inbounds [4 x ptr], ptr @switch.table.pvr2_buffer_queue.46, i32 0, i32 %30
  %32 = ptrtoint ptr %switch.gep27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load28 = load ptr, ptr %switch.gep27, align 4
  br label %pvr2_buffer_state_decode.exit56.i

pvr2_buffer_state_decode.exit56.i:                ; preds = %switch.lookup26, %do.end25.i.pvr2_buffer_state_decode.exit56.i_crit_edge
  %retval.0.i55.i = phi ptr [ %switch.load28, %switch.lookup26 ], [ @.str.44, %do.end25.i.pvr2_buffer_state_decode.exit56.i_crit_edge ]
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %retval.0.i55.i, i32 noundef %add.i, i32 noundef %inc.i) #12
  br label %pvr2_buffer_set_queued.exit

pvr2_buffer_set_queued.exit:                      ; preds = %pvr2_buffer_state_decode.exit56.i, %list_add_tail.exit.i.pvr2_buffer_set_queued.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock.i, i32 noundef %call13.i) #8
  %status = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 6
  %33 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -115, ptr %status, align 4
  %purb = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 9
  %34 = ptrtoint ptr %purb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %purb, align 4
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %endpoint = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %endpoint, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 8
  %shl.i = shl i32 %41, 8
  %shl1.i = shl i32 %39, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or6 = or i32 %or.i, -1073741696
  %ptr = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 3
  %42 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptr, align 4
  %44 = ptrtoint ptr %max_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_count.i, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 8
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %37, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 10
  %47 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %or6, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 14
  %48 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %43, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 19
  %49 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %45, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 28
  %50 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @buffer_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 27
  %51 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %bp, ptr %context4.i, align 4
  %52 = load ptr, ptr %purb, align 4
  %call8 = tail call i32 @usb_submit_urb(ptr noundef %52, i32 noundef 3264) #8
  br label %do.end

do.end:                                           ; preds = %pvr2_buffer_set_queued.exit, %pvr2_buffer_wipe.exit.do.end_crit_edge
  %ret.0 = phi i32 [ 0, %pvr2_buffer_set_queued.exit ], [ -5, %pvr2_buffer_wipe.exit.do.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_complete(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %stream = getelementptr inbounds %struct.pvr2_buffer, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %used_count = getelementptr inbounds %struct.pvr2_buffer, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %used_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %used_count, align 4
  %status = getelementptr inbounds %struct.pvr2_buffer, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %6 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.end4

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status5 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status5, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %1, i32 noundef %8, i32 noundef %10) #12
  br label %do.body9

do.body9:                                         ; preds = %do.end4, %entry.do.body9_crit_edge
  %list_lock = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 17
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #8
  %status17 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status17, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.else [
    i32 0, label %do.body9.if.then30_crit_edge
    i32 -2, label %do.body9.if.then30_crit_edge121
    i32 -104, label %do.body9.if.then30_crit_edge122
    i32 -108, label %do.body9.if.then30_crit_edge123
  ]

do.body9.if.then30_crit_edge123:                  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

do.body9.if.then30_crit_edge122:                  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

do.body9.if.then30_crit_edge121:                  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

do.body9.if.then30_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %do.body9.if.then30_crit_edge, %do.body9.if.then30_crit_edge121, %do.body9.if.then30_crit_edge122, %do.body9.if.then30_crit_edge123
  %buffers_processed = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %buffers_processed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffers_processed, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %buffers_processed, align 4
  %actual_length31 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %16 = ptrtoint ptr %actual_length31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %actual_length31, align 4
  %bytes_processed = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 23
  %18 = ptrtoint ptr %bytes_processed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytes_processed, align 4
  %add = add i32 %19, %17
  store i32 %add, ptr %bytes_processed, align 4
  %20 = load i32, ptr %actual_length31, align 4
  %21 = ptrtoint ptr %used_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %used_count, align 4
  %fail_count = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 19
  %22 = ptrtoint ptr %fail_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fail_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool34.not = icmp eq i32 %23, 0
  br i1 %tobool34.not, label %if.then30.if.end77_crit_edge, label %do.body36

if.then30.if.end77_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.body36:                                        ; preds = %if.then30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %24 = load i32, ptr @pvrusb2_debug, align 4
  %and37 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.body36.do.end47_crit_edge, label %do.end42

do.body36.do.end47_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %3) #12
  br label %do.end47

do.end47:                                         ; preds = %do.end42, %do.body36.do.end47_crit_edge
  %25 = ptrtoint ptr %fail_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %fail_count, align 4
  br label %if.end77

if.else:                                          ; preds = %do.body9
  %fail_count50 = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 19
  %26 = ptrtoint ptr %fail_count50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fail_count50, align 4
  %fail_tolerance = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 20
  %28 = ptrtoint ptr %fail_tolerance to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fail_tolerance, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp51 = icmp ult i32 %27, %29
  br i1 %cmp51, label %if.then53, label %if.else71

if.then53:                                        ; preds = %if.else
  %inc55 = add nuw i32 %27, 1
  %30 = ptrtoint ptr %fail_count50 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inc55, ptr %fail_count50, align 4
  %buffers_failed = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 22
  %31 = ptrtoint ptr %buffers_failed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffers_failed, align 4
  %inc56 = add i32 %32, 1
  store i32 %inc56, ptr %buffers_failed, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %33 = load i32, ptr @pvrusb2_debug, align 4
  %and58 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then53.if.end77_crit_edge, label %do.end63

if.then53.if.end77_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end63:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %status17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status17, align 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %3, i32 noundef %35, i32 noundef %inc55) #12
  br label %if.end77

if.else71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %buffers_failed72 = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 22
  %36 = ptrtoint ptr %buffers_failed72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffers_failed72, align 4
  %inc73 = add i32 %37, 1
  store i32 %inc73, ptr %buffers_failed72, align 4
  %38 = ptrtoint ptr %status17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status17, align 4
  %40 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %status, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.else71, %do.end63, %if.then53.if.end77_crit_edge, %do.end47, %if.then30.if.end77_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call12) #8
  %41 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stream, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %43 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %43, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end77.do.body10.i_crit_edge, label %do.end4.i

if.end77.do.body10.i_crit_edge:                   ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10.i

do.end4.i:                                        ; preds = %if.end77
  %state.i = getelementptr inbounds %struct.pvr2_buffer, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %46 = icmp ult i32 %45, 4
  br i1 %46, label %switch.lookup, label %do.end4.i.pvr2_buffer_state_decode.exit.i_crit_edge

do.end4.i.pvr2_buffer_state_decode.exit.i_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_state_decode.exit.i

switch.lookup:                                    ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.buffer_complete, i32 0, i32 %45
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %pvr2_buffer_state_decode.exit.i

pvr2_buffer_state_decode.exit.i:                  ; preds = %switch.lookup, %do.end4.i.pvr2_buffer_state_decode.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.44, %do.end4.i.pvr2_buffer_state_decode.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %1, ptr noundef nonnull %retval.0.i.i, ptr noundef nonnull @.str.43) #12
  br label %do.body10.i

do.body10.i:                                      ; preds = %pvr2_buffer_state_decode.exit.i, %if.end77.do.body10.i_crit_edge
  %list_lock.i = getelementptr inbounds %struct.pvr2_stream, ptr %42, i32 0, i32 17
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock.i) #8
  %r_count.i = getelementptr inbounds %struct.pvr2_stream, ptr %42, i32 0, i32 4
  tail call fastcc void @pvr2_buffer_remove(ptr noundef %1) #8
  %list_overhead.i = getelementptr inbounds %struct.pvr2_buffer, ptr %1, i32 0, i32 8
  %ready_list.i = getelementptr inbounds %struct.pvr2_stream, ptr %42, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.pvr2_stream, ptr %42, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_overhead.i, ptr noundef %49, ptr noundef %ready_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body10.i.list_add_tail.exit.i_crit_edge

do.body10.i.list_add_tail.exit.i_crit_edge:       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %list_overhead.i, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %list_overhead.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ready_list.i, ptr %list_overhead.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.pvr2_buffer, ptr %1, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list_overhead.i, ptr %49, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.body10.i.list_add_tail.exit.i_crit_edge
  %state20.i = getelementptr inbounds %struct.pvr2_buffer, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %state20.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %state20.i, align 4
  %55 = ptrtoint ptr %r_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %r_count.i, align 4
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %r_count.i, align 4
  %57 = ptrtoint ptr %used_count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %used_count, align 4
  %r_bcount.i = getelementptr inbounds %struct.pvr2_stream, ptr %42, i32 0, i32 5
  %59 = ptrtoint ptr %r_bcount.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %r_bcount.i, align 4
  %add.i = add i32 %60, %58
  store i32 %add.i, ptr %r_bcount.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %61 = load i32, ptr @pvrusb2_debug, align 4
  %and23.i = and i32 %61, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %list_add_tail.exit.i.pvr2_buffer_set_ready.exit_crit_edge, label %do.end28.i

list_add_tail.exit.i.pvr2_buffer_set_ready.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_set_ready.exit

do.end28.i:                                       ; preds = %list_add_tail.exit.i
  %62 = ptrtoint ptr %state20.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %64 = icmp ult i32 %63, 4
  br i1 %64, label %switch.lookup118, label %do.end28.i.pvr2_buffer_state_decode.exit8.i_crit_edge

do.end28.i.pvr2_buffer_state_decode.exit8.i_crit_edge: ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_state_decode.exit8.i

switch.lookup118:                                 ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep119 = getelementptr inbounds [4 x ptr], ptr @switch.table.buffer_complete.47, i32 0, i32 %63
  %65 = ptrtoint ptr %switch.gep119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load120 = load ptr, ptr %switch.gep119, align 4
  br label %pvr2_buffer_state_decode.exit8.i

pvr2_buffer_state_decode.exit8.i:                 ; preds = %switch.lookup118, %do.end28.i.pvr2_buffer_state_decode.exit8.i_crit_edge
  %retval.0.i7.i = phi ptr [ %switch.load120, %switch.lookup118 ], [ @.str.44, %do.end28.i.pvr2_buffer_state_decode.exit8.i_crit_edge ]
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull %retval.0.i7.i, i32 noundef %add.i, i32 noundef %inc.i) #12
  br label %pvr2_buffer_set_ready.exit

pvr2_buffer_set_ready.exit:                       ; preds = %pvr2_buffer_state_decode.exit8.i, %list_add_tail.exit.i.pvr2_buffer_set_ready.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock.i, i32 noundef %call13.i) #8
  %callback_func = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 13
  %66 = ptrtoint ptr %callback_func to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %callback_func, align 4
  %tobool80.not = icmp eq ptr %67, null
  br i1 %tobool80.not, label %pvr2_buffer_set_ready.exit.if.end83_crit_edge, label %if.then81

pvr2_buffer_set_ready.exit.if.end83_crit_edge:    ; preds = %pvr2_buffer_set_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then81:                                        ; preds = %pvr2_buffer_set_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  %callback_data = getelementptr inbounds %struct.pvr2_stream, ptr %3, i32 0, i32 14
  %68 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %callback_data, align 4
  tail call void %67(ptr noundef %69) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %pvr2_buffer_set_ready.exit.if.end83_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvr2_buffer_set_buffer(ptr noundef %bp, ptr noundef %ptr, i32 noundef %cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %bp, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 7
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %mutex = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %list_lock = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 17
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock) #8
  %state = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6.not = icmp eq i32 %3, 1
  br i1 %cmp6.not, label %if.else, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.else:                                          ; preds = %if.end
  %ptr9 = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 3
  %4 = ptrtoint ptr %ptr9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ptr, ptr %ptr9, align 4
  %max_count = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 4
  %5 = ptrtoint ptr %max_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_count, align 4
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stream, align 4
  %i_bcount = getelementptr inbounds %struct.pvr2_stream, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %i_bcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_bcount, align 4
  %sub = sub i32 %10, %6
  store i32 %sub, ptr %i_bcount, align 4
  store i32 %cnt, ptr %max_count, align 4
  %11 = load ptr, ptr %stream, align 4
  %i_bcount14 = getelementptr inbounds %struct.pvr2_stream, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %i_bcount14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_bcount14, align 4
  %add = add i32 %13, %cnt
  store i32 %add, ptr %i_bcount14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %14 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else.if.end30_crit_edge, label %do.end20

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stream, align 4
  %i_bcount24 = getelementptr inbounds %struct.pvr2_stream, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %i_bcount24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_bcount24, align 4
  %i_count = getelementptr inbounds %struct.pvr2_stream, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %i_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_count, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.41, i32 noundef %18, i32 noundef %20) #12
  br label %if.end30

if.end30:                                         ; preds = %do.end20, %if.else.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %ret.0 = phi i32 [ 0, %do.end20 ], [ 0, %if.else.if.end30_crit_edge ], [ -1, %if.end.if.end30_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock, i32 noundef %call3) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end30 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_buffer_get_count(ptr nocapture noundef readonly %bp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %used_count = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 5
  %0 = ptrtoint ptr %used_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used_count, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_buffer_get_status(ptr nocapture noundef readonly %bp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pvr2_buffer_get_id(ptr nocapture noundef readonly %bp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bp, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvr2_stream_buffer_count(ptr noundef %sp, i32 noundef %cnt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_total_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 11
  %0 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_total_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cnt)
  %cmp = icmp eq i32 %1, %cnt
  br i1 %cmp, label %entry.cleanup83_crit_edge, label %do.body

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %2 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %2, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %cnt, %1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %sp, i32 noundef %1, i32 noundef %sub) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %and8 = and i32 %cnt, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %cnt)
  %cmp9 = icmp ult i32 %and8, %cnt
  %add = add i32 %and8, 32
  %spec.select = select i1 %cmp9, i32 %add, i32 %and8
  %3 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffer_total_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %cnt)
  %cmp13 = icmp ult i32 %4, %cnt
  br i1 %cmp13, label %if.then14, label %while.cond47.preheader

while.cond47.preheader:                           ; preds = %do.end7
  %5 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buffer_total_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cnt)
  %cmp49155 = icmp ugt i32 %6, %cnt
  br i1 %cmp49155, label %while.body50.lr.ph, label %while.cond47.preheader.while.end61_crit_edge

while.cond47.preheader.while.end61_crit_edge:     ; preds = %while.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end61

while.body50.lr.ph:                               ; preds = %while.cond47.preheader
  %buffers52 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  br label %while.body50

if.then14:                                        ; preds = %do.end7
  %buffer_slot_count = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 10
  %7 = ptrtoint ptr %buffer_slot_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffer_slot_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %8)
  %cmp15 = icmp ugt i32 %spec.select, %8
  br i1 %cmp15, label %if.then16, label %if.then14.if.end29_crit_edge

if.then14.if.end29_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then16:                                        ; preds = %if.then14
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 4) #8
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.then16.cleanup83_crit_edge, label %if.end7.i, !prof !106

if.then16.cleanup83_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

if.end7.i:                                        ; preds = %if.then16
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #13
  %tobool18.not = icmp eq ptr %call8.i, null
  br i1 %tobool18.not, label %if.end7.i.cleanup83_crit_edge, label %if.end20

if.end7.i.cleanup83_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

if.end20:                                         ; preds = %if.end7.i
  %12 = ptrtoint ptr %buffer_slot_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_slot_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %buffers = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  %14 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffers, align 4
  %mul = shl i32 %13, 2
  %16 = call ptr @memcpy(ptr %call8.i, ptr %15, i32 %mul)
  tail call void @kfree(ptr noundef %15) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %buffers27 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  %17 = ptrtoint ptr %buffers27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i, ptr %buffers27, align 4
  %18 = ptrtoint ptr %buffer_slot_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %buffer_slot_count, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.then14.if.end29_crit_edge
  %19 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buffer_total_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %cnt)
  %cmp31156 = icmp ult i32 %20, %cnt
  br i1 %cmp31156, label %while.body.lr.ph, label %if.end29.cleanup83_crit_edge

if.end29.cleanup83_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

while.body.lr.ph:                                 ; preds = %if.end29
  %buffers41 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 44) #11
  %tobool33.not = icmp eq ptr %call7.i, null
  br i1 %tobool33.not, label %while.body.cleanup83_crit_edge, label %if.end35

while.body.cleanup83_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

if.end35:                                         ; preds = %while.body
  %22 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffer_total_count, align 4
  %24 = getelementptr inbounds i8, ptr %call7.i, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 36)
  %signature.i = getelementptr inbounds %struct.pvr2_buffer, ptr %call7.i, i32 0, i32 1
  %26 = ptrtoint ptr %signature.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1197814385, ptr %signature.i, align 4
  %27 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %23, ptr %call7.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %28 = load i32, ptr @pvrusb2_debug, align 4
  %and.i = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end35.pvr2_buffer_init.exit_crit_edge, label %do.end.i

if.end35.pvr2_buffer_init.exit_crit_edge:         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_init.exit

do.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %call7.i, ptr noundef %sp) #12
  br label %pvr2_buffer_init.exit

pvr2_buffer_init.exit:                            ; preds = %do.end.i, %if.end35.pvr2_buffer_init.exit_crit_edge
  %stream.i = getelementptr inbounds %struct.pvr2_buffer, ptr %call7.i, i32 0, i32 7
  %29 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sp, ptr %stream.i, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %24, align 8
  %list_overhead.i = getelementptr inbounds %struct.pvr2_buffer, ptr %call7.i, i32 0, i32 8
  %31 = ptrtoint ptr %list_overhead.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list_overhead.i, ptr %list_overhead.i, align 8
  %prev.i.i = getelementptr inbounds %struct.pvr2_buffer, ptr %call7.i, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list_overhead.i, ptr %prev.i.i, align 4
  %call4.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %purb.i = getelementptr inbounds %struct.pvr2_buffer, ptr %call7.i, i32 0, i32 9
  %33 = ptrtoint ptr %purb.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call4.i, ptr %purb.i, align 8
  %tobool6.not.i.not = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %pvr2_buffer_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup83

if.end40:                                         ; preds = %pvr2_buffer_init.exit
  %34 = ptrtoint ptr %buffers41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buffers41, align 4
  %36 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffer_total_count, align 4
  %arrayidx = getelementptr ptr, ptr %35, i32 %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i, ptr %arrayidx, align 4
  %39 = load i32, ptr %buffer_total_count, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %buffer_total_count, align 4
  tail call fastcc void @pvr2_buffer_set_idle(ptr noundef nonnull %call7.i)
  %40 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buffer_total_count, align 4
  %cmp31 = icmp ult i32 %41, %cnt
  br i1 %cmp31, label %if.end40.while.body_crit_edge, label %if.end40.cleanup83_crit_edge

if.end40.cleanup83_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body50:                                     ; preds = %pvr2_buffer_done.exit.while.body50_crit_edge, %while.body50.lr.ph
  %42 = phi i32 [ %6, %while.body50.lr.ph ], [ %66, %pvr2_buffer_done.exit.while.body50_crit_edge ]
  %43 = ptrtoint ptr %buffers52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffers52, align 4
  %sub54 = add i32 %42, -1
  %arrayidx55 = getelementptr ptr, ptr %44, i32 %sub54
  %45 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx55, align 4
  store ptr null, ptr %arrayidx55, align 4
  %47 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %buffer_total_count, align 4
  %dec = add i32 %48, -1
  store i32 %dec, ptr %buffer_total_count, align 4
  %state.i.i = getelementptr inbounds %struct.pvr2_buffer, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp.i.i141 = icmp eq i32 %50, 2
  br i1 %cmp.i.i141, label %if.then.i.i142, label %while.body50.pvr2_buffer_wipe.exit.i_crit_edge

while.body50.pvr2_buffer_wipe.exit.i_crit_edge:   ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_wipe.exit.i

if.then.i.i142:                                   ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #10
  %purb.i.i = getelementptr inbounds %struct.pvr2_buffer, ptr %46, i32 0, i32 9
  %51 = ptrtoint ptr %purb.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %purb.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %52) #8
  br label %pvr2_buffer_wipe.exit.i

pvr2_buffer_wipe.exit.i:                          ; preds = %if.then.i.i142, %while.body50.pvr2_buffer_wipe.exit.i_crit_edge
  %stream.i.i = getelementptr inbounds %struct.pvr2_buffer, ptr %46, i32 0, i32 7
  %53 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stream.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %55 = load i32, ptr @pvrusb2_debug, align 4
  %and.i.i = and i32 %55, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %pvr2_buffer_wipe.exit.i.pvr2_buffer_set_none.exit.i_crit_edge, label %do.end4.i.i

pvr2_buffer_wipe.exit.i.pvr2_buffer_set_none.exit.i_crit_edge: ; preds = %pvr2_buffer_wipe.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_set_none.exit.i

do.end4.i.i:                                      ; preds = %pvr2_buffer_wipe.exit.i
  %56 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %switch.lookup, label %do.end4.i.i.pvr2_buffer_state_decode.exit.i.i_crit_edge

do.end4.i.i.pvr2_buffer_state_decode.exit.i.i_crit_edge: ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_state_decode.exit.i.i

switch.lookup:                                    ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.pvr2_stream_buffer_count, i32 0, i32 %57
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %pvr2_buffer_state_decode.exit.i.i

pvr2_buffer_state_decode.exit.i.i:                ; preds = %switch.lookup, %do.end4.i.i.pvr2_buffer_state_decode.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.44, %do.end4.i.i.pvr2_buffer_state_decode.exit.i.i_crit_edge ]
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %46, ptr noundef nonnull %retval.0.i.i.i, ptr noundef nonnull @.str.40) #12
  br label %pvr2_buffer_set_none.exit.i

pvr2_buffer_set_none.exit.i:                      ; preds = %pvr2_buffer_state_decode.exit.i.i, %pvr2_buffer_wipe.exit.i.pvr2_buffer_set_none.exit.i_crit_edge
  %list_lock.i.i = getelementptr inbounds %struct.pvr2_stream, ptr %54, i32 0, i32 17
  %call13.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock.i.i) #8
  tail call fastcc void @pvr2_buffer_remove(ptr noundef %46) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock.i.i, i32 noundef %call13.i.i) #8
  %signature.i143 = getelementptr inbounds %struct.pvr2_buffer, ptr %46, i32 0, i32 1
  %60 = ptrtoint ptr %signature.i143 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %signature.i143, align 4
  %61 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %stream.i.i, align 4
  %purb.i144 = getelementptr inbounds %struct.pvr2_buffer, ptr %46, i32 0, i32 9
  %62 = ptrtoint ptr %purb.i144 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %purb.i144, align 4
  tail call void @usb_free_urb(ptr noundef %63) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %64 = load i32, ptr @pvrusb2_debug, align 4
  %and.i145 = and i32 %64, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool.not.i146 = icmp eq i32 %and.i145, 0
  br i1 %tobool.not.i146, label %pvr2_buffer_set_none.exit.i.pvr2_buffer_done.exit_crit_edge, label %do.end.i148

pvr2_buffer_set_none.exit.i.pvr2_buffer_done.exit_crit_edge: ; preds = %pvr2_buffer_set_none.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_done.exit

do.end.i148:                                      ; preds = %pvr2_buffer_set_none.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %46) #12
  br label %pvr2_buffer_done.exit

pvr2_buffer_done.exit:                            ; preds = %do.end.i148, %pvr2_buffer_set_none.exit.i.pvr2_buffer_done.exit_crit_edge
  tail call void @kfree(ptr noundef %46) #8
  %65 = ptrtoint ptr %buffer_total_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %buffer_total_count, align 4
  %cmp49 = icmp ugt i32 %66, %cnt
  br i1 %cmp49, label %pvr2_buffer_done.exit.while.body50_crit_edge, label %pvr2_buffer_done.exit.while.end61_crit_edge

pvr2_buffer_done.exit.while.end61_crit_edge:      ; preds = %pvr2_buffer_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end61

pvr2_buffer_done.exit.while.body50_crit_edge:     ; preds = %pvr2_buffer_done.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body50

while.end61:                                      ; preds = %pvr2_buffer_done.exit.while.end61_crit_edge, %while.cond47.preheader.while.end61_crit_edge
  %buffer_slot_count62 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 10
  %67 = ptrtoint ptr %buffer_slot_count62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buffer_slot_count62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %68)
  %cmp63 = icmp ult i32 %spec.select, %68
  br i1 %cmp63, label %if.then64, label %while.end61.cleanup83_crit_edge

while.end61.cleanup83_crit_edge:                  ; preds = %while.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

if.then64:                                        ; preds = %while.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool66.not = icmp eq i32 %spec.select, 0
  br i1 %tobool66.not, label %if.then64.if.end74_crit_edge, label %if.then67

if.then64.if.end74_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then67:                                        ; preds = %if.then64
  %buffers68 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  %69 = ptrtoint ptr %buffers68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buffers68, align 4
  %mul69 = shl i32 %spec.select, 2
  %call70 = tail call ptr @kmemdup(ptr noundef %70, i32 noundef %mul69, i32 noundef 3264) #8
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.then67.cleanup83_crit_edge, label %if.then67.if.end74_crit_edge

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then67.cleanup83_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup83

if.end74:                                         ; preds = %if.then67.if.end74_crit_edge, %if.then64.if.end74_crit_edge
  %nb65.0 = phi ptr [ %call70, %if.then67.if.end74_crit_edge ], [ null, %if.then64.if.end74_crit_edge ]
  %buffers75 = getelementptr inbounds %struct.pvr2_stream, ptr %sp, i32 0, i32 9
  %71 = ptrtoint ptr %buffers75 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buffers75, align 4
  tail call void @kfree(ptr noundef %72) #8
  %73 = ptrtoint ptr %buffers75 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %nb65.0, ptr %buffers75, align 4
  %74 = ptrtoint ptr %buffer_slot_count62 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.select, ptr %buffer_slot_count62, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %if.end74, %if.then67.cleanup83_crit_edge, %while.end61.cleanup83_crit_edge, %if.end40.cleanup83_crit_edge, %if.then39, %while.body.cleanup83_crit_edge, %if.end29.cleanup83_crit_edge, %if.end7.i.cleanup83_crit_edge, %if.then16.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  %retval.5 = phi i32 [ 0, %entry.cleanup83_crit_edge ], [ -12, %if.then39 ], [ -12, %if.then67.cleanup83_crit_edge ], [ 0, %if.end74 ], [ 0, %while.end61.cleanup83_crit_edge ], [ -12, %if.end7.i.cleanup83_crit_edge ], [ -12, %if.then16.cleanup83_crit_edge ], [ 0, %if.end29.cleanup83_crit_edge ], [ -12, %while.body.cleanup83_crit_edge ], [ 0, %if.end40.cleanup83_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvr2_buffer_remove(ptr noundef %bp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 7
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 4
  %state = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_count = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 7
  %i_bcount = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 8
  %max_count = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %q_count = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 1
  %q_bcount = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 2
  %max_count2 = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %r_count = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 4
  %r_bcount = getelementptr inbounds %struct.pvr2_stream, ptr %1, i32 0, i32 5
  %used_count = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %sw.bb
  %bcnt.0 = phi ptr [ %r_bcount, %sw.bb3 ], [ %q_bcount, %sw.bb1 ], [ %i_bcount, %sw.bb ]
  %ccnt.0.in = phi ptr [ %used_count, %sw.bb3 ], [ %max_count2, %sw.bb1 ], [ %max_count, %sw.bb ]
  %cnt.0 = phi ptr [ %r_count, %sw.bb3 ], [ %q_count, %sw.bb1 ], [ %i_count, %sw.bb ]
  %5 = ptrtoint ptr %ccnt.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %ccnt.0 = load i32, ptr %ccnt.0.in, align 4
  %list_overhead = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_overhead) #8
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_del_init.exit_crit_edge

sw.epilog.list_del_init.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list_overhead to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list_overhead, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %list_overhead to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list_overhead, ptr %list_overhead, align 4
  %prev.i3.i = getelementptr inbounds %struct.pvr2_buffer, ptr %bp, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list_overhead, ptr %prev.i3.i, align 4
  %14 = ptrtoint ptr %cnt.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cnt.0, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %cnt.0, align 4
  %16 = ptrtoint ptr %bcnt.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bcnt.0, align 4
  %sub = sub i32 %17, %ccnt.0
  store i32 %sub, ptr %bcnt.0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %18 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %list_del_init.exit.do.end8_crit_edge, label %do.end

list_del_init.exit.do.end8_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %list_del_init.exit
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %switch.lookup, label %do.end.pvr2_buffer_state_decode.exit_crit_edge

do.end.pvr2_buffer_state_decode.exit_crit_edge:   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pvr2_buffer_state_decode.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.pvr2_buffer_remove, i32 0, i32 %20
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %pvr2_buffer_state_decode.exit

pvr2_buffer_state_decode.exit:                    ; preds = %switch.lookup, %do.end.pvr2_buffer_state_decode.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.44, %do.end.pvr2_buffer_state_decode.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %retval.0.i, i32 noundef %sub, i32 noundef %dec) #12
  br label %do.end8

do.end8:                                          ; preds = %pvr2_buffer_state_decode.exit, %list_del_init.exit.do.end8_crit_edge
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 465, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pvr2_stream_create._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pvr2_stream_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 473, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pvr2_stream_destroy._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @pvr2_stream_destroy._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 647, i32 4}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pvr2_buffer_set_buffer._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @pvr2_buffer_set_buffer._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @pvr2_stream_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 400, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pvr2_stream_init.__key.8, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 401, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 289, i32 2}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pvr2_stream_buffer_count._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @pvr2_stream_buffer_count._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 254, i32 2}
!29 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pvr2_buffer_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @pvr2_buffer_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 277, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pvr2_buffer_done._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @pvr2_buffer_done._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 155, i32 2}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pvr2_buffer_set_none._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @pvr2_buffer_set_none._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 143, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pvr2_buffer_remove._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pvr2_buffer_remove._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 357, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pvr2_stream_achieve_buffer_count._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pvr2_stream_achieve_buffer_count._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 198, i32 2}
!54 = !{ptr @pvr2_buffer_set_idle._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pvr2_buffer_set_idle._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 209, i32 2}
!58 = !{ptr @pvr2_buffer_set_idle._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pvr2_buffer_set_idle._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 222, i32 2}
!62 = !{ptr @pvr2_buffer_set_queued._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pvr2_buffer_set_queued._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @pvr2_buffer_set_queued._entry.27, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 233, i32 2}
!66 = !{ptr @pvr2_buffer_set_queued._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 424, i32 2}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @buffer_complete._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @buffer_complete._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 436, i32 4}
!74 = !{ptr @buffer_complete._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @buffer_complete._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 446, i32 3}
!78 = !{ptr @buffer_complete._entry.34, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @buffer_complete._entry_ptr.36, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 172, i32 2}
!82 = !{ptr @pvr2_buffer_set_ready._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pvr2_buffer_set_ready._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @pvr2_buffer_set_ready._entry.38, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 184, i32 2}
!86 = !{ptr @pvr2_buffer_set_ready._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 90, i32 38}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 91, i32 38}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 92, i32 40}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 93, i32 39}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-io.c", i32 95, i32 9}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
