; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/usb_urb.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/usb_urb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.103 }
%union.anon.103 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@usb_urb_killv2.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dvb_usb_v2\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_urb_killv2\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/usb/dvb-usb-v2/usb_urb.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: kill urb=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_urb_submitv2.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_urb_submitv2\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: submit urb=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@usb_urb_submitv2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 108, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: could not submit urb no. %d - get them all back\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_urb_submitv2._entry_ptr = internal global ptr @usb_urb_submitv2._entry, section ".printk_index", align 4
@usb_urb_reconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 265, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: invalid endpoint type=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_urb_reconfig\00", [47 x i8] zeroinitializer }, align 32
@usb_urb_reconfig._entry_ptr = internal global ptr @usb_urb_reconfig._entry, section ".printk_index", align 4
@usb_urb_reconfig._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 272, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: cannot reconfigure as allocated buffers are too small\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_urb_reconfig._entry_ptr.13 = internal global ptr @usb_urb_reconfig._entry.11, section ".printk_index", align 4
@usb_urb_reconfig.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.14, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: re-alloc urbs\0A\00", [45 x i8] zeroinitializer }, align 32
@usb_urb_initv2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 319, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: there is no data callback - this doesn't make sense\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_urb_initv2\00", [17 x i8] zeroinitializer }, align 32
@usb_urb_initv2._entry_ptr = internal global ptr @usb_urb_initv2._entry, section ".printk_index", align 4
@usb_urb_initv2._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 342, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: unknown urb-type for data transfer\0A\00", [56 x i8] zeroinitializer }, align 32
@usb_urb_initv2._entry_ptr.19 = internal global ptr @usb_urb_initv2._entry.17, section ".printk_index", align 4
@usb_urb_free_urbs.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb_urb_free_urbs\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: free urb=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_urb_alloc_bulk_urbs.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_urb_alloc_bulk_urbs\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: alloc urb=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@usb_urb_alloc_bulk_urbs.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: failed\0A\00", [20 x i8] zeroinitializer }, align 32
@usb_urb_complete._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@usb_urb_complete.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_urb_complete\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: %s urb completed status=%d length=%d/%d pack_num=%d errors=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isoc\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@usb_urb_complete._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@usb_urb_complete.descriptor.31 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.32, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: urb completion failed=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@usb_urb_complete.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.33, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: iso frame descriptor has an error=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@usb_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 73, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: unknown endpoint type in completion handler\0A\00", [47 x i8] zeroinitializer }, align 32
@usb_urb_complete._entry_ptr = internal global ptr @usb_urb_complete._entry, section ".printk_index", align 4
@usb_urb_alloc_isoc_urbs.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.23, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb_urb_alloc_isoc_urbs\00", [40 x i8] zeroinitializer }, align 32
@usb_urb_alloc_isoc_urbs.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.24, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@usb_alloc_stream_buffers.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb_alloc_stream_buffers\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: all in all I will use %lu bytes for streaming\0A\00", [45 x i8] zeroinitializer }, align 32
@usb_alloc_stream_buffers.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: alloc buf=%d failed\0A\00", [39 x i8] zeroinitializer }, align 32
@usb_alloc_stream_buffers.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.39, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: alloc buf=%d %p (dma %llu)\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967186, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 83, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 103, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 106, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 264, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 270, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 294, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 317, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 340, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 125, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 142, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 145, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 26, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 42, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 53, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 71, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 171, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 227, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 234, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [42 x i8] c"../drivers/media/usb/dvb-usb-v2/usb_urb.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 240, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @usb_urb_complete._entry, ptr @usb_urb_complete._entry_ptr, ptr @usb_urb_initv2._entry, ptr @usb_urb_initv2._entry.17, ptr @usb_urb_initv2._entry_ptr, ptr @usb_urb_initv2._entry_ptr.19, ptr @usb_urb_reconfig._entry, ptr @usb_urb_reconfig._entry.11, ptr @usb_urb_reconfig._entry_ptr, ptr @usb_urb_reconfig._entry_ptr.13, ptr @usb_urb_submitv2._entry, ptr @usb_urb_submitv2._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @usb_urb_complete._rs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @usb_urb_complete._rs.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_submitv2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_reconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_reconfig._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_initv2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_initv2._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_complete._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_complete._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_urb_killv2(ptr nocapture noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs_submitted = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_submitted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.end.do.body_crit_edge, %entry.do.body_crit_edge
  %i.012 = phi i32 [ %inc, %do.end.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_killv2.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_killv2, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_killv2.__UNIQUE_ID_ddebug387, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %i.012) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #4
  %inc = add nuw nsw i32 %i.012, 1
  %6 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %urbs_submitted, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %do.end.do.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %urbs_submitted, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_urb_submitv2(ptr noundef %stream, ptr noundef %props) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %props, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call i32 @usb_urb_reconfig(ptr noundef %stream, ptr noundef nonnull %props)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end2_crit_edge

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %urbs_initialized = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 9
  %0 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp338 = icmp sgt i32 %1, 0
  br i1 %cmp338, label %do.body.lr.ph, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.lr.ph:                                    ; preds = %if.end2
  %urbs_submitted = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %if.end19.do.body_crit_edge, %do.body.lr.ph
  %i.039 = phi i32 [ 0, %do.body.lr.ph ], [ %inc20, %if.end19.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_submitv2.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_submitv2, %if.then8)) #4
          to label %do.end [label %if.then8], !srcloc !91

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_submitv2.__UNIQUE_ID_ddebug388, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %i.039) #4
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.039
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 @usb_submit_urb(ptr noundef %5, i32 noundef 2592) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end19, label %do.end15

