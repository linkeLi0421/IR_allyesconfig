; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-core/dvb_vb2.c_pt.bc'
source_filename = "../drivers/media/dvb-core/dvb_vb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buf_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dvb_buffer = type { %struct.vb2_buffer, %struct.list_head }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.78, i32 }
%union.anon.78 = type { i32 }
%struct.dmx_requestbuffers = type { i32, i32 }
%struct.dmx_exportbuffer = type { i32, i32, i32 }
%struct.dmx_buffer = type { i32, i32, i32, i32, i32, i32 }

@__param_str_vb2_debug = internal constant [19 x i8] c"dvb_core.vb2_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vb2_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vb2_debug = internal constant %struct.kernel_param { ptr @__param_str_vb2_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @vb2_debug } }, section "__param", align 4
@__UNIQUE_ID_vb2_debugtype236 = internal constant [32 x i8] c"dvb_core.parmtype=vb2_debug:int\00", section ".modinfo", align 1
@dvb_vb2_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @_queue_setup, ptr @_dmxdev_unlock, ptr @_dmxdev_lock, ptr null, ptr null, ptr @_buffer_prepare, ptr null, ptr null, ptr @_start_streaming, ptr @_stop_streaming, ptr @_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@dvb_vb2_buf_ops = internal constant { %struct.vb2_buf_ops, [44 x i8] } { %struct.vb2_buf_ops { ptr null, ptr null, ptr @_fill_dmx_buffer, ptr @_fill_vb2_buffer, ptr null }, [44 x i8] zeroinitializer }, align 32
@dvb_vb2_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016vb2: %s: [%s] errno=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_vb2_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/dvb-core/dvb_vb2.c\00", [63 x i8] zeroinitializer }, align 32
@dvb_vb2_init._entry_ptr = internal global ptr @dvb_vb2_init._entry, section ".printk_index", align 4
@dvb_vb2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->mutex\00", [20 x i8] zeroinitializer }, align 32
@dvb_vb2_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->slock\00", [20 x i8] zeroinitializer }, align 32
@dvb_vb2_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016vb2: %s: [%s]\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_vb2_init._entry_ptr.8 = internal global ptr @dvb_vb2_init._entry.6, section ".printk_index", align 4
@dvb_vb2_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.9, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_vb2_release\00", [16 x i8] zeroinitializer }, align 32
@dvb_vb2_release._entry_ptr = internal global ptr @dvb_vb2_release._entry, section ".printk_index", align 4
@dvb_vb2_stream_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_vb2_stream_on\00", [46 x i8] zeroinitializer }, align 32
@dvb_vb2_stream_on._entry_ptr = internal global ptr @dvb_vb2_stream_on._entry, section ".printk_index", align 4
@dvb_vb2_stream_on._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.10, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_vb2_stream_on._entry_ptr.12 = internal global ptr @dvb_vb2_stream_on._entry.11, section ".printk_index", align 4
@dvb_vb2_stream_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_vb2_stream_off\00", [45 x i8] zeroinitializer }, align 32
@dvb_vb2_stream_off._entry_ptr = internal global ptr @dvb_vb2_stream_off._entry, section ".printk_index", align 4
@dvb_vb2_stream_off._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.13, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_vb2_stream_off._entry_ptr.15 = internal global ptr @dvb_vb2_stream_off._entry.14, section ".printk_index", align 4
@dvb_vb2_fill_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016vb2: %s: [%s] Buffer overflow!!!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_vb2_fill_buffer\00", [44 x i8] zeroinitializer }, align 32
@dvb_vb2_fill_buffer._entry_ptr = internal global ptr @dvb_vb2_fill_buffer._entry, section ".printk_index", align 4
@dvb_vb2_fill_buffer._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016vb2: %s: [%s] %d bytes are dropped.\0A\00", [57 x i8] zeroinitializer }, align 32
@dvb_vb2_fill_buffer._entry_ptr.20 = internal global ptr @dvb_vb2_fill_buffer._entry.18, section ".printk_index", align 4
@dvb_vb2_fill_buffer._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.17, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_vb2_fill_buffer._entry_ptr.22 = internal global ptr @dvb_vb2_fill_buffer._entry.21, section ".printk_index", align 4
@dvb_vb2_fill_buffer._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016vb2: %s: [%s] %d bytes are copied\0A\00", [59 x i8] zeroinitializer }, align 32
@dvb_vb2_fill_buffer._entry_ptr.25 = internal global ptr @dvb_vb2_fill_buffer._entry.23, section ".printk_index", align 4
@dvb_vb2_reqbufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016vb2: %s: [%s] count=%d size=%d errno=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_vb2_reqbufs\00", [16 x i8] zeroinitializer }, align 32
@dvb_vb2_reqbufs._entry_ptr = internal global ptr @dvb_vb2_reqbufs._entry, section ".printk_index", align 4
@dvb_vb2_reqbufs._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016vb2: %s: [%s] count=%d size=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@dvb_vb2_reqbufs._entry_ptr.30 = internal global ptr @dvb_vb2_reqbufs._entry.28, section ".printk_index", align 4
@dvb_vb2_querybuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016vb2: %s: [%s] index=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb_vb2_querybuf\00", [47 x i8] zeroinitializer }, align 32
@dvb_vb2_querybuf._entry_ptr = internal global ptr @dvb_vb2_querybuf._entry, section ".printk_index", align 4
@dvb_vb2_expbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016vb2: %s: [%s] index=%d errno=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_vb2_expbuf\00", [17 x i8] zeroinitializer }, align 32
@dvb_vb2_expbuf._entry_ptr = internal global ptr @dvb_vb2_expbuf._entry, section ".printk_index", align 4
@dvb_vb2_expbuf._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016vb2: %s: [%s] index=%d fd=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@dvb_vb2_expbuf._entry_ptr.37 = internal global ptr @dvb_vb2_expbuf._entry.35, section ".printk_index", align 4
@dvb_vb2_qbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.38, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_vb2_qbuf\00", [19 x i8] zeroinitializer }, align 32
@dvb_vb2_qbuf._entry_ptr = internal global ptr @dvb_vb2_qbuf._entry, section ".printk_index", align 4
@dvb_vb2_qbuf._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.38, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dvb_vb2_qbuf._entry_ptr.40 = internal global ptr @dvb_vb2_qbuf._entry.39, section ".printk_index", align 4
@dvb_vb2_dqbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.41, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dvb_vb2_dqbuf\00", [18 x i8] zeroinitializer }, align 32
@dvb_vb2_dqbuf._entry_ptr = internal global ptr @dvb_vb2_dqbuf._entry, section ".printk_index", align 4
@dvb_vb2_dqbuf._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016vb2: %s: [%s] index=%d, count=%d, flags=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@dvb_vb2_dqbuf._entry_ptr.44 = internal global ptr @dvb_vb2_dqbuf._entry.42, section ".printk_index", align 4
@dvb_vb2_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.45, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_vb2_mmap\00", [19 x i8] zeroinitializer }, align 32
@dvb_vb2_mmap._entry_ptr = internal global ptr @dvb_vb2_mmap._entry, section ".printk_index", align 4
@dvb_vb2_mmap._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016vb2: %s: [%s] ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@dvb_vb2_mmap._entry_ptr.48 = internal global ptr @dvb_vb2_mmap._entry.46, section ".printk_index", align 4
@dvb_vb2_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.49, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_vb2_poll\00", [19 x i8] zeroinitializer }, align 32
@dvb_vb2_poll._entry_ptr = internal global ptr @dvb_vb2_poll._entry, section ".printk_index", align 4
@_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016vb2: %s: [%s] count=%d, size=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_queue_setup\00", [19 x i8] zeroinitializer }, align 32
@_queue_setup._entry_ptr = internal global ptr @_queue_setup._entry, section ".printk_index", align 4
@_dmxdev_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.52, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_dmxdev_unlock\00", [17 x i8] zeroinitializer }, align 32
@_dmxdev_unlock._entry_ptr = internal global ptr @_dmxdev_unlock._entry, section ".printk_index", align 4
@_dmxdev_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.53, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_dmxdev_lock\00", [19 x i8] zeroinitializer }, align 32
@_dmxdev_lock._entry_ptr = internal global ptr @_dmxdev_lock._entry, section ".printk_index", align 4
@_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016vb2: %s: [%s] data will not fit into plane (%lu < %lu)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_buffer_prepare\00", [16 x i8] zeroinitializer }, align 32
@_buffer_prepare._entry_ptr = internal global ptr @_buffer_prepare._entry, section ".printk_index", align 4
@_buffer_prepare._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.55, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_buffer_prepare._entry_ptr.57 = internal global ptr @_buffer_prepare._entry.56, section ".printk_index", align 4
@_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016vb2: %s: [%s] count=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_start_streaming\00", [47 x i8] zeroinitializer }, align 32
@_start_streaming._entry_ptr = internal global ptr @_start_streaming._entry, section ".printk_index", align 4
@_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.60, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_stop_streaming\00", [16 x i8] zeroinitializer }, align 32
@_stop_streaming._entry_ptr = internal global ptr @_stop_streaming._entry, section ".printk_index", align 4
@_buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.61, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"_buffer_queue\00", [18 x i8] zeroinitializer }, align 32
@_buffer_queue._entry_ptr = internal global ptr @_buffer_queue._entry, section ".printk_index", align 4
@_fill_dmx_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.62, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_fill_dmx_buffer\00", [47 x i8] zeroinitializer }, align 32
@_fill_dmx_buffer._entry_ptr = internal global ptr @_fill_dmx_buffer._entry, section ".printk_index", align 4
@_fill_vb2_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.63, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_fill_vb2_buffer\00", [47 x i8] zeroinitializer }, align 32
@_fill_vb2_buffer._entry_ptr = internal global ptr @_fill_vb2_buffer._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"vb2_debug\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 20, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"dvb_vb2_qops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 123, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"dvb_vb2_buf_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 155, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 184, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 188, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 189, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 196, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 209, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 222, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 226, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 240, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 243, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 277, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 321, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 323, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 325, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 344, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 349, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 358, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 370, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 374, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 385, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 389, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 401, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 411, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 424, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 427, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 435, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 44, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 120, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 111, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 56, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 62, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 84, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 94, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 77, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 142, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.294 = private constant [36 x i8] c"../drivers/media/dvb-core/dvb_vb2.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 150, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 1163, i32 7 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_vb2_debugtype236, ptr @__param_vb2_debug, ptr @_buffer_prepare._entry, ptr @_buffer_prepare._entry.56, ptr @_buffer_prepare._entry_ptr, ptr @_buffer_prepare._entry_ptr.57, ptr @_buffer_queue._entry, ptr @_buffer_queue._entry_ptr, ptr @_dmxdev_lock._entry, ptr @_dmxdev_lock._entry_ptr, ptr @_dmxdev_unlock._entry, ptr @_dmxdev_unlock._entry_ptr, ptr @_fill_dmx_buffer._entry, ptr @_fill_dmx_buffer._entry_ptr, ptr @_fill_vb2_buffer._entry, ptr @_fill_vb2_buffer._entry_ptr, ptr @_queue_setup._entry, ptr @_queue_setup._entry_ptr, ptr @_start_streaming._entry, ptr @_start_streaming._entry_ptr, ptr @_stop_streaming._entry, ptr @_stop_streaming._entry_ptr, ptr @dvb_vb2_dqbuf._entry, ptr @dvb_vb2_dqbuf._entry.42, ptr @dvb_vb2_dqbuf._entry_ptr, ptr @dvb_vb2_dqbuf._entry_ptr.44, ptr @dvb_vb2_expbuf._entry, ptr @dvb_vb2_expbuf._entry.35, ptr @dvb_vb2_expbuf._entry_ptr, ptr @dvb_vb2_expbuf._entry_ptr.37, ptr @dvb_vb2_fill_buffer._entry, ptr @dvb_vb2_fill_buffer._entry.18, ptr @dvb_vb2_fill_buffer._entry.21, ptr @dvb_vb2_fill_buffer._entry.23, ptr @dvb_vb2_fill_buffer._entry_ptr, ptr @dvb_vb2_fill_buffer._entry_ptr.20, ptr @dvb_vb2_fill_buffer._entry_ptr.22, ptr @dvb_vb2_fill_buffer._entry_ptr.25, ptr @dvb_vb2_init._entry, ptr @dvb_vb2_init._entry.6, ptr @dvb_vb2_init._entry_ptr, ptr @dvb_vb2_init._entry_ptr.8, ptr @dvb_vb2_mmap._entry, ptr @dvb_vb2_mmap._entry.46, ptr @dvb_vb2_mmap._entry_ptr, ptr @dvb_vb2_mmap._entry_ptr.48, ptr @dvb_vb2_poll._entry, ptr @dvb_vb2_poll._entry_ptr, ptr @dvb_vb2_qbuf._entry, ptr @dvb_vb2_qbuf._entry.39, ptr @dvb_vb2_qbuf._entry_ptr, ptr @dvb_vb2_qbuf._entry_ptr.40, ptr @dvb_vb2_querybuf._entry, ptr @dvb_vb2_querybuf._entry_ptr, ptr @dvb_vb2_release._entry, ptr @dvb_vb2_release._entry_ptr, ptr @dvb_vb2_reqbufs._entry, ptr @dvb_vb2_reqbufs._entry.28, ptr @dvb_vb2_reqbufs._entry_ptr, ptr @dvb_vb2_reqbufs._entry_ptr.30, ptr @dvb_vb2_stream_off._entry, ptr @dvb_vb2_stream_off._entry.14, ptr @dvb_vb2_stream_off._entry_ptr, ptr @dvb_vb2_stream_off._entry_ptr.15, ptr @dvb_vb2_stream_on._entry, ptr @dvb_vb2_stream_on._entry.11, ptr @dvb_vb2_stream_on._entry_ptr, ptr @dvb_vb2_stream_on._entry_ptr.12, ptr @vb2_debug, ptr @dvb_vb2_qops, ptr @dvb_vb2_buf_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dvb_vb2_init.__key, ptr @.str.3, ptr @dvb_vb2_init.__key.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vb2_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_buf_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_stream_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_stream_on._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_stream_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_stream_off._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_fill_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_fill_buffer._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_fill_buffer._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_fill_buffer._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_reqbufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_reqbufs._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_querybuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_expbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_expbuf._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_qbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_qbuf._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_dqbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_dqbuf._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_mmap._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_vb2_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dmxdev_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dmxdev_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_buffer_prepare._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_fill_dmx_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_fill_vb2_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_init(ptr noundef %ctx, ptr noundef %name, i32 noundef %nonblocking) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %ctx, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 708)
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ctx, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %ctx, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ctx, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %ctx, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 448, ptr %buf_struct_size, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vb2_queue, ptr %ctx, i32 0, i32 15
  %6 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %min_buffers_needed, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %ctx, i32 0, i32 7
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dvb_vb2_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %ctx, i32 0, i32 8
  %8 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %buf_ops = getelementptr inbounds %struct.vb2_queue, ptr %ctx, i32 0, i32 9
  %9 = ptrtoint ptr %buf_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dvb_vb2_buf_ops, ptr %buf_ops, align 4
  %call = tail call i32 @vb2_core_queue_init(ptr noundef %ctx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body8, label %if.then

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 7
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state, align 4
  %11 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %name3 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %name3, i32 noundef %call) #8
  br label %cleanup

