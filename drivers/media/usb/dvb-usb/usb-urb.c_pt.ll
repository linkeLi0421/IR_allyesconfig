; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/usb-urb.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/usb-urb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.103 }
%union.anon.103 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@dvb_usb_debug = external dso_local local_unnamed_addr global i32, align 4
@usb_urb_kill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"killing URB no. %d.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_urb_kill\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/dvb-usb/usb-urb.c\00", [60 x i8] zeroinitializer }, align 32
@usb_urb_kill._entry_ptr = internal global ptr @usb_urb_kill._entry, section ".printk_index", align 4
@usb_urb_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"submitting URB no. %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_urb_submit\00", [17 x i8] zeroinitializer }, align 32
@usb_urb_submit._entry_ptr = internal global ptr @usb_urb_submit._entry, section ".printk_index", align 4
@usb_urb_submit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013dvb-usb: could not submit URB no. %d - get them all back\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_urb_submit._entry_ptr.7 = internal global ptr @usb_urb_submit._entry.5, section ".printk_index", align 4
@usb_urb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013dvb-usb: there is no data callback - this doesn't make sense.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_urb_init\00", [19 x i8] zeroinitializer }, align 32
@usb_urb_init._entry_ptr = internal global ptr @usb_urb_init._entry, section ".printk_index", align 4
@usb_urb_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013dvb-usb: unknown URB-type for data transfer.\0A\00", [48 x i8] zeroinitializer }, align 32
@usb_urb_init._entry_ptr.12 = internal global ptr @usb_urb_init._entry.10, section ".printk_index", align 4
@usb_urb_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"freeing URB no. %d.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_urb_exit\00", [19 x i8] zeroinitializer }, align 32
@usb_urb_exit._entry_ptr = internal global ptr @usb_urb_exit._entry, section ".printk_index", align 4
@usb_bulk_urb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"not enough memory for urb_alloc_urb!.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_bulk_urb_init\00", [46 x i8] zeroinitializer }, align 32
@usb_bulk_urb_init._entry_ptr = internal global ptr @usb_bulk_urb_init._entry, section ".printk_index", align 4
@usb_allocate_stream_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"all in all I will use %lu bytes for streaming\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_allocate_stream_buffers\00", [36 x i8] zeroinitializer }, align 32
@usb_allocate_stream_buffers._entry_ptr = internal global ptr @usb_allocate_stream_buffers._entry, section ".printk_index", align 4
@usb_allocate_stream_buffers._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"allocating buffer %d\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_allocate_stream_buffers._entry_ptr.21 = internal global ptr @usb_allocate_stream_buffers._entry.19, section ".printk_index", align 4
@usb_allocate_stream_buffers._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"not enough memory for urb-buffer allocation.\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_allocate_stream_buffers._entry_ptr.24 = internal global ptr @usb_allocate_stream_buffers._entry.22, section ".printk_index", align 4
@usb_allocate_stream_buffers._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"buffer %d: %p (dma: %Lu)\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_allocate_stream_buffers._entry_ptr.27 = internal global ptr @usb_allocate_stream_buffers._entry.25, section ".printk_index", align 4
@usb_allocate_stream_buffers._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"allocation successful\0A\00", [41 x i8] zeroinitializer }, align 32
@usb_allocate_stream_buffers._entry_ptr.30 = internal global ptr @usb_allocate_stream_buffers._entry.28, section ".printk_index", align 4
@usb_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"'%s' urb completed. status: %d, length: %d/%d, pack_num: %d, errors: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_urb_complete\00", [47 x i8] zeroinitializer }, align 32
@usb_urb_complete._entry_ptr = internal global ptr @usb_urb_complete._entry, section ".printk_index", align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isoc\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@usb_urb_complete._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"urb completion error %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_urb_complete._entry_ptr.37 = internal global ptr @usb_urb_complete._entry.35, section ".printk_index", align 4
@usb_urb_complete._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.32, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iso frame descriptor has an error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@usb_urb_complete._entry_ptr.40 = internal global ptr @usb_urb_complete._entry.38, section ".printk_index", align 4
@usb_urb_complete._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.32, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@usb_urb_complete._entry_ptr.43 = internal global ptr @usb_urb_complete._entry.41, section ".printk_index", align 4
@usb_urb_complete._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.32, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@usb_urb_complete._entry_ptr.46 = internal global ptr @usb_urb_complete._entry.44, section ".printk_index", align 4
@usb_urb_complete._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.32, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013dvb-usb: unknown endpoint type in completion handler.\0A\00", [39 x i8] zeroinitializer }, align 32
@usb_urb_complete._entry_ptr.49 = internal global ptr @usb_urb_complete._entry.47, section ".printk_index", align 4
@usb_isoc_urb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"not enough memory for urb_alloc_urb!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_isoc_urb_init\00", [46 x i8] zeroinitializer }, align 32
@usb_isoc_urb_init._entry_ptr = internal global ptr @usb_isoc_urb_init._entry, section ".printk_index", align 4
@usb_free_stream_buffers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"freeing buffer %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_free_stream_buffers\00", [40 x i8] zeroinitializer }, align 32
@usb_free_stream_buffers._entry_ptr = internal global ptr @usb_free_stream_buffers._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 70, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 83, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 85, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 223, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 233, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 246, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 150, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 116, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 119, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 123, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 127, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 133, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 22, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 36, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 46, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 53, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 60, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 183, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [39 x i8] c"../drivers/media/usb/dvb-usb/usb-urb.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 99, i32 4 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @usb_allocate_stream_buffers._entry, ptr @usb_allocate_stream_buffers._entry.19, ptr @usb_allocate_stream_buffers._entry.22, ptr @usb_allocate_stream_buffers._entry.25, ptr @usb_allocate_stream_buffers._entry.28, ptr @usb_allocate_stream_buffers._entry_ptr, ptr @usb_allocate_stream_buffers._entry_ptr.21, ptr @usb_allocate_stream_buffers._entry_ptr.24, ptr @usb_allocate_stream_buffers._entry_ptr.27, ptr @usb_allocate_stream_buffers._entry_ptr.30, ptr @usb_bulk_urb_init._entry, ptr @usb_bulk_urb_init._entry_ptr, ptr @usb_free_stream_buffers._entry, ptr @usb_free_stream_buffers._entry_ptr, ptr @usb_isoc_urb_init._entry, ptr @usb_isoc_urb_init._entry_ptr, ptr @usb_urb_complete._entry, ptr @usb_urb_complete._entry.35, ptr @usb_urb_complete._entry.38, ptr @usb_urb_complete._entry.41, ptr @usb_urb_complete._entry.44, ptr @usb_urb_complete._entry.47, ptr @usb_urb_complete._entry_ptr, ptr @usb_urb_complete._entry_ptr.37, ptr @usb_urb_complete._entry_ptr.40, ptr @usb_urb_complete._entry_ptr.43, ptr @usb_urb_complete._entry_ptr.46, ptr @usb_urb_complete._entry_ptr.49, ptr @usb_urb_exit._entry, ptr @usb_urb_exit._entry_ptr, ptr @usb_urb_init._entry, ptr @usb_urb_init._entry.10, ptr @usb_urb_init._entry_ptr, ptr @usb_urb_init._entry_ptr.12, ptr @usb_urb_kill._entry, ptr @usb_urb_kill._entry_ptr, ptr @usb_urb_submit._entry, ptr @usb_urb_submit._entry.5, ptr @usb_urb_submit._entry_ptr, ptr @usb_urb_submit._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_kill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_submit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_bulk_urb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_allocate_stream_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_allocate_stream_buffers._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_allocate_stream_buffers._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_allocate_stream_buffers._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_allocate_stream_buffers._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_complete._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_complete._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_complete._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_complete._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_complete._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_isoc_urb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_free_stream_buffers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_urb_kill(ptr nocapture noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs_submitted = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_submitted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.end3.do.body_crit_edge, %entry.do.body_crit_edge
  %i.011 = phi i32 [ %inc, %do.end3.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %2 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end3_crit_edge, label %do.end

do.body.do.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end3

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %i.011) #6
  br label %do.end3