do.end15:                                         ; preds = %do.end
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stream, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef %i.039) #7
  %8 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urbs_submitted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11.i = icmp sgt i32 %9, 0
  br i1 %cmp11.i, label %do.end15.do.body.i_crit_edge, label %do.end15.usb_urb_killv2.exit_crit_edge

do.end15.usb_urb_killv2.exit_crit_edge:           ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_urb_killv2.exit

do.end15.do.body.i_crit_edge:                     ; preds = %do.end15
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.end15.do.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %do.end.i.do.body.i_crit_edge ], [ 0, %do.end15.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_killv2.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_submitv2, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !91

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_killv2.__UNIQUE_ID_ddebug387, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %i.012.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.012.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #4
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %14 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %urbs_submitted, align 4
  %cmp.i = icmp slt i32 %inc.i, %15
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.usb_urb_killv2.exit_crit_edge

do.end.i.usb_urb_killv2.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_urb_killv2.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

usb_urb_killv2.exit:                              ; preds = %do.end.i.usb_urb_killv2.exit_crit_edge, %do.end15.usb_urb_killv2.exit_crit_edge
  %16 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %urbs_submitted, align 4
  br label %cleanup

if.end19:                                         ; preds = %do.end
  %17 = ptrtoint ptr %urbs_submitted to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %urbs_submitted, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %urbs_submitted, align 4
  %inc20 = add nuw nsw i32 %i.039, 1
  %19 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %urbs_initialized, align 4
  %cmp3 = icmp slt i32 %inc20, %20
  br i1 %cmp3, label %if.end19.do.body_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %usb_urb_killv2.exit, %if.end2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %usb_urb_killv2.exit ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_urb_reconfig(ptr noundef %stream, ptr noundef readonly %props) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %props, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %props to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %props, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end [
    i8 1, label %if.then2
    i8 2, label %if.then8
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %u = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %u, align 4
  br label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %u9 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %props, i32 0, i32 3
  %framesize = getelementptr inbounds %struct.usb_data_stream_properties, ptr %props, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %framesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %framesize, align 4
  %7 = ptrtoint ptr %u9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %u9, align 4
  %mul = mul i32 %8, %6
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %1 to i32
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef %conv) #7
  br label %cleanup

if.end15:                                         ; preds = %if.then8, %if.then2
  %buf_size.0 = phi i32 [ %4, %if.then2 ], [ %mul, %if.then8 ]
  %buf_num = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 5
  %11 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_num, align 4
  %count = getelementptr inbounds %struct.usb_data_stream_properties, ptr %props, i32 0, i32 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %count, align 1
  %conv16 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv16)
  %cmp17 = icmp slt i32 %12, %conv16
  br i1 %cmp17, label %if.end15.do.end25_crit_edge, label %lor.lhs.false

if.end15.do.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

lor.lhs.false:                                    ; preds = %if.end15
  %buf_size19 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 6
  %15 = ptrtoint ptr %buf_size19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_size19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %buf_size.0)
  %cmp20 = icmp ult i32 %16, %buf_size.0
  br i1 %cmp20, label %lor.lhs.false.do.end25_crit_edge, label %if.end28

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false.do.end25_crit_edge, %if.end15.do.end25_crit_edge
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %props29 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1
  %19 = ptrtoint ptr %props29 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %props29, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %1)
  %cmp34 = icmp eq i8 %20, %1
  br i1 %cmp34, label %land.lhs.true, label %if.end28.do.body96_crit_edge

if.end28.do.body96_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body96

land.lhs.true:                                    ; preds = %if.end28
  %count37 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %count37 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %count37, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %14)
  %cmp41 = icmp eq i8 %22, %14
  br i1 %cmp41, label %land.lhs.true43, label %land.lhs.true.do.body96_crit_edge

land.lhs.true.do.body96_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body96

land.lhs.true43:                                  ; preds = %land.lhs.true
  %endpoint = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %endpoint, align 2
  %endpoint46 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %props, i32 0, i32 2
  %25 = ptrtoint ptr %endpoint46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %endpoint46, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp48 = icmp eq i8 %24, %26
  br i1 %cmp48, label %if.then50, label %land.lhs.true43.do.body96_crit_edge