do.body8:                                         ; preds = %entry
  %mutex = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @dvb_vb2_init.__key) #5
  %slock = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.5, ptr noundef nonnull @dvb_vb2_init.__key.4, i16 noundef signext 3) #5
  %dvb_q = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 3
  %12 = ptrtoint ptr %dvb_q to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %dvb_q, ptr %dvb_q, align 4
  %prev.i = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dvb_q, ptr %prev.i, align 4
  %name15 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call17 = tail call i32 @strscpy(ptr noundef %name15, ptr noundef %name, i32 noundef 20) #5
  %nonblocking18 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 10
  %14 = ptrtoint ptr %nonblocking18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %nonblocking, ptr %nonblocking18, align 4
  %state19 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 7
  %15 = ptrtoint ptr %state19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state19, align 4
  %16 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp21 = icmp sgt i32 %16, 2
  br i1 %cmp21, label %do.end25, label %do.body8.cleanup_crit_edge

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end25:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %name15) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.body8.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_core_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_release(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vb2_core_queue_release(ptr noundef %ctx) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  %3 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %do.end, label %if.end.do.end6_crit_edge

if.end.do.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, ptr noundef %name) #8
  br label %do.end6

do.end6:                                          ; preds = %do.end, %if.end.do.end6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_core_queue_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_stream_on(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  %call = tail call i32 @vb2_core_streamon(ptr noundef %ctx, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %state7 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 7
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state7, align 4
  %3 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %call) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %4 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state7, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %state7, align 4
  %6 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp9 = icmp sgt i32 %6, 2
  br i1 %cmp9, label %do.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %name15 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, ptr noundef %name15) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end6.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_core_streamon(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_stream_off(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, -5
  store i32 %and, ptr %state, align 4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctx, align 4
  %call = tail call i32 @vb2_core_streamoff(ptr noundef %ctx, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body8, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  %5 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %call) #8
  br label %cleanup

do.body8:                                         ; preds = %entry
  %6 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp9 = icmp sgt i32 %6, 2
  br i1 %cmp9, label %do.end13, label %do.body8.cleanup_crit_edge

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %name15 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13, ptr noundef %name15) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.body8.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_core_streamoff(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dvb_vb2_is_streaming(ptr nocapture noundef readonly %ctx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = and i32 %1, 4
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_fill_buffer(ptr noundef %ctx, ptr noundef readonly %src, i32 noundef %len, ptr noundef %buffer_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %src, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body2:                                         ; preds = %entry
  %slock = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #5
  %tobool6.not = icmp eq ptr %buffer_flags, null
  br i1 %tobool6.not, label %do.body2.while.body.lr.ph_crit_edge, label %land.lhs.true

do.body2.while.body.lr.ph_crit_edge:              ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph

land.lhs.true:                                    ; preds = %do.body2
  %0 = ptrtoint ptr %buffer_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %land.lhs.true.while.body.lr.ph_crit_edge, label %if.then8

land.lhs.true.while.body.lr.ph_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %flags9 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 11
  %2 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags9, align 4
  %or = or i32 %3, %1
  store i32 %or, ptr %flags9, align 4
  %4 = ptrtoint ptr %buffer_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buffer_flags, align 4
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then8, %land.lhs.true.while.body.lr.ph_crit_edge, %do.body2.while.body.lr.ph_crit_edge
  %buf = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 4
  %dvb_q = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 3
  %remain = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 6
  %offset = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 5
  %state.i = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end66.while.body_crit_edge, %while.body.lr.ph
  %todo.0219 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end66.while.body_crit_edge ]
  %psrc.0218 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr53, %if.end66.while.body_crit_edge ]
  %ll.0217 = phi i32 [ 0, %while.body.lr.ph ], [ %34, %if.end66.while.body_crit_edge ]
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.then13, label %while.body.if.end35_crit_edge

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then13:                                        ; preds = %while.body
  %7 = ptrtoint ptr %dvb_q to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %dvb_q, align 4
  %cmp.i.not = icmp eq ptr %8, %dvb_q
  br i1 %cmp.i.not, label %do.body17, label %if.end29

do.body17:                                        ; preds = %if.then13
  %9 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp18 = icmp sgt i32 %9, 2
  br i1 %cmp18, label %do.end23, label %do.body17.while.end_crit_edge

do.body17.while.end_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end23:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %name) #8
  br label %while.end

if.end29:                                         ; preds = %if.then13
  %add.ptr = getelementptr i8, ptr %8, i32 -440
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %buf, align 4
  %num_planes.i = getelementptr i8, ptr %8, i32 -424
  %11 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %if.end29.vb2_plane_size.exit_crit_edge, label %if.then.i

if.end29.vb2_plane_size.exit_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %length.i = getelementptr i8, ptr %8, i32 -352
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.end29.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %if.end29.vb2_plane_size.exit_crit_edge ]
  %15 = ptrtoint ptr %remain to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %remain, align 4
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %offset, align 4
  br label %if.end35