do.end3:                                          ; preds = %do.end, %do.body.do.end3_crit_edge
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.011
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #3
  %inc = add nuw nsw i32 %i.011, 1
  %5 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %urbs_submitted, align 4
  %cmp = icmp slt i32 %inc, %6
  br i1 %cmp, label %do.end3.do.body_crit_edge, label %do.end3.for.end_crit_edge

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

do.end3.do.body_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.end:                                          ; preds = %do.end3.for.end_crit_edge, %entry.for.end_crit_edge
  %7 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %urbs_submitted, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_urb_submit(ptr nocapture noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs_initialized = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 9
  %0 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24 = icmp sgt i32 %1, 0
  br i1 %cmp24, label %do.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %urbs_submitted = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %if.end13.do.body_crit_edge, %do.body.lr.ph
  %i.025 = phi i32 [ 0, %do.body.lr.ph ], [ %inc14, %if.end13.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %2 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end3_crit_edge, label %do.end

do.body.do.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end3

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %i.025) #6
  br label %do.end3

do.end3:                                          ; preds = %do.end, %do.body.do.end3_crit_edge
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.025
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @usb_submit_urb(ptr noundef %4, i32 noundef 2592) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end13, label %do.end9

do.end9:                                          ; preds = %do.end3
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.025) #6
  %5 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %urbs_submitted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10.i = icmp sgt i32 %6, 0
  br i1 %cmp10.i, label %do.end9.do.body.i_crit_edge, label %do.end9.usb_urb_kill.exit_crit_edge

do.end9.usb_urb_kill.exit_crit_edge:              ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_urb_kill.exit

do.end9.do.body.i_crit_edge:                      ; preds = %do.end9
  br label %do.body.i

do.body.i:                                        ; preds = %do.end3.i.do.body.i_crit_edge, %do.end9.do.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %do.end3.i.do.body.i_crit_edge ], [ 0, %do.end9.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %7 = load i32, ptr @dvb_usb_debug, align 4
  %and.i = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end3.i_crit_edge, label %do.end.i

do.body.i.do.end3.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end3.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %i.011.i) #6
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.body.i.do.end3.i_crit_edge
  %arrayidx.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.011.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #3
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %10 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %urbs_submitted, align 4
  %cmp.i = icmp slt i32 %inc.i, %11
  br i1 %cmp.i, label %do.end3.i.do.body.i_crit_edge, label %do.end3.i.usb_urb_kill.exit_crit_edge

do.end3.i.usb_urb_kill.exit_crit_edge:            ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_urb_kill.exit

do.end3.i.do.body.i_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