land.lhs.true43.do.body96_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body96

if.then50:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp53 = icmp eq i8 %1, 1
  %u56 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %props, i32 0, i32 3
  %27 = ptrtoint ptr %u56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %u56, align 4
  %u59 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %u59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %u59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp61 = icmp eq i32 %28, %30
  br i1 %cmp53, label %land.lhs.true55, label %land.lhs.true69

land.lhs.true55:                                  ; preds = %if.then50
  br i1 %cmp61, label %land.lhs.true55.cleanup_crit_edge, label %land.lhs.true55.do.body96_crit_edge

land.lhs.true55.do.body96_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body96

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true69:                                  ; preds = %if.then50
  br i1 %cmp61, label %land.lhs.true77, label %land.lhs.true69.do.body96_crit_edge

land.lhs.true69.do.body96_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body96

land.lhs.true77:                                  ; preds = %land.lhs.true69
  %framesize79 = getelementptr inbounds %struct.usb_data_stream_properties, ptr %props, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %framesize79 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %framesize79, align 4
  %framesize82 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %framesize82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %framesize82, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp83 = icmp eq i32 %32, %34
  br i1 %cmp83, label %land.lhs.true85, label %land.lhs.true77.do.body96_crit_edge

land.lhs.true77.do.body96_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body96

land.lhs.true85:                                  ; preds = %land.lhs.true77
  %interval = getelementptr inbounds %struct.usb_data_stream_properties, ptr %props, i32 0, i32 3, i32 0, i32 2
  %35 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %interval, align 4
  %interval89 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3, i32 0, i32 2
  %37 = ptrtoint ptr %interval89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %interval89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp90 = icmp eq i32 %36, %38
  br i1 %cmp90, label %land.lhs.true85.cleanup_crit_edge, label %land.lhs.true85.do.body96_crit_edge

land.lhs.true85.do.body96_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body96

land.lhs.true85.cleanup_crit_edge:                ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body96:                                        ; preds = %land.lhs.true85.do.body96_crit_edge, %land.lhs.true77.do.body96_crit_edge, %land.lhs.true69.do.body96_crit_edge, %land.lhs.true55.do.body96_crit_edge, %land.lhs.true43.do.body96_crit_edge, %land.lhs.true.do.body96_crit_edge, %if.end28.do.body96_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_reconfig.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_reconfig, %if.then100)) #4
          to label %do.end105 [label %if.then100], !srcloc !91

if.then100:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stream, align 4
  %dev102 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_reconfig.__UNIQUE_ID_ddebug397, ptr noundef %dev102, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #4
  br label %do.end105

do.end105:                                        ; preds = %if.then100, %do.body96
  tail call fastcc void @usb_urb_free_urbs(ptr noundef %stream)
  %41 = call ptr @memcpy(ptr %props29, ptr %props, i32 16)
  %42 = ptrtoint ptr %props to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %props, align 4
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %43, label %do.end105.cleanup_crit_edge [
    i8 1, label %if.then112
    i8 2, label %if.then119
  ]

do.end105.cleanup_crit_edge:                      ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then112:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #6
  %call113 = tail call fastcc i32 @usb_urb_alloc_bulk_urbs(ptr noundef %stream)
  br label %cleanup