if.end35:                                         ; preds = %vb2_plane_size.exit, %while.body.if.end35_crit_edge
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state.i, align 4
  %and.i = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not = icmp eq i32 %and.i, 0
  br i1 %tobool37.not, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.end35
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  tail call void @vb2_buffer_done(ptr noundef %20, i32 noundef 6) #5
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %list = getelementptr inbounds %struct.dvb_buffer, ptr %22, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then38.list_del.exit_crit_edge

if.then38.list_del.exit_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.dvb_buffer, ptr %22, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then38.list_del.exit_crit_edge
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dvb_buffer, ptr %22, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %buf, align 4
  br label %while.end

if.end43:                                         ; preds = %if.end35
  %32 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %remain, align 4
  %34 = tail call i32 @llvm.smin.i32(i32 %todo.0219, i32 %33)
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf, align 4
  %call50 = tail call ptr @vb2_plane_vaddr(ptr noundef %36, i32 noundef 0) #5
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %add.ptr52 = getelementptr i8, ptr %call50, i32 %38
  %39 = call ptr @memcpy(ptr %add.ptr52, ptr %psrc.0218, i32 %34)
  %sub = sub i32 %todo.0219, %34
  %add.ptr53 = getelementptr i8, ptr %psrc.0218, i32 %34
  %40 = ptrtoint ptr %remain to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %remain, align 4
  %sub55 = sub i32 %41, %34
  store i32 %sub55, ptr %remain, align 4
  %42 = load i32, ptr %offset, align 4
  %add = add i32 %42, %34
  store i32 %add, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %34)
  %cmp58 = icmp eq i32 %41, %34
  br i1 %cmp58, label %if.then60, label %if.end43.if.end66_crit_edge