usb_urb_kill.exit:                                ; preds = %do.end3.i.usb_urb_kill.exit_crit_edge, %do.end9.usb_urb_kill.exit_crit_edge
  %12 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %urbs_submitted, align 4
  br label %cleanup

if.end13:                                         ; preds = %do.end3
  %13 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %urbs_submitted, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %urbs_submitted, align 4
  %inc14 = add nuw nsw i32 %i.025, 1
  %15 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %urbs_initialized, align 4
  %cmp = icmp slt i32 %inc14, %16
  br i1 %cmp, label %if.end13.do.body_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %usb_urb_kill.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %usb_urb_kill.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_urb_init(ptr noundef %stream, ptr noundef readonly %props) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %stream, null
  %cmp1 = icmp eq ptr %props, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %props2 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %props2, ptr %props, i32 24)
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stream, align 4
  %endpoint = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %endpoint, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %shl.i = shl i32 %6, 8
  %shl1.i = shl i32 %4, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or5 = or i32 %or.i, -1073741696
  %call6 = tail call i32 @usb_clear_halt(ptr noundef %2, i32 noundef %or5) #3
  %complete = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 3
  %7 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %complete, align 4
  %cmp7 = icmp eq ptr %8, null
  br i1 %cmp7, label %if.end.return.sink.split_crit_edge, label %if.end10

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

if.end10:                                         ; preds = %if.end
  %9 = ptrtoint ptr %props2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %props2, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end10.return.sink.split_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
  ]

if.end10.return.sink.split_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %return.sink.split

sw.bb:                                            ; preds = %if.end10
  %count.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i, align 4
  %u.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %u.i, align 4
  %call.i = tail call fastcc i32 @usb_allocate_stream_buffers(ptr noundef nonnull %stream, i32 noundef %13, i32 noundef %15) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %for.cond.preheader.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

for.cond.preheader.i:                             ; preds = %sw.bb
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp473.i = icmp sgt i32 %17, 0
  br i1 %cmp473.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.return_crit_edge

for.cond.preheader.i.return_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %urbs_initialized.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.074.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc39.i, %if.end21.i.for.body.i_crit_edge ]
  %call5.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #3
  %arrayidx.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.074.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end21.i

do.body.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %19 = load i32, ptr @dvb_usb_debug, align 4
  %and.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %do.body.i.do.end15.i_crit_edge, label %do.end.i

do.body.i.do.end15.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end15.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #6
  br label %do.end15.i

do.end15.i:                                       ; preds = %do.end.i, %do.body.i.do.end15.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.074.i)
  %cmp1775.not.i = icmp eq i32 %i.074.i, 0
  br i1 %cmp1775.not.i, label %do.end15.i.return_crit_edge, label %do.end15.i.for.body18.i_crit_edge

do.end15.i.for.body18.i_crit_edge:                ; preds = %do.end15.i
  br label %for.body18.i

do.end15.i.return_crit_edge:                      ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %do.end15.i.for.body18.i_crit_edge
  %j.076.i = phi i32 [ %inc.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %do.end15.i.for.body18.i_crit_edge ]
  %arrayidx20.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %j.076.i
  %20 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx20.i, align 4
  tail call void @usb_free_urb(ptr noundef %21) #3
  %inc.i = add nuw nsw i32 %j.076.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.074.i
  br i1 %exitcond.not.i, label %for.body18.i.return_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body18.i

for.body18.i.return_crit_edge:                    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end21.i:                                       ; preds = %for.body.i
  %22 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stream, align 4
  %24 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %endpoint, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 8
  %shl.i.i = shl i32 %27, 8
  %shl1.i.i = shl i32 %25, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or27.i = or i32 %or.i.i, -1073741696
  %arrayidx28.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %i.074.i
  %28 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx28.i, align 4
  %30 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %u.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 8
  %32 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %23, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 10
  %33 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or27.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 14
  %34 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %29, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 19
  %35 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %31, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 28
  %36 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @usb_urb_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call5.i, i32 0, i32 27
  %37 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %stream, ptr %context4.i.i, align 4
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %transfer_flags.i, align 4
  %arrayidx34.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 8, i32 %i.074.i
  %41 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx34.i, align 4
  %43 = load ptr, ptr %arrayidx.i, align 4
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %transfer_dma.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %transfer_dma.i, align 4
  %45 = ptrtoint ptr %urbs_initialized.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %urbs_initialized.i, align 4
  %inc37.i = add i32 %46, 1
  store i32 %inc37.i, ptr %urbs_initialized.i, align 4
  %inc39.i = add nuw nsw i32 %i.074.i, 1
  %47 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count.i, align 4
  %cmp4.i = icmp slt i32 %inc39.i, %48
  br i1 %cmp4.i, label %if.end21.i.for.body.i_crit_edge, label %if.end21.i.return_crit_edge

if.end21.i.return_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