if.then119:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #6
  %call120 = tail call fastcc i32 @usb_urb_alloc_isoc_urbs(ptr noundef %stream)
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %if.then112, %do.end105.cleanup_crit_edge, %land.lhs.true85.cleanup_crit_edge, %land.lhs.true55.cleanup_crit_edge, %do.end25, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end25 ], [ %call113, %if.then112 ], [ %call120, %if.then119 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true55.cleanup_crit_edge ], [ 0, %land.lhs.true85.cleanup_crit_edge ], [ 0, %do.end105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb_urb_free_urbs(ptr nocapture noundef %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs_submitted.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 10
  %0 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %urbs_submitted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.i = icmp sgt i32 %1, 0
  br i1 %cmp11.i, label %entry.do.body.i_crit_edge, label %entry.usb_urb_killv2.exit_crit_edge

entry.usb_urb_killv2.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_urb_killv2.exit

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %do.end.i.do.body.i_crit_edge ], [ 0, %entry.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_killv2.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_free_urbs, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !91

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_killv2.__UNIQUE_ID_ddebug387, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %i.012.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.body.i
  %arrayidx.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #4
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %6 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %urbs_submitted.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.usb_urb_killv2.exit_crit_edge

do.end.i.usb_urb_killv2.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_urb_killv2.exit

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

usb_urb_killv2.exit:                              ; preds = %do.end.i.usb_urb_killv2.exit_crit_edge, %entry.usb_urb_killv2.exit_crit_edge
  %8 = ptrtoint ptr %urbs_submitted.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %urbs_submitted.i, align 4
  %urbs_initialized = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 9
  %9 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %urbs_initialized, align 4
  %i.02 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.02)
  %cmp3 = icmp sgt i32 %i.02, -1
  br i1 %cmp3, label %usb_urb_killv2.exit.for.body_crit_edge, label %usb_urb_killv2.exit.for.end_crit_edge

usb_urb_killv2.exit.for.end_crit_edge:            ; preds = %usb_urb_killv2.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

usb_urb_killv2.exit.for.body_crit_edge:           ; preds = %usb_urb_killv2.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %usb_urb_killv2.exit.for.body_crit_edge
  %i.04 = phi i32 [ %i.0, %for.inc.for.body_crit_edge ], [ %i.02, %usb_urb_killv2.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.04
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_free_urbs.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_free_urbs, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !91

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_free_urbs.__UNIQUE_ID_ddebug389, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %i.04) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %16) #4
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.04, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %usb_urb_killv2.exit.for.end_crit_edge
  %17 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %urbs_initialized, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_urb_alloc_bulk_urbs(ptr noundef %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp79.not = icmp eq i8 %1, 0
  br i1 %cmp79.not, label %entry.cleanup_crit_edge, label %do.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %endpoint = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 2
  %u = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3
  %urbs_initialized = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %if.end33.do.body_crit_edge, %do.body.lr.ph
  %i.080 = phi i32 [ 0, %do.body.lr.ph ], [ %inc46, %if.end33.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_alloc_bulk_urbs.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_alloc_bulk_urbs, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_alloc_bulk_urbs.__UNIQUE_ID_ddebug390, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %i.080) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #4
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.080
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %do.body9, label %if.end33

do.body9:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_alloc_bulk_urbs.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_alloc_bulk_urbs, %if.then21)) #4
          to label %do.end26 [label %if.then21], !srcloc !91

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream, align 4
  %dev23 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_alloc_bulk_urbs.__UNIQUE_ID_ddebug391, ptr noundef %dev23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #4
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.body9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.080)
  %cmp2881.not = icmp eq i32 %i.080, 0
  br i1 %cmp2881.not, label %do.end26.cleanup_crit_edge, label %do.end26.for.body30_crit_edge

do.end26.for.body30_crit_edge:                    ; preds = %do.end26
  br label %for.body30

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %do.end26.for.body30_crit_edge
  %j.082 = phi i32 [ %inc, %for.body30.for.body30_crit_edge ], [ 0, %do.end26.for.body30_crit_edge ]
  %arrayidx32 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %j.082
  %7 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx32, align 4
  tail call void @usb_free_urb(ptr noundef %8) #4
  %inc = add nuw nsw i32 %j.082, 1
  %exitcond.not = icmp eq i32 %inc, %i.080
  br i1 %exitcond.not, label %for.body30.cleanup_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body30

for.body30.cleanup_crit_edge:                     ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %do.end
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream, align 4
  %11 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %endpoint, align 2
  %conv39 = zext i8 %12 to i32
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %shl.i = shl i32 %14, 8
  %shl1.i = shl nuw nsw i32 %conv39, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or41 = or i32 %or.i, -1073741696
  %arrayidx42 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %i.080
  %15 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx42, align 4
  %17 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %u, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 8
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %10, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 10
  %20 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or41, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 14
  %21 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 19
  %22 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %18, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 28
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @usb_urb_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call4, i32 0, i32 27
  %24 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %stream, ptr %context4.i, align 4
  %25 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %urbs_initialized, align 4
  %inc44 = add i32 %26, 1
  store i32 %inc44, ptr %urbs_initialized, align 4
  %inc46 = add nuw nsw i32 %i.080, 1
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %count, align 1
  %conv = zext i8 %28 to i32
  %cmp = icmp ult i32 %inc46, %conv
  br i1 %cmp, label %if.end33.do.body_crit_edge, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33.do.body_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

cleanup:                                          ; preds = %if.end33.cleanup_crit_edge, %for.body30.cleanup_crit_edge, %do.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end26.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %for.body30.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_urb_alloc_isoc_urbs(ptr noundef %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp137.not = icmp eq i8 %1, 0
  br i1 %cmp137.not, label %entry.cleanup80_crit_edge, label %for.body.lr.ph

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup80

for.body.lr.ph:                                   ; preds = %entry
  %u = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3
  %endpoint = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 2
  %interval = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3, i32 0, i32 2
  %framesize = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3, i32 0, i32 1
  %urbs_initialized = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 9
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc78 = add nuw nsw i32 %i.0138, 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %count, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc78, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup80_crit_edge

for.cond.cleanup80_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup80

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc78, %for.cond.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_alloc_isoc_urbs.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_alloc_isoc_urbs, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_alloc_isoc_urbs.__UNIQUE_ID_ddebug392, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.35, i32 noundef %i.0138) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %for.body
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u, align 4
  %call5 = tail call ptr @usb_alloc_urb(i32 noundef %7, i32 noundef 2592) #4
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %i.0138
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %do.body10, label %if.end34