if.end43.if.end66_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then60:                                        ; preds = %if.end43
  %43 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf, align 4
  tail call void @vb2_buffer_done(ptr noundef %44, i32 noundef 5) #5
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf, align 4
  %list64 = getelementptr inbounds %struct.dvb_buffer, ptr %46, i32 0, i32 1
  %call.i.i187 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list64) #5
  br i1 %call.i.i187, label %if.end.i.i190, label %if.then60.list_del.exit192_crit_edge

if.then60.list_del.exit192_crit_edge:             ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit192

if.end.i.i190:                                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i188 = getelementptr inbounds %struct.dvb_buffer, ptr %46, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i.i188 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i188, align 4
  %49 = ptrtoint ptr %list64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %list64, align 4
  %prev1.i.i.i189 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i189 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i189, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit192

list_del.exit192:                                 ; preds = %if.end.i.i190, %if.then60.list_del.exit192_crit_edge
  %53 = ptrtoint ptr %list64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %list64, align 4
  %prev.i191 = getelementptr inbounds %struct.dvb_buffer, ptr %46, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i191 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i191, align 4
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %buf, align 4
  br label %if.end66

if.end66:                                         ; preds = %list_del.exit192, %if.end43.if.end66_crit_edge
  %tobool11.not = icmp eq i32 %sub, 0
  br i1 %tobool11.not, label %if.end66.while.end_crit_edge, label %if.end66.while.body_crit_edge