sw.bb13:                                          ; preds = %if.end10
  %count.i28 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %count.i28 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %count.i28, align 4
  %u.i29 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3
  %framesize.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3, i32 0, i32 1
  %51 = ptrtoint ptr %framesize.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %framesize.i, align 4
  %53 = ptrtoint ptr %u.i29 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %u.i29, align 4
  %mul.i = mul i32 %54, %52
  %call.i30 = tail call fastcc i32 @usb_allocate_stream_buffers(ptr noundef nonnull %stream, i32 noundef %50, i32 noundef %mul.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp.i31, label %sw.bb13.return_crit_edge, label %for.cond.preheader.i32

sw.bb13.return_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

for.cond.preheader.i32:                           ; preds = %sw.bb13
  %55 = ptrtoint ptr %count.i28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp6119.i = icmp sgt i32 %56, 0
  br i1 %cmp6119.i, label %for.body.lr.ph.i35, label %for.cond.preheader.i32.return_crit_edge

for.cond.preheader.i32.return_crit_edge:          ; preds = %for.cond.preheader.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

for.body.lr.ph.i35:                               ; preds = %for.cond.preheader.i32
  %interval.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3, i32 0, i32 2
  %buf_size.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 6
  %urbs_initialized.i34 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 9
  br label %for.body.i38

for.cond.i:                                       ; preds = %cleanup.i
  %inc62.i = add nuw nsw i32 %i.0120.i, 1
  %57 = ptrtoint ptr %count.i28 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count.i28, align 4
  %cmp6.i = icmp slt i32 %inc62.i, %58
  br i1 %cmp6.i, label %for.cond.i.for.body.i38_crit_edge, label %for.cond.i.return_crit_edge

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

for.cond.i.for.body.i38_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.cond.i.for.body.i38_crit_edge, %for.body.lr.ph.i35
  %i.0120.i = phi i32 [ 0, %for.body.lr.ph.i35 ], [ %inc62.i, %for.cond.i.for.body.i38_crit_edge ]
  %59 = ptrtoint ptr %u.i29 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %u.i29, align 4
  %call10.i = tail call ptr @usb_alloc_urb(i32 noundef %60, i32 noundef 3264) #3
  %arrayidx.i36 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.0120.i
  %61 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call10.i, ptr %arrayidx.i36, align 4
  %tobool.not.i37 = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i37, label %do.body.i40, label %if.end26.i

do.body.i40:                                      ; preds = %for.body.i38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %62 = load i32, ptr @dvb_usb_debug, align 4
  %and.i39 = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool14.not.i = icmp eq i32 %and.i39, 0
  br i1 %tobool14.not.i, label %do.body.i40.do.end20.i_crit_edge, label %do.end.i41

do.body.i40.do.end20.i_crit_edge:                 ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end20.i

do.end.i41:                                       ; preds = %do.body.i40
  call void @__sanitizer_cov_trace_pc() #5
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #6
  br label %do.end20.i

do.end20.i:                                       ; preds = %do.end.i41, %do.body.i40.do.end20.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0120.i)
  %cmp22117.not.i = icmp eq i32 %i.0120.i, 0
  br i1 %cmp22117.not.i, label %do.end20.i.return_crit_edge, label %do.end20.i.for.body23.i_crit_edge

do.end20.i.for.body23.i_crit_edge:                ; preds = %do.end20.i
  br label %for.body23.i

do.end20.i.return_crit_edge:                      ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %do.end20.i.for.body23.i_crit_edge
  %j.0118.i = phi i32 [ %inc.i42, %for.body23.i.for.body23.i_crit_edge ], [ 0, %do.end20.i.for.body23.i_crit_edge ]
  %arrayidx25.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %j.0118.i
  %63 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx25.i, align 4
  tail call void @usb_free_urb(ptr noundef %64) #3
  %inc.i42 = add nuw nsw i32 %j.0118.i, 1
  %exitcond.not.i43 = icmp eq i32 %inc.i42, %i.0120.i
  br i1 %exitcond.not.i43, label %for.body23.i.cleanup.i_crit_edge, label %for.body23.i.for.body23.i_crit_edge

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body23.i

for.body23.i.cleanup.i_crit_edge:                 ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.i

if.end26.i:                                       ; preds = %for.body.i38
  %65 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %stream, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 8
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %dev.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 27
  %68 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %stream, ptr %context.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 28
  %69 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @usb_urb_complete, ptr %complete.i, align 4
  %70 = load ptr, ptr %stream, align 4
  %71 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %endpoint, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 8
  %shl.i.i44 = shl i32 %74, 8
  %shl1.i.i45 = shl i32 %72, 15
  %or.i.i46 = or i32 %shl1.i.i45, %shl.i.i44
  %or32.i = or i32 %or.i.i46, 128
  %pipe.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 10
  %75 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or32.i, ptr %pipe.i, align 4
  %transfer_flags.i47 = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 13
  %76 = ptrtoint ptr %transfer_flags.i47 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 6, ptr %transfer_flags.i47, align 4
  %77 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %interval.i, align 4
  %interval35.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 25
  %79 = ptrtoint ptr %interval35.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %interval35.i, align 4
  %80 = ptrtoint ptr %u.i29 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %u.i29, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 24
  %82 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %number_of_packets.i, align 4
  %83 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %buf_size.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 19
  %85 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %transfer_buffer_length.i, align 4
  %arrayidx39.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %i.0120.i
  %86 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx39.i, align 4
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 14
  %88 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %transfer_buffer.i, align 4
  %arrayidx40.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 8, i32 %i.0120.i
  %89 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx40.i, align 4
  %transfer_dma.i48 = getelementptr inbounds %struct.urb, ptr %call10.i, i32 0, i32 15
  %91 = ptrtoint ptr %transfer_dma.i48 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %transfer_dma.i48, align 4
  %92 = load i32, ptr %u.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp45114.i = icmp sgt i32 %92, 0
  br i1 %cmp45114.i, label %if.end26.i.for.body46.i_crit_edge, label %if.end26.i.for.end58.i_crit_edge