do.body10:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_alloc_isoc_urbs.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_alloc_isoc_urbs, %if.then22)) #4
          to label %do.end27 [label %if.then22], !srcloc !91

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_alloc_isoc_urbs.__UNIQUE_ID_ddebug393, ptr noundef %dev24, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.35) #4
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0138)
  %cmp29134.not = icmp eq i32 %i.0138, 0
  br i1 %cmp29134.not, label %do.end27.cleanup80_crit_edge, label %do.end27.for.body31_crit_edge

do.end27.for.body31_crit_edge:                    ; preds = %do.end27
  br label %for.body31

do.end27.cleanup80_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup80

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %do.end27.for.body31_crit_edge
  %j.0135 = phi i32 [ %inc, %for.body31.for.body31_crit_edge ], [ 0, %do.end27.for.body31_crit_edge ]
  %arrayidx33 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 4, i32 %j.0135
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx33, align 4
  tail call void @usb_free_urb(ptr noundef %12) #4
  %inc = add nuw nsw i32 %j.0135, 1
  %exitcond.not = icmp eq i32 %inc, %i.0138
  br i1 %exitcond.not, label %for.body31.cleanup_crit_edge, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body31

for.body31.cleanup_crit_edge:                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %do.end
  %13 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream, align 4
  %dev38 = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 8
  %15 = ptrtoint ptr %dev38 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev38, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 27
  %16 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %stream, ptr %context, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 28
  %17 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @usb_urb_complete, ptr %complete, align 4
  %18 = load ptr, ptr %stream, align 4
  %19 = ptrtoint ptr %endpoint to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %endpoint, align 2
  %conv41 = zext i8 %20 to i32
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 8
  %shl.i = shl i32 %22, 8
  %shl1.i = shl nuw nsw i32 %conv41, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or43 = or i32 %or.i, 128
  %pipe = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 10
  %23 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or43, ptr %pipe, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 13
  %24 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %transfer_flags, align 4
  %25 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interval, align 4
  %interval46 = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 25
  %27 = ptrtoint ptr %interval46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %interval46, align 4
  %28 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %u, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 24
  %30 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %number_of_packets, align 4
  %31 = ptrtoint ptr %framesize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %framesize, align 4
  %33 = load i32, ptr %u, align 4
  %mul = mul i32 %33, %32
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 19
  %34 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul, ptr %transfer_buffer_length, align 4
  %arrayidx55 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %i.0138
  %35 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx55, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call5, i32 0, i32 14
  %37 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %transfer_buffer, align 4
  %38 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp60131 = icmp sgt i32 %38, 0
  br i1 %cmp60131, label %if.end34.for.body62_crit_edge, label %if.end34.for.end74_crit_edge

if.end34.for.end74_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end74

if.end34.for.body62_crit_edge:                    ; preds = %if.end34
  br label %for.body62

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %if.end34.for.body62_crit_edge
  %j.1133 = phi i32 [ %inc73, %for.body62.for.body62_crit_edge ], [ 0, %if.end34.for.body62_crit_edge ]
  %frame_offset.0132 = phi i32 [ %add, %for.body62.for.body62_crit_edge ], [ 0, %if.end34.for.body62_crit_edge ]
  %arrayidx63 = getelementptr %struct.urb, ptr %call5, i32 0, i32 29, i32 %j.1133
  %39 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %frame_offset.0132, ptr %arrayidx63, align 4
  %40 = ptrtoint ptr %framesize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %framesize, align 4
  %length = getelementptr %struct.urb, ptr %call5, i32 0, i32 29, i32 %j.1133, i32 1
  %42 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %length, align 4
  %43 = load i32, ptr %framesize, align 4
  %add = add i32 %43, %frame_offset.0132
  %inc73 = add nuw nsw i32 %j.1133, 1
  %44 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %u, align 4
  %cmp60 = icmp slt i32 %inc73, %45
  br i1 %cmp60, label %for.body62.for.body62_crit_edge, label %for.body62.for.end74_crit_edge

for.body62.for.end74_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end74

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body62

for.end74:                                        ; preds = %for.body62.for.end74_crit_edge, %if.end34.for.end74_crit_edge
  %46 = ptrtoint ptr %urbs_initialized to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %urbs_initialized, align 4
  %inc75 = add i32 %47, 1
  store i32 %inc75, ptr %urbs_initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end74, %for.body31.cleanup_crit_edge
  br i1 %tobool8.not, label %cleanup.cleanup80_crit_edge, label %for.cond

cleanup.cleanup80_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup80