if.end66.while.body_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end66.while.end_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end66.while.end_crit_edge, %list_del.exit, %do.end23, %do.body17.while.end_crit_edge
  %ll.0214 = phi i32 [ %ll.0217, %do.body17.while.end_crit_edge ], [ %ll.0217, %do.end23 ], [ %ll.0217, %list_del.exit ], [ %34, %if.end66.while.end_crit_edge ]
  %todo.0209 = phi i32 [ %todo.0219, %do.body17.while.end_crit_edge ], [ %todo.0219, %do.end23 ], [ %todo.0219, %list_del.exit ], [ 0, %if.end66.while.end_crit_edge ]
  %tobool11.not206 = phi i1 [ false, %do.body17.while.end_crit_edge ], [ false, %do.end23 ], [ false, %list_del.exit ], [ true, %if.end66.while.end_crit_edge ]
  %nonblocking = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 10
  %56 = ptrtoint ptr %nonblocking to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nonblocking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool67.not = icmp eq i32 %57, 0
  br i1 %tobool67.not, label %while.end.if.end79_crit_edge, label %land.lhs.true68

while.end.if.end79_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

land.lhs.true68:                                  ; preds = %while.end
  %buf69 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 4
  %58 = ptrtoint ptr %buf69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf69, align 4
  %tobool70.not = icmp eq ptr %59, null
  br i1 %tobool70.not, label %land.lhs.true68.if.end79_crit_edge, label %if.then71

land.lhs.true68.if.end79_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then71:                                        ; preds = %land.lhs.true68
  %num_planes.i193 = getelementptr inbounds %struct.vb2_buffer, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %num_planes.i193 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_planes.i193, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.not.i194 = icmp eq i32 %61, 0
  br i1 %cmp.not.i194, label %if.then71.vb2_set_plane_payload.exit_crit_edge, label %if.then.i196

if.then71.vb2_set_plane_payload.exit_crit_edge:   ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

if.then.i196:                                     ; preds = %if.then71
  %length.i195 = getelementptr inbounds %struct.vb2_buffer, ptr %59, i32 0, i32 10, i32 0, i32 4
  %62 = ptrtoint ptr %length.i195 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length.i195, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %ll.0214)
  %cmp1.i = icmp ult i32 %63, %ll.0214
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i196.if.end42.i_crit_edge

if.then.i196.if.end42.i_crit_edge:                ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i196
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !164

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %64 = ptrtoint ptr %length.i195 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %length.i195, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i196.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %65, %if.then38.i ], [ %ll.0214, %if.then.i196.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %59, i32 0, i32 10, i32 0, i32 3
  %66 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.then71.vb2_set_plane_payload.exit_crit_edge
  %67 = ptrtoint ptr %buf69 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf69, align 4
  tail call void @vb2_buffer_done(ptr noundef %68, i32 noundef 5) #5
  %69 = ptrtoint ptr %buf69 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf69, align 4
  %list77 = getelementptr inbounds %struct.dvb_buffer, ptr %70, i32 0, i32 1
  %call.i.i197 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list77) #5
  br i1 %call.i.i197, label %if.end.i.i200, label %vb2_set_plane_payload.exit.list_del.exit202_crit_edge

vb2_set_plane_payload.exit.list_del.exit202_crit_edge: ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit202

if.end.i.i200:                                    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i198 = getelementptr inbounds %struct.dvb_buffer, ptr %70, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %prev.i.i198 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i198, align 4
  %73 = ptrtoint ptr %list77 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %list77, align 4
  %prev1.i.i.i199 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i199 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i199, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del.exit202

list_del.exit202:                                 ; preds = %if.end.i.i200, %vb2_set_plane_payload.exit.list_del.exit202_crit_edge
  %77 = ptrtoint ptr %list77 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %list77, align 4
  %prev.i201 = getelementptr inbounds %struct.dvb_buffer, ptr %70, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i201 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i201, align 4
  %79 = ptrtoint ptr %buf69 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %buf69, align 4
  br label %if.end79

if.end79:                                         ; preds = %list_del.exit202, %land.lhs.true68.if.end79_crit_edge, %while.end.if.end79_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #5
  %80 = load i32, ptr @vb2_debug, align 4
  br i1 %tobool11.not206, label %do.body97, label %do.body83