if.end26.i.for.end58.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end58.i

if.end26.i.for.body46.i_crit_edge:                ; preds = %if.end26.i
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %if.end26.i.for.body46.i_crit_edge
  %frame_offset.0116.i = phi i32 [ %add.i, %for.body46.i.for.body46.i_crit_edge ], [ 0, %if.end26.i.for.body46.i_crit_edge ]
  %j.1115.i = phi i32 [ %inc57.i, %for.body46.i.for.body46.i_crit_edge ], [ 0, %if.end26.i.for.body46.i_crit_edge ]
  %arrayidx47.i = getelementptr %struct.urb, ptr %call10.i, i32 0, i32 29, i32 %j.1115.i
  %93 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %frame_offset.0116.i, ptr %arrayidx47.i, align 4
  %94 = ptrtoint ptr %framesize.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %framesize.i, align 4
  %length.i = getelementptr %struct.urb, ptr %call10.i, i32 0, i32 29, i32 %j.1115.i, i32 1
  %96 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %length.i, align 4
  %97 = load i32, ptr %framesize.i, align 4
  %add.i = add i32 %97, %frame_offset.0116.i
  %inc57.i = add nuw nsw i32 %j.1115.i, 1
  %98 = ptrtoint ptr %u.i29 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %u.i29, align 4
  %cmp45.i = icmp slt i32 %inc57.i, %99
  br i1 %cmp45.i, label %for.body46.i.for.body46.i_crit_edge, label %for.body46.i.for.end58.i_crit_edge

for.body46.i.for.end58.i_crit_edge:               ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end58.i

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body46.i

for.end58.i:                                      ; preds = %for.body46.i.for.end58.i_crit_edge, %if.end26.i.for.end58.i_crit_edge
  %100 = ptrtoint ptr %urbs_initialized.i34 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %urbs_initialized.i34, align 4
  %inc59.i = add i32 %101, 1
  store i32 %inc59.i, ptr %urbs_initialized.i34, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.end58.i, %for.body23.i.cleanup.i_crit_edge
  br i1 %tobool.not.i37, label %cleanup.i.return_crit_edge, label %for.cond.i

cleanup.i.return_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return.sink.split:                                ; preds = %if.end10.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.8, %if.end.return.sink.split_crit_edge ], [ @.str.11, %if.end10.return.sink.split_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.11.sink) #6
  br label %return

return:                                           ; preds = %return.sink.split, %cleanup.i.return_crit_edge, %do.end20.i.return_crit_edge, %for.cond.i.return_crit_edge, %for.cond.preheader.i32.return_crit_edge, %sw.bb13.return_crit_edge, %if.end21.i.return_crit_edge, %for.body18.i.return_crit_edge, %do.end15.i.return_crit_edge, %for.cond.preheader.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call.i, %sw.bb.return_crit_edge ], [ -12, %do.end15.i.return_crit_edge ], [ 0, %for.cond.preheader.i.return_crit_edge ], [ %call.i30, %sw.bb13.return_crit_edge ], [ 0, %for.cond.preheader.i32.return_crit_edge ], [ -22, %return.sink.split ], [ -12, %for.body18.i.return_crit_edge ], [ 0, %if.end21.i.return_crit_edge ], [ 0, %for.cond.i.return_crit_edge ], [ -12, %cleanup.i.return_crit_edge ], [ -12, %do.end20.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_urb_exit(ptr nocapture noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs_submitted.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_submitted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.i = icmp sgt i32 %1, 0
  br i1 %cmp10.i, label %entry.do.body.i_crit_edge, label %entry.usb_urb_kill.exit_crit_edge

entry.usb_urb_kill.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_urb_kill.exit

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %do.end3.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %do.end3.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %2 = load i32, ptr @dvb_usb_debug, align 4
  %and.i = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end3.i_crit_edge, label %do.end.i

do.body.i.do.end3.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end3.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %i.011.i) #6
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.body.i.do.end3.i_crit_edge
  %arrayidx.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.011.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #3
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %5 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %urbs_submitted.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %6
  br i1 %cmp.i, label %do.end3.i.do.body.i_crit_edge, label %do.end3.i.usb_urb_kill.exit_crit_edge

do.end3.i.usb_urb_kill.exit_crit_edge:            ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_urb_kill.exit

do.end3.i.do.body.i_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

usb_urb_kill.exit:                                ; preds = %do.end3.i.usb_urb_kill.exit_crit_edge, %entry.usb_urb_kill.exit_crit_edge
  %7 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %urbs_submitted.i, align 4
  %urbs_initialized = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 9
  %8 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urbs_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp26 = icmp sgt i32 %9, 0
  br i1 %cmp26, label %usb_urb_kill.exit.for.body_crit_edge, label %usb_urb_kill.exit.for.end_crit_edge

usb_urb_kill.exit.for.end_crit_edge:              ; preds = %usb_urb_kill.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

usb_urb_kill.exit.for.body_crit_edge:             ; preds = %usb_urb_kill.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %usb_urb_kill.exit.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %usb_urb_kill.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.027
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %11, null
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %12 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %i.027) #6
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %14) #3
  br label %for.inc