cleanup80:                                        ; preds = %cleanup.cleanup80_crit_edge, %do.end27.cleanup80_crit_edge, %for.cond.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup80_crit_edge ], [ -12, %do.end27.cleanup80_crit_edge ], [ 0, %for.cond.cleanup80_crit_edge ], [ -12, %cleanup.cleanup80_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_urb_initv2(ptr noundef %stream, ptr noundef readonly %props) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream, null
  %tobool1.not = icmp eq ptr %props, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %props2 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %props2, ptr %props, i32 16)
  %complete = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 3
  %1 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %complete, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stream, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %props2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %props2, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %6, label %do.end30 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end5
  %count = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %count, align 1
  %conv8 = zext i8 %9 to i32
  %u = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %u, align 4
  %call = tail call fastcc i32 @usb_alloc_stream_buffers(ptr noundef nonnull %stream, i32 noundef %conv8, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end12

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call fastcc i32 @usb_urb_alloc_bulk_urbs(ptr noundef nonnull %stream)
  br label %cleanup

sw.bb14:                                          ; preds = %if.end5
  %count16 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %count16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %count16, align 1
  %conv17 = zext i8 %13 to i32
  %u19 = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3
  %framesize = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 1, i32 3, i32 0, i32 1
  %14 = ptrtoint ptr %framesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %framesize, align 4
  %16 = ptrtoint ptr %u19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %u19, align 4
  %mul = mul i32 %17, %15
  %call22 = tail call fastcc i32 @usb_alloc_stream_buffers(ptr noundef nonnull %stream, i32 noundef %conv17, i32 noundef %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %sw.bb14.cleanup_crit_edge, label %if.end26

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call fastcc i32 @usb_urb_alloc_isoc_urbs(ptr noundef nonnull %stream)
  br label %cleanup

do.end30:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stream, align 4
  %dev32 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end26, %sw.bb14.cleanup_crit_edge, %if.end12, %sw.bb.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end30 ], [ %call27, %if.end26 ], [ %call13, %if.end12 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call22, %sw.bb14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_alloc_stream_buffers(ptr nocapture noundef %stream, i32 noundef %num, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_num = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 5
  %0 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %buf_num, align 4
  %buf_size = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 6
  %1 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %buf_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_alloc_stream_buffers.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_alloc_stream_buffers, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !91

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %mul = mul i32 %size, %num
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_alloc_stream_buffers.__UNIQUE_ID_ddebug394, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.36, i32 noundef %mul) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %buf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp89 = icmp sgt i32 %num, 0
  br i1 %cmp89, label %for.body.lr.ph, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.body.lr.ph:                                   ; preds = %do.end
  %state = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 2
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end54.if.end8.i.i_crit_edge, %for.body.lr.ph
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 2848) #8
  %5 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf_num, align 4
  %arrayidx = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %8 = load i32, ptr %buf_num, align 4
  %arrayidx9 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %do.body12, label %do.body32

do.body12:                                        ; preds = %if.end8.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_alloc_stream_buffers.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_alloc_stream_buffers, %if.then24)) #4
          to label %do.end29 [label %if.then24], !srcloc !91

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_alloc_stream_buffers.__UNIQUE_ID_ddebug395, ptr noundef %dev26, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %14) #4
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body12
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state, align 4
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %do.end29.usb_free_stream_buffers.exit_crit_edge, label %while.cond.preheader.i

do.end29.usb_free_stream_buffers.exit_crit_edge:  ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_free_stream_buffers.exit

while.cond.preheader.i:                           ; preds = %do.end29
  %18 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool1.not1.i = icmp eq i32 %19, 0
  br i1 %tobool1.not1.i, label %while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_free_stream_buffers.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %20 = phi i32 [ %25, %while.body.i.while.body.i_crit_edge ], [ %19, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i32 %20, -1
  %21 = ptrtoint ptr %buf_num to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %dec.i, ptr %buf_num, align 4
  %arrayidx.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %dec.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %23) #4
  %24 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_num, align 4
  %tobool1.not.i = icmp eq i32 %25, 0
  br i1 %tobool1.not.i, label %while.body.i.usb_free_stream_buffers.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.usb_free_stream_buffers.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_free_stream_buffers.exit

usb_free_stream_buffers.exit:                     ; preds = %while.body.i.usb_free_stream_buffers.exit_crit_edge, %while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge, %do.end29.usb_free_stream_buffers.exit_crit_edge
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %state, align 4
  %28 = and i8 %27, -2
  store i8 %28, ptr %state, align 4
  br label %return

do.body32:                                        ; preds = %if.end8.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_alloc_stream_buffers.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_alloc_stream_buffers, %if.then44)) #4
          to label %do.end54 [label %if.then44], !srcloc !91

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stream, align 4
  %dev46 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_num, align 4
  %arrayidx50 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %32
  %33 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx50, align 4
  %arrayidx52 = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 8, i32 %32
  %35 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx52, align 4
  %conv = zext i32 %36 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_alloc_stream_buffers.__UNIQUE_ID_ddebug396, ptr noundef %dev46, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.36, i32 noundef %32, ptr noundef %34, i64 noundef %conv) #4
  br label %do.end54