do.body83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp84 = icmp sgt i32 %80, 0
  br i1 %cmp84, label %do.end89, label %do.body83.do.end126_crit_edge

do.body83.do.end126_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end126

do.end89:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  %name91 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef %name91, i32 noundef %todo.0209) #8
  br label %do.body112

do.body97:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp98 = icmp sgt i32 %80, 2
  br i1 %cmp98, label %do.end103, label %do.body97.do.end126_crit_edge

do.body97.do.end126_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end126

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #7
  %name105 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, ptr noundef %name105) #8
  br label %do.body112

do.body112:                                       ; preds = %do.end103, %do.end89
  %.pr = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp113 = icmp sgt i32 %.pr, 2
  br i1 %cmp113, label %do.end118, label %do.body112.do.end126_crit_edge

do.body112.do.end126_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end126

do.end118:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #7
  %name120 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %sub122 = sub i32 %len, %todo.0209
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17, ptr noundef %name120, i32 noundef %sub122) #8
  br label %do.end126

do.end126:                                        ; preds = %do.end118, %do.body112.do.end126_crit_edge, %do.body97.do.end126_crit_edge, %do.body83.do.end126_crit_edge
  %sub127 = sub i32 %len, %todo.0209
  br label %cleanup

cleanup:                                          ; preds = %do.end126, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub127, %do.end126 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_reqbufs(ptr noundef %ctx, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.dmx_requestbuffers, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 770048, i32 %1)
  %cmp = icmp ugt i32 %1, 770048
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 770048, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %buf_siz = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 8
  %5 = ptrtoint ptr %buf_siz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buf_siz, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 4
  %buf_cnt = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 9
  %8 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %buf_cnt, align 4
  %call = tail call i32 @vb2_core_reqbufs(ptr noundef %ctx, i32 noundef 1, i32 noundef 0, ptr noundef %req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %state15 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 7
  br i1 %tobool.not, label %if.end14, label %if.then4

if.then4:                                         ; preds = %if.end
  %9 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state15, align 4
  %10 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp5 = icmp sgt i32 %10, 0
  br i1 %cmp5, label %do.end, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %11 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_cnt, align 4
  %13 = ptrtoint ptr %buf_siz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_siz, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %12, i32 noundef %14, i32 noundef %call) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %15 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state15, align 4
  %or = or i32 %16, 2
  store i32 %or, ptr %state15, align 4
  %17 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp17 = icmp sgt i32 %17, 2
  br i1 %cmp17, label %do.end21, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %name23 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %18 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_cnt, align 4
  %20 = ptrtoint ptr %buf_siz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %buf_siz, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef %name23, i32 noundef %19, i32 noundef %21) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end14.cleanup_crit_edge, %do.end, %if.then4.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_core_reqbufs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_querybuf(ptr noundef %ctx, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b, align 4
  tail call void @vb2_core_querybuf(ptr noundef %ctx, i32 noundef %1, ptr noundef %b) #5
  %2 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %4) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_core_querybuf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_expbuf(ptr noundef %ctx, ptr noundef %exp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %fd = getelementptr inbounds %struct.dmx_exportbuffer, ptr %exp, i32 0, i32 2
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  %2 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exp, align 4
  %flags = getelementptr inbounds %struct.dmx_exportbuffer, ptr %exp, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %call = tail call i32 @vb2_core_expbuf(ptr noundef %ctx, ptr noundef %fd, i32 noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %6 = load i32, ptr @vb2_debug, align 4
  br i1 %tobool.not, label %do.body9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %7 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %exp, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef %name, i32 noundef %8, i32 noundef %call) #8
  br label %cleanup

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp10 = icmp sgt i32 %6, 2
  br i1 %cmp10, label %do.end14, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %name16 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %9 = ptrtoint ptr %exp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %exp, align 4
  %11 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fd, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef %name16, i32 noundef %10, i32 noundef %12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.body9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_core_expbuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_qbuf(ptr noundef %ctx, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b, align 4
  %call = tail call i32 @vb2_core_qbuf(ptr noundef %ctx, i32 noundef %1, ptr noundef %b, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %2 = load i32, ptr @vb2_debug, align 4
  br i1 %tobool.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %3 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %b, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %4, i32 noundef %call) #8
  br label %cleanup

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp9 = icmp sgt i32 %2, 4
  br i1 %cmp9, label %do.end13, label %do.body8.cleanup_crit_edge

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  %name15 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %5 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %b, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.38, ptr noundef %name15, i32 noundef %6) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.body8.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_core_qbuf(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_dqbuf(ptr noundef %ctx, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nonblocking = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %nonblocking to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nonblocking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %call = tail call i32 @vb2_core_dqbuf(ptr noundef %ctx, ptr noundef %b, ptr noundef %b, i1 noundef zeroext %tobool) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body9, label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, ptr noundef %name, i32 noundef %call) #8
  br label %cleanup

do.body9:                                         ; preds = %entry
  %slock = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 2
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #5
  %count = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 12
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %count, align 4
  %count18 = getelementptr inbounds %struct.dmx_buffer, ptr %b, i32 0, i32 5
  %5 = ptrtoint ptr %count18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %count18, align 4
  %flags19 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 11
  %6 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags19, align 4
  %flags20 = getelementptr inbounds %struct.dmx_buffer, ptr %b, i32 0, i32 4
  %8 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags20, align 4
  store i32 0, ptr %flags19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call13) #5
  %9 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp24 = icmp sgt i32 %9, 4
  br i1 %cmp24, label %do.end29, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end29:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  %name31 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %10 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b, align 4
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count, align 4
  %14 = ptrtoint ptr %flags20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags20, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, ptr noundef %name31, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end29, %do.body9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_core_dqbuf(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_mmap(ptr noundef %ctx, ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vb2_mmap(ptr noundef %ctx, ptr noundef %vma) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %0 = load i32, ptr @vb2_debug, align 4
  br i1 %tobool.not, label %do.body7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, ptr noundef %name, i32 noundef %call) #8
  br label %cleanup

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp8 = icmp sgt i32 %0, 2
  br i1 %cmp8, label %do.end12, label %do.body7.cleanup_crit_edge

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %name14 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, ptr noundef %name14, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.body7.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_vb2_poll(ptr noundef %ctx, ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %ctx, i32 0, i32 13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.49, ptr noundef %name) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call i32 @vb2_core_poll(ptr noundef %ctx, ptr noundef %file, ptr noundef %wait) #5
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_core_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readonly %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbuffers, align 4
  %buf_cnt = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %buf_cnt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %buf_cnt, align 4
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %nplanes, align 4
  %buf_siz = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %buf_siz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_siz, align 4
  %8 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sizes, align 4
  %9 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp sgt i32 %9, 2
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbuffers, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef %name, i32 noundef %11, i32 noundef %7) #8
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_dmxdev_unlock(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %mutex = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 1
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #5
  br i1 %call1, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %2 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %do.body.do.end8_crit_edge

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 13
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.52, ptr noundef %name) #8
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_dmxdev_lock(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %mutex = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %2 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.53, ptr noundef %name) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_buffer_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %buf_siz = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %buf_siz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_siz, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %do.body

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp42 = icmp ult i32 %9, %5
  br i1 %cmp42, label %do.body.thread, label %if.then.i40

do.body:                                          ; preds = %vb2_plane_size.exit
  %10 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp sgt i32 %10, 0
  br i1 %cmp2, label %do.body.vb2_plane_size.exit36_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.vb2_plane_size.exit36_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_plane_size.exit36

do.body.thread:                                   ; preds = %vb2_plane_size.exit.thread
  %11 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp243 = icmp sgt i32 %11, 0
  br i1 %cmp243, label %if.then.i34, label %do.body.thread.cleanup_crit_edge

do.body.thread.cleanup_crit_edge:                 ; preds = %do.body.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i34:                                      ; preds = %do.body.thread
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit36

vb2_plane_size.exit36:                            ; preds = %if.then.i34, %do.body.vb2_plane_size.exit36_crit_edge
  %retval.0.i35 = phi i32 [ %13, %if.then.i34 ], [ 0, %do.body.vb2_plane_size.exit36_crit_edge ]
  %name46 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %3, i32 0, i32 13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef %name46, i32 noundef %retval.0.i35, i32 noundef %5) #8
  br label %cleanup