for.inc:                                          ; preds = %do.end6, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %15 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %urbs_initialized, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %usb_urb_kill.exit.for.end_crit_edge
  %17 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %urbs_initialized, align 4
  %state.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 2
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i, align 4
  %and.i21 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.not.i22 = icmp eq i32 %and.i21, 0
  br i1 %tobool.not.i22, label %for.end.usb_free_stream_buffers.exit_crit_edge, label %while.cond.preheader.i

for.end.usb_free_stream_buffers.exit_crit_edge:   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_free_stream_buffers.exit

while.cond.preheader.i:                           ; preds = %for.end
  %buf_num.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 5
  %20 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not1.i = icmp eq i32 %21, 0
  br i1 %tobool1.not1.i, label %while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_free_stream_buffers.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %buf_size.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %do.end8.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %22 = phi i32 [ %21, %while.body.lr.ph.i ], [ %36, %do.end8.i.while.body.i_crit_edge ]
  %dec.i = add i32 %22, -1
  %23 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dec.i, ptr %buf_num.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %24 = load i32, ptr @dvb_usb_debug, align 4
  %and3.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %while.body.i.do.end8.i_crit_edge, label %do.end.i24

while.body.i.do.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8.i

do.end.i24:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %dec.i) #6
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i24, %while.body.i.do.end8.i_crit_edge
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stream, align 4
  %27 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %buf_size.i, align 4
  %29 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_num.i, align 4
  %arrayidx.i25 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %30
  %31 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i25, align 4
  %arrayidx11.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 8, i32 %30
  %33 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx11.i, align 4
  tail call void @usb_free_coherent(ptr noundef %26, i32 noundef %28, ptr noundef %32, i32 noundef %34) #3
  %35 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_num.i, align 4
  %tobool1.not.i = icmp eq i32 %36, 0
  br i1 %tobool1.not.i, label %do.end8.i.usb_free_stream_buffers.exit_crit_edge, label %do.end8.i.while.body.i_crit_edge

do.end8.i.while.body.i_crit_edge:                 ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

do.end8.i.usb_free_stream_buffers.exit_crit_edge: ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_free_stream_buffers.exit

usb_free_stream_buffers.exit:                     ; preds = %do.end8.i.usb_free_stream_buffers.exit_crit_edge, %while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge, %for.end.usb_free_stream_buffers.exit_crit_edge
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i, align 4
  %and14.i = and i32 %38, -2
  store i32 %and14.i, ptr %state.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_allocate_stream_buffers(ptr noundef %stream, i32 noundef %num, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_num = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 5
  %0 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buf_num, align 4
  %buf_size = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 6
  %1 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %buf_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %2 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %mul = mul i32 %size, %num
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %mul) #6
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %3 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp88 = icmp sgt i32 %num, 0
  br i1 %cmp88, label %do.body5.lr.ph, label %do.end2.do.body55_crit_edge

do.end2.do.body55_crit_edge:                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body55

do.body5.lr.ph:                                   ; preds = %do.end2
  %state = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 2
  br label %do.body5

do.body5:                                         ; preds = %do.end50.do.body5_crit_edge, %do.body5.lr.ph
  %storemerge89 = phi i32 [ 0, %do.body5.lr.ph ], [ %inc, %do.end50.do.body5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %4 = load i32, ptr @dvb_usb_debug, align 4
  %and6 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end15_crit_edge, label %do.end10

do.body5.do.end15_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end15

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %storemerge89) #6
  br label %do.end15

do.end15:                                         ; preds = %do.end10, %do.body5.do.end15_crit_edge
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream, align 4
  %7 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_num, align 4
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 8, i32 %8
  %call17 = tail call ptr @usb_alloc_coherent(ptr noundef %6, i32 noundef %size, i32 noundef 3264, ptr noundef %arrayidx) #3
  %9 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_num, align 4
  %arrayidx19 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %10
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %arrayidx19, align 4
  %cmp20 = icmp eq ptr %call17, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %12 = load i32, ptr @dvb_usb_debug, align 4
  %and23 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %cmp20, label %do.body22, label %do.body34

do.body22:                                        ; preds = %do.end15
  br i1 %tobool24.not, label %do.body22.do.end31_crit_edge, label %do.end27

do.body22.do.end31_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end31

do.end27:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #5
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #6
  br label %do.end31

do.end31:                                         ; preds = %do.end27, %do.body22.do.end31_crit_edge
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end31.usb_free_stream_buffers.exit_crit_edge, label %while.cond.preheader.i

do.end31.usb_free_stream_buffers.exit_crit_edge:  ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_free_stream_buffers.exit

while.cond.preheader.i:                           ; preds = %do.end31
  %15 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not1.i = icmp eq i32 %16, 0
  br i1 %tobool1.not1.i, label %while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_free_stream_buffers.exit

while.body.i:                                     ; preds = %do.end8.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %17 = phi i32 [ %31, %do.end8.i.while.body.i_crit_edge ], [ %16, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i32 %17, -1
  %18 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dec.i, ptr %buf_num, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %19 = load i32, ptr @dvb_usb_debug, align 4
  %and3.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %while.body.i.do.end8.i_crit_edge, label %do.end.i

while.body.i.do.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end8.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %dec.i) #6
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i, %while.body.i.do.end8.i_crit_edge
  %20 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stream, align 4
  %22 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buf_size, align 4
  %24 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_num, align 4
  %arrayidx.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx11.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 8, i32 %25
  %28 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx11.i, align 4
  tail call void @usb_free_coherent(ptr noundef %21, i32 noundef %23, ptr noundef %27, i32 noundef %29) #3
  %30 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buf_num, align 4
  %tobool1.not.i = icmp eq i32 %31, 0
  br i1 %tobool1.not.i, label %do.end8.i.usb_free_stream_buffers.exit_crit_edge, label %do.end8.i.while.body.i_crit_edge