do.end54:                                         ; preds = %if.then44, %do.body32
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %state, align 4
  %39 = or i8 %38, 1
  store i8 %39, ptr %state, align 4
  %40 = ptrtoint ptr %buf_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_num, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %buf_num, align 4
  %cmp = icmp slt i32 %inc, %num
  br i1 %cmp, label %do.end54.if.end8.i.i_crit_edge, label %do.end54.return_crit_edge

do.end54.return_crit_edge:                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end54.if.end8.i.i_crit_edge:                   ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i.i

return:                                           ; preds = %do.end54.return_crit_edge, %usb_free_stream_buffers.exit, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -12, %usb_free_stream_buffers.exit ], [ 0, %do.end.return_crit_edge ], [ 0, %do.end54.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_urb_exitv2(ptr nocapture noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @usb_urb_free_urbs(ptr noundef %stream)
  %state.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.usb_free_stream_buffers.exit_crit_edge, label %while.cond.preheader.i

entry.usb_free_stream_buffers.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_free_stream_buffers.exit

while.cond.preheader.i:                           ; preds = %entry
  %buf_num.i = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 5
  %3 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buf_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not1.i = icmp eq i32 %4, 0
  br i1 %tobool1.not1.i, label %while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_free_stream_buffers.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %5 = phi i32 [ %10, %while.body.i.while.body.i_crit_edge ], [ %4, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i32 %5, -1
  %6 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec.i, ptr %buf_num.i, align 4
  %arrayidx.i = getelementptr %struct.usb_data_stream, ptr %stream, i32 0, i32 7, i32 %dec.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %8) #4
  %9 = ptrtoint ptr %buf_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buf_num.i, align 4
  %tobool1.not.i = icmp eq i32 %10, 0
  br i1 %tobool1.not.i, label %while.body.i.usb_free_stream_buffers.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.body.i.usb_free_stream_buffers.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %usb_free_stream_buffers.exit

usb_free_stream_buffers.exit:                     ; preds = %while.body.i.usb_free_stream_buffers.exit_crit_edge, %while.cond.preheader.i.usb_free_stream_buffers.exit_crit_edge, %entry.usb_free_stream_buffers.exit_crit_edge
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state.i, align 4
  %13 = and i8 %12, -2
  store i8 %13, ptr %state.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_urb_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_complete.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_complete, %land.lhs.true)) #4
          to label %do.end [label %land.lhs.true], !srcloc !91

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @usb_urb_complete._rs, ptr noundef nonnull @.str.26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %cmp = icmp ult i32 %3, 1073741824
  %cond = select i1 %cmp, ptr @.str.28, ptr @.str.29
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_buffer_length, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %12 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %number_of_packets, align 4
  %error_count = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 26
  %14 = ptrtoint ptr %error_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error_count, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_complete.descriptor, ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  %status5 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %16 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status5, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %17, label %do.body7 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 -110, label %do.end.sw.epilog_crit_edge141
    i32 -104, label %do.end.cleanup_crit_edge
    i32 -2, label %do.end.cleanup_crit_edge142
    i32 -108, label %do.end.cleanup_crit_edge143
  ]

do.end.cleanup_crit_edge143:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.cleanup_crit_edge142:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end.sw.epilog_crit_edge141:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_complete.descriptor.31, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_complete, %land.lhs.true19)) #4
          to label %sw.epilog [label %land.lhs.true19], !srcloc !91

land.lhs.true19:                                  ; preds = %do.body7
  %call20 = tail call i32 @___ratelimit(ptr noundef nonnull @usb_urb_complete._rs.30, ptr noundef nonnull @.str.26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.sw.epilog_crit_edge, label %if.then22

land.lhs.true19.sw.epilog_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %status5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_complete.descriptor.31, ptr noundef %dev24, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.26, i32 noundef %22) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %land.lhs.true19.sw.epilog_crit_edge, %do.body7, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge141
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %23 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transfer_buffer, align 4
  %25 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %shr, label %do.end84 [
    i32 0, label %for.cond.preheader
    i32 3, label %sw.bb74
  ]

for.cond.preheader:                               ; preds = %sw.epilog
  %number_of_packets30 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %26 = ptrtoint ptr %number_of_packets30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %number_of_packets30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp31139 = icmp sgt i32 %27, 0
  br i1 %cmp31139, label %for.body.lr.ph, label %for.cond.preheader.sw.epilog87_crit_edge

for.cond.preheader.sw.epilog87_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog87

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %complete = getelementptr inbounds %struct.usb_data_stream, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end67.for.body_crit_edge, %for.body.lr.ph
  %i.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end67.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0140
  %status32 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0140, i32 3
  %28 = ptrtoint ptr %status32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp33.not = icmp eq i32 %29, 0
  br i1 %cmp33.not, label %if.else, label %do.body35