if.then.i40:                                      ; preds = %vb2_plane_size.exit.thread
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp1.i = icmp ult i32 %15, %5
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i40.if.end42.i_crit_edge

if.then.i40.if.end42.i_crit_edge:                 ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i40
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !164

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i40.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %17, %if.then38.i ], [ %5, %if.then.i40.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %18 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %19 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp11 = icmp sgt i32 %19, 2
  br i1 %cmp11, label %do.end15, label %vb2_set_plane_payload.exit.cleanup_crit_edge

vb2_set_plane_payload.exit.cleanup_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name17 = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %3, i32 0, i32 13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.55, ptr noundef %name17) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %vb2_set_plane_payload.exit.cleanup_crit_edge, %vb2_plane_size.exit36, %do.body.thread.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit36 ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %do.end15 ], [ 0, %vb2_set_plane_payload.exit.cleanup_crit_edge ], [ -22, %do.body.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %1 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv_priv.i, align 4
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %2, i32 0, i32 13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %name, i32 noundef %count) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.body6_crit_edge

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.60, ptr noundef %name) #8
  br label %do.body6

do.body6:                                         ; preds = %do.end, %entry.do.body6_crit_edge
  %slock = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 2
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #5
  %dvb_q = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dvb_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %dvb_q, align 4
  %cmp.i.not24 = icmp eq ptr %4, %dvb_q
  br i1 %cmp.i.not24, label %do.body6.while.end_crit_edge, label %do.body6.while.body_crit_edge

do.body6.while.body_crit_edge:                    ; preds = %do.body6
  br label %while.body

do.body6.while.end_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body6.while.body_crit_edge
  %5 = phi ptr [ %15, %list_del.exit.while.body_crit_edge ], [ %4, %do.body6.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %5, i32 -440
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %dvb_q to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dvb_q, align 4
  %cmp.i.not = icmp eq ptr %15, %dvb_q
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body6.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call10) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %slock = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %3, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #5
  %list = getelementptr inbounds %struct.dvb_buffer, ptr %vb, i32 0, i32 1
  %dvb_q = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %3, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %dvb_q) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dvb_q, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dvb_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #5
  %10 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp9 = icmp sgt i32 %10, 2
  br i1 %cmp9, label %do.end13, label %list_add_tail.exit.do.end17_crit_edge

list_add_tail.exit.do.end17_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

do.end13:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %3, i32 0, i32 13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.61, ptr noundef %name) #8
  br label %do.end17