do.end8.i.while.body.i_crit_edge:                 ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

do.end8.i.usb_free_stream_buffers.exit_crit_edge: ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %usb_free_stream_buffers.exit

usb_free_stream_buffers.exit:                     ; preds = %do.end8.i.usb_free_stream_buffers.exit_crit_edge, %while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge, %do.end31.usb_free_stream_buffers.exit_crit_edge
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 4
  %and14.i = and i32 %33, -2
  store i32 %and14.i, ptr %state, align 4
  br label %return

do.body34:                                        ; preds = %do.end15
  br i1 %tobool24.not, label %do.body34.do.end50_crit_edge, label %do.end39

do.body34.do.end50_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end50

do.end39:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #5
  %34 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_num, align 4
  %arrayidx44 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %35
  %36 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx44, align 4
  %arrayidx47 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 8, i32 %35
  %38 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx47, align 4
  %conv = zext i32 %39 to i64
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %35, ptr noundef %37, i64 noundef %conv) #6
  br label %do.end50

do.end50:                                         ; preds = %do.end39, %do.body34.do.end50_crit_edge
  %40 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_num, align 4
  %arrayidx53 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %41
  %42 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx53, align 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 %size)
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 4
  %or = or i32 %46, 1
  store i32 %or, ptr %state, align 4
  %47 = load i32, ptr %buf_num, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %buf_num, align 4
  %cmp = icmp slt i32 %inc, %num
  br i1 %cmp, label %do.end50.do.body5_crit_edge, label %do.end50.do.body55_crit_edge

do.end50.do.body55_crit_edge:                     ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body55

do.end50.do.body5_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body5

do.body55:                                        ; preds = %do.end50.do.body55_crit_edge, %do.end2.do.body55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %48 = load i32, ptr @dvb_usb_debug, align 4
  %and56 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body55.return_crit_edge, label %do.end60

do.body55.return_crit_edge:                       ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end60:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #5
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #6
  br label %return

return:                                           ; preds = %do.end60, %do.body55.return_crit_edge, %usb_free_stream_buffers.exit
  %retval.0 = phi i32 [ -12, %usb_free_stream_buffers.exit ], [ 0, %do.body55.return_crit_edge ], [ 0, %do.end60 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_urb_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %3, 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %4 = load i32, ptr @dvb_usb_debug, align 4
  %and1 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cmp = icmp ult i32 %3, 1073741824
  %cond = select i1 %cmp, ptr @.str.33, ptr @.str.34
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transfer_buffer_length, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %11 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number_of_packets, align 4
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %13 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error_count, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull %cond, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #6
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %status5 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %15 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status5, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %16, label %do.body7 [
    i32 0, label %do.end4.sw.epilog_crit_edge
    i32 -110, label %do.end4.sw.epilog_crit_edge151
    i32 -104, label %do.end4.cleanup_crit_edge
    i32 -2, label %do.end4.cleanup_crit_edge152
    i32 -108, label %do.end4.cleanup_crit_edge153
  ]

do.end4.cleanup_crit_edge153:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end4.cleanup_crit_edge152:                     ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end4.sw.epilog_crit_edge151:                   ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.end4.sw.epilog_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body7:                                         ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %18 = load i32, ptr @dvb_usb_debug, align 4
  %and8 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.sw.epilog_crit_edge, label %do.end13

do.body7.sw.epilog_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %16) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %do.body7.sw.epilog_crit_edge, %do.end4.sw.epilog_crit_edge, %do.end4.sw.epilog_crit_edge151
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_buffer, align 4
  %21 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %shr, label %do.end101 [
    i32 0, label %for.cond.preheader
    i32 3, label %sw.bb90
  ]

for.cond.preheader:                               ; preds = %sw.epilog
  %number_of_packets21 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %22 = ptrtoint ptr %number_of_packets21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number_of_packets21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp22147 = icmp sgt i32 %23, 0
  br i1 %cmp22147, label %for.body.lr.ph, label %for.cond.preheader.do.body62.preheader_crit_edge

for.cond.preheader.do.body62.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body62.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %complete = getelementptr inbounds %struct.usb_data_stream, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %for.body.lr.ph
  %i.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end52.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0148
  %status23 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0148, i32 3
  %24 = ptrtoint ptr %status23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp24.not = icmp eq i32 %25, 0
  br i1 %cmp24.not, label %if.else, label %do.body26

do.body26:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %26 = load i32, ptr @dvb_usb_debug, align 4
  %and27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.if.end52_crit_edge, label %do.end32

do.body26.if.end52_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #5
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %25) #6
  br label %if.end52