do.body35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_urb_complete.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_urb_complete, %if.then47)) #4
          to label %if.end67 [label %if.then47], !srcloc !91

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %status32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_urb_complete.__UNIQUE_ID_ddebug386, ptr noundef %dev49, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, i32 noundef %33) #4
  br label %if.end67

if.else:                                          ; preds = %for.body
  %actual_length58 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0140, i32 2
  %34 = ptrtoint ptr %actual_length58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual_length58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp59.not = icmp eq i32 %35, 0
  br i1 %cmp59.not, label %if.else.if.end67_crit_edge, label %if.then60

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %complete, align 4
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 %39
  tail call void %37(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %35) #4
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %if.else.if.end67_crit_edge, %if.then47, %do.body35
  %40 = ptrtoint ptr %status32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %status32, align 4
  %actual_length73 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0140, i32 2
  %41 = ptrtoint ptr %actual_length73 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %actual_length73, align 4
  %inc = add nuw nsw i32 %i.0140, 1
  %42 = ptrtoint ptr %number_of_packets30 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %number_of_packets30, align 4
  %cmp31 = icmp slt i32 %inc, %43
  br i1 %cmp31, label %if.end67.for.body_crit_edge, label %if.end67.sw.epilog87_crit_edge

if.end67.sw.epilog87_crit_edge:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog87

if.end67.for.body_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

sw.bb74:                                          ; preds = %sw.epilog
  %actual_length75 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %44 = ptrtoint ptr %actual_length75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %actual_length75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp76.not = icmp eq i32 %45, 0
  br i1 %cmp76.not, label %sw.bb74.sw.epilog87_crit_edge, label %if.then77

sw.bb74.sw.epilog87_crit_edge:                    ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog87

if.then77:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #6
  %complete78 = getelementptr inbounds %struct.usb_data_stream, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %complete78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %complete78, align 4
  tail call void %47(ptr noundef %1, ptr noundef %24, i32 noundef %45) #4
  br label %sw.epilog87

do.end84:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %dev86 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str) #7
  br label %cleanup

sw.epilog87:                                      ; preds = %if.then77, %sw.bb74.sw.epilog87_crit_edge, %if.end67.sw.epilog87_crit_edge, %for.cond.preheader.sw.epilog87_crit_edge
  %call88 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog87, %do.end84, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge142, %do.end.cleanup_crit_edge143
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !72, !74, !75, !76, !78, !79, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 83, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @usb_urb_killv2.__UNIQUE_ID_ddebug387, !1, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 103, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @usb_urb_submitv2.__UNIQUE_ID_ddebug388, !7, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 106, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @usb_urb_submitv2._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @usb_urb_submitv2._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 264, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @usb_urb_reconfig._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @usb_urb_reconfig._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 270, i32 3}
!23 = !{ptr @usb_urb_reconfig._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @usb_urb_reconfig._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 294, i32 2}
!27 = !{ptr @usb_urb_reconfig.__UNIQUE_ID_ddebug397, !26, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 317, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @usb_urb_initv2._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @usb_urb_initv2._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 340, i32 3}
!35 = !{ptr @usb_urb_initv2._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @usb_urb_initv2._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 125, i32 4}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @usb_urb_free_urbs.__UNIQUE_ID_ddebug389, !38, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 142, i32 3}
!43 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @usb_urb_alloc_bulk_urbs.__UNIQUE_ID_ddebug390, !42, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 145, i32 4}
!47 = !{ptr @usb_urb_alloc_bulk_urbs.__UNIQUE_ID_ddebug391, !46, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 26, i32 2}
!50 = !{ptr @usb_urb_complete._rs, !49, !"_rs", i1 false, i1 false}
!51 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @usb_urb_complete.descriptor, !49, !"descriptor", i1 false, i1 false}
!54 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @usb_urb_complete._rs.30, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 42, i32 3}
!58 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @usb_urb_complete.descriptor.31, !57, !"descriptor", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 53, i32 5}
!62 = !{ptr @usb_urb_complete.__UNIQUE_ID_ddebug386, !61, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 71, i32 3}
!65 = !{ptr @usb_urb_complete._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @usb_urb_complete._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 171, i32 3}
!69 = !{ptr @usb_urb_alloc_isoc_urbs.__UNIQUE_ID_ddebug392, !68, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!70 = !{ptr @usb_urb_alloc_isoc_urbs.__UNIQUE_ID_ddebug393, !71, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 175, i32 4}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 227, i32 2}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @usb_alloc_stream_buffers.__UNIQUE_ID_ddebug394, !73, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 234, i32 4}
!78 = !{ptr @usb_alloc_stream_buffers.__UNIQUE_ID_ddebug395, !77, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb-v2/usb_urb.c", i32 240, i32 3}
!81 = !{ptr @usb_alloc_stream_buffers.__UNIQUE_ID_ddebug396, !80, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148955559, i64 2148955564, i64 2148955577, i64 2148955621, i64 2148955655, i64 2148955676}