do.end17:                                         ; preds = %do.end13, %list_add_tail.exit.do.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_fill_dmx_buffer(ptr nocapture noundef readonly %vb, ptr nocapture noundef writeonly %pb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %6 = ptrtoint ptr %pb to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pb, align 4
  %length = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 8
  %length2 = getelementptr inbounds %struct.dmx_buffer, ptr %pb, i32 0, i32 3
  %9 = ptrtoint ptr %length2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %length2, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %10 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesused, align 4
  %bytesused5 = getelementptr inbounds %struct.dmx_buffer, ptr %pb, i32 0, i32 1
  %12 = ptrtoint ptr %bytesused5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bytesused5, align 4
  %m = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 6
  %13 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m, align 8
  %offset = getelementptr inbounds %struct.dmx_buffer, ptr %pb, i32 0, i32 2
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %offset, align 4
  %16 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp sgt i32 %16, 2
  br i1 %cmp, label %do.end, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %3, i32 0, i32 13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.62, ptr noundef %name) #8
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_fill_vb2_buffer(ptr nocapture noundef readonly %vb, ptr nocapture noundef writeonly %planes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %bytesused = getelementptr inbounds %struct.vb2_plane, ptr %planes, i32 0, i32 3
  %4 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytesused, align 4
  %5 = load i32, ptr @vb2_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp sgt i32 %5, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.dvb_vb2_ctx, ptr %3, i32 0, i32 13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.63, ptr noundef %name) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !146, !147, !148, !150, !151, !152, !154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__param_vb2_debug, !1, !"__param_vb2_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_vb2_debugtype236, !1, !"__UNIQUE_ID_vb2_debugtype236", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 184, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dvb_vb2_init._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @dvb_vb2_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @dvb_vb2_init.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 188, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dvb_vb2_init.__key.4, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 189, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 196, i32 2}
!17 = !{ptr @dvb_vb2_init._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @dvb_vb2_init._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 209, i32 2}
!21 = !{ptr @dvb_vb2_release._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dvb_vb2_release._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 222, i32 3}
!25 = !{ptr @dvb_vb2_stream_on._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dvb_vb2_stream_on._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @dvb_vb2_stream_on._entry.11, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 226, i32 2}
!29 = !{ptr @dvb_vb2_stream_on._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 240, i32 3}
!32 = !{ptr @dvb_vb2_stream_off._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dvb_vb2_stream_off._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @dvb_vb2_stream_off._entry.14, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 243, i32 2}
!36 = !{ptr @dvb_vb2_stream_off._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 277, i32 5}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dvb_vb2_fill_buffer._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @dvb_vb2_fill_buffer._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 321, i32 3}
!44 = !{ptr @dvb_vb2_fill_buffer._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dvb_vb2_fill_buffer._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @dvb_vb2_fill_buffer._entry.21, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 323, i32 3}
!48 = !{ptr @dvb_vb2_fill_buffer._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 325, i32 2}
!51 = !{ptr @dvb_vb2_fill_buffer._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @dvb_vb2_fill_buffer._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 344, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dvb_vb2_reqbufs._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @dvb_vb2_reqbufs._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 349, i32 2}
!60 = !{ptr @dvb_vb2_reqbufs._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dvb_vb2_reqbufs._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 358, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dvb_vb2_querybuf._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @dvb_vb2_querybuf._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 370, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dvb_vb2_expbuf._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @dvb_vb2_expbuf._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 374, i32 2}
!74 = !{ptr @dvb_vb2_expbuf._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dvb_vb2_expbuf._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 385, i32 3}
!78 = !{ptr @dvb_vb2_qbuf._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @dvb_vb2_qbuf._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @dvb_vb2_qbuf._entry.39, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 389, i32 2}
!82 = !{ptr @dvb_vb2_qbuf._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 401, i32 3}
!85 = !{ptr @dvb_vb2_dqbuf._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dvb_vb2_dqbuf._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 411, i32 2}
!89 = !{ptr @dvb_vb2_dqbuf._entry.42, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dvb_vb2_dqbuf._entry_ptr.44, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 424, i32 3}
!93 = !{ptr @dvb_vb2_mmap._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @dvb_vb2_mmap._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 427, i32 2}
!97 = !{ptr @dvb_vb2_mmap._entry.46, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dvb_vb2_mmap._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 435, i32 2}
!101 = !{ptr @dvb_vb2_poll._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @dvb_vb2_poll._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @vb2_debug, !104, !"vb2_debug", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 20, i32 12}
!105 = !{ptr @__param_str_vb2_debug, !1, !"__param_str_vb2_debug", i1 false, i1 false}
!106 = !{ptr @dvb_vb2_qops, !107, !"dvb_vb2_qops", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 123, i32 29}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 44, i32 2}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @_queue_setup._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @_queue_setup._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 120, i32 2}
!115 = !{ptr @_dmxdev_unlock._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @_dmxdev_unlock._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 111, i32 2}
!119 = !{ptr @_dmxdev_lock._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @_dmxdev_lock._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 56, i32 3}
!123 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @_buffer_prepare._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @_buffer_prepare._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @_buffer_prepare._entry.56, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 62, i32 2}
!128 = !{ptr @_buffer_prepare._entry_ptr.57, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 84, i32 2}
!131 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @_start_streaming._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @_start_streaming._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 94, i32 2}
!136 = !{ptr @_stop_streaming._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @_stop_streaming._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 77, i32 2}
!140 = !{ptr @_buffer_queue._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @_buffer_queue._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @dvb_vb2_buf_ops, !143, !"dvb_vb2_buf_ops", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 155, i32 33}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 142, i32 2}
!146 = !{ptr @_fill_dmx_buffer._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @_fill_dmx_buffer._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-core/dvb_vb2.c", i32 150, i32 2}
!150 = !{ptr @_fill_vb2_buffer._entry, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @_fill_vb2_buffer._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!154 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"branch_weights", i32 2000, i32 1}