if.else:                                          ; preds = %for.body
  %actual_length43 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0148, i32 2
  %27 = ptrtoint ptr %actual_length43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_length43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp44.not = icmp eq i32 %28, 0
  br i1 %cmp44.not, label %if.else.if.end52_crit_edge, label %if.then45

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end52

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %complete, align 4
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %32
  tail call void %30(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %28) #3
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %if.else.if.end52_crit_edge, %do.end32, %do.body26.if.end52_crit_edge
  %33 = ptrtoint ptr %status23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %status23, align 4
  %actual_length58 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0148, i32 2
  %34 = ptrtoint ptr %actual_length58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %actual_length58, align 4
  %inc = add nuw nsw i32 %i.0148, 1
  %35 = ptrtoint ptr %number_of_packets21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %number_of_packets21, align 4
  %cmp22 = icmp slt i32 %inc, %36
  br i1 %cmp22, label %if.end52.for.body_crit_edge, label %if.end52.do.body62.preheader_crit_edge

if.end52.do.body62.preheader_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body62.preheader

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

do.body62.preheader:                              ; preds = %if.end52.do.body62.preheader_crit_edge, %for.cond.preheader.do.body62.preheader_crit_edge
  br label %do.body62

do.body62:                                        ; preds = %for.inc75.do.body62_crit_edge, %do.body62.preheader
  %loop_.0149 = phi i32 [ %inc76, %for.inc75.do.body62_crit_edge ], [ 0, %do.body62.preheader ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %37 = load i32, ptr @dvb_usb_debug, align 4
  %and63 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %do.body62.for.inc75_crit_edge, label %do.end68

do.body62.for.inc75_crit_edge:                    ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc75

do.end68:                                         ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx70 = getelementptr i8, ptr %20, i32 %loop_.0149
  %38 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx70, align 1
  %conv = zext i8 %39 to i32
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv) #6
  br label %for.inc75

for.inc75:                                        ; preds = %do.end68, %do.body62.for.inc75_crit_edge
  %inc76 = add nuw nsw i32 %loop_.0149, 1
  %exitcond.not = icmp eq i32 %inc76, 20
  br i1 %exitcond.not, label %do.body78, label %for.inc75.do.body62_crit_edge

for.inc75.do.body62_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body62

do.body78:                                        ; preds = %for.inc75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %40 = load i32, ptr @dvb_usb_debug, align 4
  %and79 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %do.body78.sw.epilog104_crit_edge, label %do.end84

do.body78.sw.epilog104_crit_edge:                 ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog104

do.end84:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #5
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #6
  br label %sw.epilog104

sw.bb90:                                          ; preds = %sw.epilog
  %actual_length91 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %41 = ptrtoint ptr %actual_length91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %actual_length91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp92.not = icmp eq i32 %42, 0
  br i1 %cmp92.not, label %sw.bb90.sw.epilog104_crit_edge, label %if.then94

sw.bb90.sw.epilog104_crit_edge:                   ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog104

if.then94:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #5
  %complete95 = getelementptr inbounds %struct.usb_data_stream, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %complete95 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %complete95, align 4
  tail call void %44(ptr noundef %1, ptr noundef %20, i32 noundef %42) #3
  br label %sw.epilog104

do.end101:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #6
  br label %cleanup

sw.epilog104:                                     ; preds = %if.then94, %sw.bb90.sw.epilog104_crit_edge, %do.end84, %do.body78.sw.epilog104_crit_edge
  %call105 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog104, %do.end101, %do.end4.cleanup_crit_edge, %do.end4.cleanup_crit_edge152, %do.end4.cleanup_crit_edge153
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 70, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @usb_urb_kill._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @usb_urb_kill._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 83, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @usb_urb_submit._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @usb_urb_submit._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 85, i32 4}
!13 = !{ptr @usb_urb_submit._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @usb_urb_submit._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 223, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @usb_urb_init._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @usb_urb_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 233, i32 4}
!22 = !{ptr @usb_urb_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @usb_urb_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 246, i32 4}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @usb_urb_exit._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @usb_urb_exit._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 150, i32 4}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @usb_bulk_urb_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @usb_bulk_urb_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 116, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @usb_allocate_stream_buffers._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @usb_allocate_stream_buffers._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 119, i32 3}
!41 = !{ptr @usb_allocate_stream_buffers._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @usb_allocate_stream_buffers._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 123, i32 4}
!45 = !{ptr @usb_allocate_stream_buffers._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @usb_allocate_stream_buffers._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 127, i32 3}
!49 = !{ptr @usb_allocate_stream_buffers._entry.25, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @usb_allocate_stream_buffers._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 133, i32 2}
!53 = !{ptr @usb_allocate_stream_buffers._entry.28, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @usb_allocate_stream_buffers._entry_ptr.30, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 22, i32 2}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @usb_urb_complete._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @usb_urb_complete._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 36, i32 4}
!64 = !{ptr @usb_urb_complete._entry.35, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @usb_urb_complete._entry_ptr.37, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 46, i32 6}
!68 = !{ptr @usb_urb_complete._entry.38, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @usb_urb_complete._entry_ptr.40, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 53, i32 4}
!72 = !{ptr @usb_urb_complete._entry.41, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @usb_urb_complete._entry_ptr.43, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.45, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @usb_urb_complete._entry.44, !71, !"_entry", i1 false, i1 false}
!76 = !{ptr @usb_urb_complete._entry_ptr.46, !71, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.48, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 60, i32 4}
!79 = !{ptr @usb_urb_complete._entry.47, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @usb_urb_complete._entry_ptr.49, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 183, i32 4}
!83 = !{ptr @.str.51, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @usb_isoc_urb_init._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @usb_isoc_urb_init._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/dvb-usb/usb-urb.c", i32 99, i32 4}
!88 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @usb_free_stream_buffers._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @usb_free_stream_buffers._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
