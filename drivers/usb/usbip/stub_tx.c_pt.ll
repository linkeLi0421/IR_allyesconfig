; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/stub_tx.c_pt.bc'
source_filename = "../drivers/usb/usbip/stub_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stub_device = type { ptr, %struct.usbip_device, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.stub_unlink = type { i32, %struct.list_head, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.stub_priv = type { i32, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.70, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.59, %union.anon.60 }
%union.anon.59 = type { ptr }
%union.anon.60 = type { i64 }
%union.anon.70 = type { ptr }
%struct.usbip_header = type { %struct.usbip_header_basic, %union.anon.77 }
%struct.usbip_header_basic = type { i32, i32, i32, i32, i32 }
%union.anon.77 = type { %struct.usbip_header_cmd_submit }
%struct.usbip_header_cmd_submit = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.kvec = type { ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@usbip_debug_flag = external dso_local local_unnamed_addr global i32, align 4
@stub_complete.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usbip_host\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stub_complete\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/usbip/stub_tx.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"complete! status %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"usbip_host: %s:%d: complete! status %d\0A\00", [56 x i8] zeroinitializer }, align 32
@stub_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 54, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"stopped by a call to usb_kill_urb() because of cleaning up a virtual connection\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stub_complete._entry_ptr = internal global ptr @stub_complete._entry, section ".printk_index", align 4
@stub_complete._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 58, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unlinked by a call to usb_unlink_urb()\0A\00", [56 x i8] zeroinitializer }, align 32
@stub_complete._entry_ptr.10 = internal global ptr @stub_complete._entry.8, section ".printk_index", align 4
@stub_complete._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 62, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"endpoint %d is stalled\0A\00", [40 x i8] zeroinitializer }, align 32
@stub_complete._entry_ptr.13 = internal global ptr @stub_complete._entry.11, section ".printk_index", align 4
@stub_complete._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 65, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"device removed?\0A\00", [47 x i8] zeroinitializer }, align 32
@stub_complete._entry_ptr.16 = internal global ptr @stub_complete._entry.14, section ".printk_index", align 4
@stub_complete._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 70, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"urb completion with non-zero status %d\0A\00", [56 x i8] zeroinitializer }, align 32
@stub_complete._entry_ptr.19 = internal global ptr @stub_complete._entry.17, section ".printk_index", align 4
@stub_complete.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 0, i8 23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ignore urb for closed connection\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"usbip_host: %s:%d: ignore urb for closed connection\0A\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stub_send_ret_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 179, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"urb: actual_length %d transfer_buffer null\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stub_send_ret_submit\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@stub_send_ret_submit._entry_ptr = internal global ptr @stub_send_ret_submit._entry, section ".printk_index", align 4
@stub_send_ret_submit.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"setup txdata seqnum: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"usbip_host: %s:%d: setup txdata seqnum: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@stub_send_ret_submit._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 290, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"actual length of urb %d does not match iso packet sizes %zu\0A\00", [35 x i8] zeroinitializer }, align 32
@stub_send_ret_submit._entry_ptr.29 = internal global ptr @stub_send_ret_submit._entry.27, section ".printk_index", align 4
@stub_send_ret_submit._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 321, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sendmsg failed!, retval %d for %zd\0A\00", [60 x i8] zeroinitializer }, align 32
@stub_send_ret_submit._entry_ptr.32 = internal global ptr @stub_send_ret_submit._entry.30, section ".printk_index", align 4
@stub_send_ret_unlink.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stub_send_ret_unlink\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"setup ret unlink %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"usbip_host: %s:%d: setup ret unlink %lu\0A\00", [55 x i8] zeroinitializer }, align 32
@stub_send_ret_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.33, ptr @.str.2, i32 396, ptr @.str.24, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@stub_send_ret_unlink._entry_ptr = internal global ptr @stub_send_ret_unlink._entry, section ".printk_index", align 4
@stub_send_ret_unlink.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.36, i8 0, i8 100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send txdata\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"usbip_host: %s:%d: send txdata\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967264, i64 4294967294]
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 46, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 53, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 57, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 61, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 65, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 68, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 93, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 177, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 204, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 287, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 319, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 381, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 394, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [31 x i8] c"../drivers/usb/usbip/stub_tx.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 401, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @stub_complete._entry, ptr @stub_complete._entry.11, ptr @stub_complete._entry.14, ptr @stub_complete._entry.17, ptr @stub_complete._entry.8, ptr @stub_complete._entry_ptr, ptr @stub_complete._entry_ptr.10, ptr @stub_complete._entry_ptr.13, ptr @stub_complete._entry_ptr.16, ptr @stub_complete._entry_ptr.19, ptr @stub_send_ret_submit._entry, ptr @stub_send_ret_submit._entry.27, ptr @stub_send_ret_submit._entry.30, ptr @stub_send_ret_submit._entry_ptr, ptr @stub_send_ret_submit._entry_ptr.29, ptr @stub_send_ret_submit._entry_ptr.32, ptr @stub_send_ret_unlink._entry, ptr @stub_send_ret_unlink._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_complete._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_complete._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_complete._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_complete._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_send_ret_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_send_ret_submit._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_send_ret_submit._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_send_ret_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stub_enqueue_ret_unlink(ptr noundef %sdev, i32 noundef %seqnum, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ud = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 1
  tail call void @usbip_event_add(ptr noundef %ud, i32 noundef 9) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %seqnum, ptr %call7.i.i, align 8
  %status2 = getelementptr inbounds %struct.stub_unlink, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %status, ptr %status2, align 4
  %list = getelementptr inbounds %struct.stub_unlink, ptr %call7.i.i, i32 0, i32 1
  %unlink_tx = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %4, ptr noundef %unlink_tx) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %prev.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %unlink_tx, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.stub_unlink, ptr %call7.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stub_complete(ptr nocapture noundef readonly %urb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %sdev1 = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %4 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_complete.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_complete, %do.end10)) #7
          to label %if.then7 [label %do.end10], !srcloc !72

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stub_complete.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 46, i32 noundef %6) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2, %entry.do.end10_crit_edge
  %status11 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %7 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status11, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end37 [
    i32 0, label %do.end10.sw.epilog_crit_edge
    i32 -2, label %do.end14
    i32 -104, label %do.end19
    i32 -32, label %do.end25
    i32 -108, label %do.end32
  ]

do.end10.sw.epilog_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end14:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dev15 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef nonnull @.str.5) #11
  br label %cleanup

do.end19:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 4
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev21, ptr noundef nonnull @.str.9) #11
  br label %sw.epilog

do.end25:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %14 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev26, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %16 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %17, 15
  %and28 = and i32 %shr, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev27, ptr noundef nonnull @.str.12, i32 noundef %and28) #11
  br label %sw.epilog

do.end32:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %18 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev33, align 4
  %dev34 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev34, ptr noundef nonnull @.str.15) #11
  br label %sw.epilog

do.end37:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %dev38 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %20 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev38, align 4
  %dev39 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39, ptr noundef nonnull @.str.18, i32 noundef %8) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end37, %do.end32, %do.end25, %do.end19, %do.end10.sw.epilog_crit_edge
  %sgl = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgl, align 4
  %tobool41.not = icmp eq ptr %23, null
  br i1 %tobool41.not, label %sw.epilog.do.body55_crit_edge, label %if.then42

sw.epilog.do.body55_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

if.then42:                                        ; preds = %sw.epilog
  %completed_urbs = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %completed_urbs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %completed_urbs, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %completed_urbs, align 4
  %26 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool44.not = icmp eq i32 %27, 0
  br i1 %tobool44.not, label %if.then42.if.end49_crit_edge, label %land.lhs.true

if.then42.if.end49_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

land.lhs.true:                                    ; preds = %if.then42
  %urb_status = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %urb_status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %urb_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool45.not = icmp eq i32 %29, 0
  br i1 %tobool45.not, label %if.then46, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %urb_status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %urb_status, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %land.lhs.true.if.end49_crit_edge, %if.then42.if.end49_crit_edge
  %31 = ptrtoint ptr %completed_urbs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %completed_urbs, align 4
  %num_urbs = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %num_urbs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_urbs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp = icmp slt i32 %32, %34
  br i1 %cmp, label %if.end49.cleanup_crit_edge, label %if.end49.do.body55_crit_edge

if.end49.do.body55_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body55

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body55:                                        ; preds = %if.end49.do.body55_crit_edge, %sw.epilog.do.body55_crit_edge
  %priv_lock = getelementptr inbounds %struct.stub_device, ptr %3, i32 0, i32 3
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock) #7
  %tcp_socket = getelementptr inbounds %struct.stub_device, ptr %3, i32 0, i32 1, i32 5
  %35 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tcp_socket, align 4
  %cmp64 = icmp eq ptr %36, null
  br i1 %cmp64, label %do.body67, label %if.else

do.body67:                                        ; preds = %do.body55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %37 = load i32, ptr @usbip_debug_flag, align 4
  %and68 = and i32 %37, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body67.if.end97_crit_edge, label %do.body71

do.body67.if.end97_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.body71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_complete.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_complete, %if.end97)) #7
          to label %if.then85 [label %if.end97], !srcloc !72

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stub_complete.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 93) #7
  br label %if.end97

if.else:                                          ; preds = %do.body55
  %unlinking = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 8
  %38 = ptrtoint ptr %unlinking to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %unlinking, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool92.not = icmp eq i32 %39, 0
  br i1 %tobool92.not, label %if.else95, label %if.then93

if.then93:                                        ; preds = %if.else
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %42 = ptrtoint ptr %status11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %status11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 2848, i32 noundef 16) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  %ud.i = getelementptr inbounds %struct.stub_device, ptr %3, i32 0, i32 1
  tail call void @usbip_event_add(ptr noundef %ud.i, i32 noundef 9) #7
  br label %stub_enqueue_ret_unlink.exit

if.end.i:                                         ; preds = %if.then93
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %41, ptr %call7.i.i.i, align 8
  %status2.i = getelementptr inbounds %struct.stub_unlink, ptr %call7.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %status2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %status2.i, align 4
  %list.i = getelementptr inbounds %struct.stub_unlink, ptr %call7.i.i.i, i32 0, i32 1
  %unlink_tx.i = getelementptr inbounds %struct.stub_device, ptr %3, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.stub_device, ptr %3, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %48, ptr noundef %unlink_tx.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.stub_enqueue_ret_unlink.exit_crit_edge

if.end.i.stub_enqueue_ret_unlink.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stub_enqueue_ret_unlink.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %list.i, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %unlink_tx.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.stub_unlink, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i, align 8
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %list.i, ptr %48, align 4
  br label %stub_enqueue_ret_unlink.exit

stub_enqueue_ret_unlink.exit:                     ; preds = %if.end.i.i.i, %if.end.i.stub_enqueue_ret_unlink.exit_crit_edge, %if.then.i
  tail call void @stub_free_priv_and_urb(ptr noundef %1) #7
  br label %if.end97

if.else95:                                        ; preds = %if.else
  %list = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 1
  %priv_tx = getelementptr inbounds %struct.stub_device, ptr %3, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else95.__list_del_entry.exit.i_crit_edge

if.else95.__list_del_entry.exit.i_crit_edge:      ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i131 = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i.i131 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i131, align 4
  %55 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.else95.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.stub_device, ptr %3, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i132 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %60, ptr noundef %priv_tx) #7
  br i1 %call.i.i.i132, label %if.end.i.i.i134, label %__list_del_entry.exit.i.if.end97_crit_edge

__list_del_entry.exit.i.if.end97_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.end.i.i.i134:                                  ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list, ptr %prev.i2.i, align 4
  %62 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %priv_tx, ptr %list, align 4
  %prev3.i.i.i133 = getelementptr inbounds %struct.stub_priv, ptr %1, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i133, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %list, ptr %60, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.end.i.i.i134, %__list_del_entry.exit.i.if.end97_crit_edge, %stub_enqueue_ret_unlink.exit, %if.then85, %do.body71, %do.body67.if.end97_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock, i32 noundef %call59) #7
  %tx_waitq = getelementptr inbounds %struct.stub_device, ptr %3, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %tx_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end49.cleanup_crit_edge, %do.end14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @stub_free_priv_and_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stub_tx_loop(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -8
  %call67 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call67, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %priv_tx = getelementptr i8, ptr %data, i32 296
  %unlink_tx = getelementptr i8, ptr %data, i32 312
  %tx_waitq = getelementptr i8, ptr %data, i32 328
  br label %while.body

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %while.body.lr.ph
  %call1 = call i32 @usbip_event_happened(ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %call2 = call fastcc i32 @stub_send_ret_submit(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.while.end_crit_edge, label %if.end4

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @stub_send_ret_unlink(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.while.end_crit_edge, label %if.end8

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end8:                                          ; preds = %if.end4
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 449) #7
  %0 = ptrtoint ptr %priv_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %priv_tx, align 4
  %cmp.i.not = icmp eq ptr %1, %priv_tx
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end8.if.end37_crit_edge

if.end8.if.end37_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

lor.lhs.false:                                    ; preds = %if.end8
  %2 = ptrtoint ptr %unlink_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %unlink_tx, align 4
  %cmp.i50.not = icmp eq ptr %3, %unlink_tx
  br i1 %cmp.i50.not, label %lor.lhs.false16, label %lor.lhs.false.if.end37_crit_edge

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %call17 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call17, label %lor.lhs.false16.if.end37_crit_edge, label %if.then18

lor.lhs.false16.if.end37_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then18:                                        ; preds = %lor.lhs.false16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call2062 = call i32 @prepare_to_wait_event(ptr noundef %tx_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %5 = ptrtoint ptr %priv_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %priv_tx, align 4
  %cmp.i52.not63 = icmp eq ptr %6, %priv_tx
  br i1 %cmp.i52.not63, label %if.then18.lor.lhs.false24_crit_edge, label %if.then18.for.end_crit_edge

if.then18.for.end_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then18.lor.lhs.false24_crit_edge:              ; preds = %if.then18
  br label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %cleanup.lor.lhs.false24_crit_edge, %if.then18.lor.lhs.false24_crit_edge
  %call2064 = phi i32 [ %call20, %cleanup.lor.lhs.false24_crit_edge ], [ %call2062, %if.then18.lor.lhs.false24_crit_edge ]
  %7 = ptrtoint ptr %unlink_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %unlink_tx, align 4
  %cmp.i54.not = icmp eq ptr %8, %unlink_tx
  br i1 %cmp.i54.not, label %lor.lhs.false28, label %lor.lhs.false24.for.end_crit_edge

lor.lhs.false24.for.end_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false28:                                  ; preds = %lor.lhs.false24
  %call29 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call29, label %lor.lhs.false28.for.end_crit_edge, label %if.end31

lor.lhs.false28.for.end_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end31:                                         ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2064)
  %tobool32.not = icmp eq i32 %call2064, 0
  br i1 %tobool32.not, label %cleanup, label %if.end31.__out_crit_edge

if.end31.__out_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end31
  call void @schedule() #7
  %call20 = call i32 @prepare_to_wait_event(ptr noundef %tx_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %9 = ptrtoint ptr %priv_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %priv_tx, align 4
  %cmp.i52.not = icmp eq ptr %10, %priv_tx
  br i1 %cmp.i52.not, label %cleanup.lor.lhs.false24_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.lor.lhs.false24_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false24

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false28.for.end_crit_edge, %lor.lhs.false24.for.end_crit_edge, %if.then18.for.end_crit_edge
  call void @finish_wait(ptr noundef %tx_waitq, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end31.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end37

if.end37:                                         ; preds = %__out, %lor.lhs.false16.if.end37_crit_edge, %lor.lhs.false.if.end37_crit_edge, %if.end8.if.end37_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #7
  br i1 %call, label %if.end37.while.end_crit_edge, label %if.end37.while.body_crit_edge

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end37.while.end_crit_edge, %if.end4.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbip_event_happened(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stub_send_ret_submit(ptr noundef %sdev) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %pdu_header = alloca %struct.usbip_header, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  %0 = call ptr @memset(ptr %msg, i32 255, i32 56)
  %priv_lock.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 3
  %call3.i504 = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #7
  %priv_tx.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 5
  %1 = ptrtoint ptr %priv_tx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv_tx.i, align 8
  %cmp13.not.i505 = icmp eq ptr %2, %priv_tx.i
  br i1 %cmp13.not.i505, label %entry.dequeue_from_priv_tx.exit.thread_crit_edge, label %for.body.i.lr.ph

entry.dequeue_from_priv_tx.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dequeue_from_priv_tx.exit.thread

for.body.i.lr.ph:                                 ; preds = %entry
  %priv_free.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 6
  %prev.i2.i.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 6, i32 1
  %seqnum2.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 1
  %devid.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 2
  %ep.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 4
  %direction.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 3
  %u = getelementptr inbounds %struct.usbip_header, ptr %pdu_header, i32 0, i32 1
  %actual_length64 = getelementptr inbounds %struct.usbip_header, ptr %pdu_header, i32 0, i32 1, i32 0, i32 1
  %tcp_socket = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 1, i32 5
  br label %for.body.i

dequeue_from_priv_tx.exit.thread:                 ; preds = %cleanup227.dequeue_from_priv_tx.exit.thread_crit_edge, %entry.dequeue_from_priv_tx.exit.thread_crit_edge
  %total_size.0.lcssa = phi i32 [ 0, %entry.dequeue_from_priv_tx.exit.thread_crit_edge ], [ %add226, %cleanup227.dequeue_from_priv_tx.exit.thread_crit_edge ]
  %call3.i.lcssa = phi i32 [ %call3.i504, %entry.dequeue_from_priv_tx.exit.thread_crit_edge ], [ %call3.i, %cleanup227.dequeue_from_priv_tx.exit.thread_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i.lcssa) #7
  br label %do.body239

for.body.i:                                       ; preds = %cleanup227.for.body.i_crit_edge, %for.body.i.lr.ph
  %3 = phi ptr [ %2, %for.body.i.lr.ph ], [ %149, %cleanup227.for.body.i_crit_edge ]
  %call3.i507 = phi i32 [ %call3.i504, %for.body.i.lr.ph ], [ %call3.i, %cleanup227.for.body.i_crit_edge ]
  %total_size.0506 = phi i32 [ 0, %for.body.i.lr.ph ], [ %add226, %cleanup227.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %3, i32 -4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.__list_del_entry.exit.i.i_crit_edge

for.body.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body.i.__list_del_entry.exit.i.i_crit_edge
  %10 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %11, ptr noundef %priv_free.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.dequeue_from_priv_tx.exit_crit_edge

__list_del_entry.exit.i.i.dequeue_from_priv_tx.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dequeue_from_priv_tx.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %prev.i2.i.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %priv_free.i, ptr %3, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %3, ptr %11, align 4
  br label %dequeue_from_priv_tx.exit

dequeue_from_priv_tx.exit:                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.dequeue_from_priv_tx.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i507) #7
  %cmp.not = icmp eq ptr %add.ptr.i, null
  br i1 %cmp.not, label %dequeue_from_priv_tx.exit.do.body239_crit_edge, label %while.body

dequeue_from_priv_tx.exit.do.body239_crit_edge:   ; preds = %dequeue_from_priv_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body239

while.body:                                       ; preds = %dequeue_from_priv_tx.exit
  %urbs = getelementptr i8, ptr %3, i32 12
  %16 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urbs, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pdu_header) #7
  %20 = call ptr @memset(ptr %pdu_header, i32 0, i32 48)
  %21 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %actual_length1 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 20
  %22 = ptrtoint ptr %actual_length1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_length1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.not = icmp eq i32 %23, 0
  br i1 %cmp2.not, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %24 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transfer_buffer, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %num_sgs = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 18
  %26 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not = icmp eq i32 %27, 0
  br i1 %tobool4.not, label %do.end, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sdev, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %23) #11
  br label %cleanup227.thread

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %pipe = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 10
  %30 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pipe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %31)
  %cmp6 = icmp ult i32 %31, 1073741824
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 24
  %32 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %number_of_packets, align 4
  %add = add i32 %33, 2
  br label %if.end31

if.else:                                          ; preds = %if.end
  %and9 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.if.end31_crit_edge, label %land.lhs.true11

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true11:                                  ; preds = %if.else
  br i1 %cmp2.not, label %land.lhs.true11.land.lhs.true24_crit_edge, label %land.lhs.true14

land.lhs.true11.land.lhs.true24_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true24

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %num_sgs15 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 18
  %34 = ptrtoint ptr %num_sgs15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_sgs15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool16.not = icmp eq i32 %35, 0
  br i1 %tobool16.not, label %land.lhs.true14.land.lhs.true24_crit_edge, label %if.then17

land.lhs.true14.land.lhs.true24_crit_edge:        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true24

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  %add19 = add i32 %35, 1
  br label %if.end31

land.lhs.true24:                                  ; preds = %land.lhs.true14.land.lhs.true24_crit_edge, %land.lhs.true11.land.lhs.true24_crit_edge
  %sgl = getelementptr i8, ptr %3, i32 16
  %36 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sgl, align 4
  %tobool25.not = icmp eq ptr %37, null
  br i1 %tobool25.not, label %land.lhs.true24.if.end31_crit_edge, label %if.then26

land.lhs.true24.if.end31_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  %num_urbs = getelementptr i8, ptr %3, i32 20
  %38 = ptrtoint ptr %num_urbs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_urbs, align 4
  %add27 = add i32 %39, 1
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %land.lhs.true24.if.end31_crit_edge, %if.then17, %if.else.if.end31_crit_edge, %if.then7
  %iovnum.0 = phi i32 [ %add, %if.then7 ], [ %add19, %if.then17 ], [ %add27, %if.then26 ], [ 2, %land.lhs.true24.if.end31_crit_edge ], [ 2, %if.else.if.end31_crit_edge ]
  %40 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %iovnum.0, i32 8) #7
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %if.end31.if.then34_crit_edge, label %if.end7.i.i, !prof !73

if.end31.if.then34_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.end7.i.i:                                      ; preds = %if.end31
  %42 = extractvalue { i32, i1 } %40, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #12
  %tobool33.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool33.not, label %if.end7.i.i.if.then34_crit_edge, label %if.end35

if.end7.i.i.if.then34_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then34:                                        ; preds = %if.end7.i.i.if.then34_crit_edge, %if.end31.if.then34_crit_edge
  %ud = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 1
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 9) #7
  br label %cleanup227.thread

if.end35:                                         ; preds = %if.end7.i.i
  %context.i = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 27
  %43 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %context.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %47 = ptrtoint ptr %pdu_header to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 3, ptr %pdu_header, align 4
  %48 = ptrtoint ptr %seqnum2.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %seqnum2.i.i, align 4
  %49 = ptrtoint ptr %devid.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %devid.i.i, align 4
  %50 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %ep.i.i, align 4
  %51 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %direction.i.i, align 4
  call void @usbip_pack_pdu(ptr noundef nonnull %pdu_header, ptr noundef %19, i32 noundef 3, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %52 = load i32, ptr @usbip_debug_flag, align 4
  %and37 = and i32 %52, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.do.end53_crit_edge, label %do.body40

if.end35.do.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

do.body40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_send_ret_submit.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_send_ret_submit, %do.end53)) #7
          to label %if.then47 [label %do.end53], !srcloc !72

if.then47:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %seqnum2.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %seqnum2.i.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stub_send_ret_submit.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef 205, i32 noundef %54) #7
  br label %do.end53

do.end53:                                         ; preds = %if.then47, %do.body40, %if.end35.do.end53_crit_edge
  %sgl54 = getelementptr i8, ptr %3, i32 16
  %55 = ptrtoint ptr %sgl54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sgl54, align 4
  %tobool55.not = icmp eq ptr %56, null
  br i1 %tobool55.not, label %do.end53.if.end65_crit_edge, label %for.cond.preheader

do.end53.if.end65_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

for.cond.preheader:                               ; preds = %do.end53
  %num_urbs57 = getelementptr i8, ptr %3, i32 20
  %57 = ptrtoint ptr %num_urbs57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_urbs57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp58483 = icmp sgt i32 %58, 0
  br i1 %cmp58483, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %59 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %urbs, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0485 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %actual_length.0484 = phi i32 [ 0, %for.body.lr.ph ], [ %add62, %for.body.for.body_crit_edge ]
  %arrayidx60 = getelementptr ptr, ptr %60, i32 %i.0485
  %61 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx60, align 4
  %actual_length61 = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 20
  %63 = ptrtoint ptr %actual_length61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %actual_length61, align 4
  %add62 = add i32 %64, %actual_length.0484
  %inc = add nuw nsw i32 %i.0485, 1
  %exitcond.not = icmp eq i32 %inc, %58
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %actual_length.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add62, %for.body.for.end_crit_edge ]
  %urb_status = getelementptr i8, ptr %3, i32 28
  %65 = ptrtoint ptr %urb_status to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %urb_status, align 4
  %67 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %u, align 4
  %68 = ptrtoint ptr %actual_length64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %actual_length.0.lcssa, ptr %actual_length64, align 4
  br label %if.end65

if.end65:                                         ; preds = %for.end, %do.end53.if.end65_crit_edge
  %actual_length.1 = phi i32 [ %actual_length.0.lcssa, %for.end ], [ 0, %do.end53.if.end65_crit_edge ]
  call void @usbip_header_correct_endian(ptr noundef nonnull %pdu_header, i32 noundef 1) #7
  %69 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %pdu_header, ptr %call8.i.i, align 128
  %iov_len = getelementptr inbounds %struct.kvec, ptr %call8.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 48, ptr %iov_len, align 4
  %71 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pipe, align 4
  %and71 = and i32 %72, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end65.if.end194_crit_edge, label %land.lhs.true73

if.end65.if.end194_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194

land.lhs.true73:                                  ; preds = %if.end65
  %73 = ptrtoint ptr %sgl54 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sgl54, align 4
  %tobool75.not = icmp eq ptr %74, null
  br i1 %tobool75.not, label %if.else96, label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %land.lhs.true73
  %num_urbs78 = getelementptr i8, ptr %3, i32 20
  %75 = ptrtoint ptr %num_urbs78 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_urbs78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp79486 = icmp sgt i32 %76, 0
  br i1 %cmp79486, label %for.cond77.preheader.for.body80_crit_edge, label %for.cond77.preheader.for.end94_crit_edge

for.cond77.preheader.for.end94_crit_edge:         ; preds = %for.cond77.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end94

for.cond77.preheader.for.body80_crit_edge:        ; preds = %for.cond77.preheader
  br label %for.body80

for.body80:                                       ; preds = %for.body80.for.body80_crit_edge, %for.cond77.preheader.for.body80_crit_edge
  %i.1488 = phi i32 [ %inc93, %for.body80.for.body80_crit_edge ], [ 0, %for.cond77.preheader.for.body80_crit_edge ]
  %iovnum.1487 = phi i32 [ %inc91, %for.body80.for.body80_crit_edge ], [ 1, %for.cond77.preheader.for.body80_crit_edge ]
  %77 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %urbs, align 4
  %arrayidx82 = getelementptr ptr, ptr %78, i32 %i.1488
  %79 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx82, align 4
  %transfer_buffer83 = getelementptr inbounds %struct.urb, ptr %80, i32 0, i32 14
  %81 = ptrtoint ptr %transfer_buffer83 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %transfer_buffer83, align 4
  %arrayidx84 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.1487
  %83 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %arrayidx84, align 8
  %84 = load ptr, ptr %urbs, align 4
  %arrayidx87 = getelementptr ptr, ptr %84, i32 %i.1488
  %85 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx87, align 4
  %actual_length88 = getelementptr inbounds %struct.urb, ptr %86, i32 0, i32 20
  %87 = ptrtoint ptr %actual_length88 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %actual_length88, align 4
  %iov_len90 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.1487, i32 1
  %89 = ptrtoint ptr %iov_len90 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %iov_len90, align 4
  %inc91 = add nuw i32 %iovnum.1487, 1
  %inc93 = add nuw nsw i32 %i.1488, 1
  %90 = ptrtoint ptr %num_urbs78 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_urbs78, align 4
  %cmp79 = icmp slt i32 %inc93, %91
  br i1 %cmp79, label %for.body80.for.body80_crit_edge, label %for.body80.for.end94_crit_edge

for.body80.for.end94_crit_edge:                   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end94

for.body80.for.body80_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body80

for.end94:                                        ; preds = %for.body80.for.end94_crit_edge, %for.cond77.preheader.for.end94_crit_edge
  %iovnum.1.lcssa = phi i32 [ 1, %for.cond77.preheader.for.end94_crit_edge ], [ %inc91, %for.body80.for.end94_crit_edge ]
  %add95 = add i32 %actual_length.1, 48
  br label %if.end194thread-pre-split

if.else96:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %72)
  %cmp104.not = icmp ult i32 %72, 1073741824
  br i1 %cmp104.not, label %for.cond158.preheader, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.else96
  %92 = ptrtoint ptr %actual_length1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %actual_length1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp107.not = icmp eq i32 %93, 0
  br i1 %cmp107.not, label %land.lhs.true105.if.end194thread-pre-split_crit_edge, label %if.then108

land.lhs.true105.if.end194thread-pre-split_crit_edge: ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194thread-pre-split

if.then108:                                       ; preds = %land.lhs.true105
  %num_sgs109 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 18
  %94 = ptrtoint ptr %num_sgs109 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_sgs109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool110.not = icmp eq i32 %95, 0
  br i1 %tobool110.not, label %if.else136, label %if.then111

if.then111:                                       ; preds = %if.then108
  %96 = ptrtoint ptr %num_sgs109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_sgs109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp116490 = icmp slt i32 %97, 1
  br i1 %cmp116490, label %if.then111.if.end144_crit_edge, label %if.end120.preheader

if.then111.if.end144_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.end120.preheader:                              ; preds = %if.then111
  %sg113 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 16
  %98 = ptrtoint ptr %sg113 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sg113, align 4
  br label %if.end120

if.end120:                                        ; preds = %sg_virt.exit.if.end120_crit_edge, %if.end120.preheader
  %copy.0496 = phi i32 [ %sub, %sg_virt.exit.if.end120_crit_edge ], [ %93, %if.end120.preheader ]
  %i.2495 = phi i32 [ %inc133, %sg_virt.exit.if.end120_crit_edge ], [ 0, %if.end120.preheader ]
  %iovnum.2494 = phi i32 [ %inc131, %sg_virt.exit.if.end120_crit_edge ], [ 1, %if.end120.preheader ]
  %sg.0493 = phi ptr [ %call134, %sg_virt.exit.if.end120_crit_edge ], [ %99, %if.end120.preheader ]
  %100 = ptrtoint ptr %sg.0493 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sg.0493, align 4
  %and.i.i.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !74

do.body2.i.i:                                     ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !75
  unreachable

sg_virt.exit:                                     ; preds = %if.end120
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0493, i32 0, i32 2
  %102 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %length, align 4
  %104 = call i32 @llvm.umin.i32(i32 %copy.0496, i32 %103)
  %and.i.i = and i32 %101, -4
  %105 = inttoptr i32 %and.i.i to ptr
  %call1.i = call ptr @page_address(ptr noundef %105) #7
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0493, i32 0, i32 1
  %106 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %offset.i, align 4
  %add.ptr.i420 = getelementptr i8, ptr %call1.i, i32 %107
  %arrayidx127 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.2494
  %108 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %add.ptr.i420, ptr %arrayidx127, align 8
  %iov_len130 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.2494, i32 1
  %109 = ptrtoint ptr %iov_len130 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %104, ptr %iov_len130, align 4
  %inc131 = add nuw i32 %iovnum.2494, 1
  %sub = sub i32 %copy.0496, %104
  %inc133 = add nuw nsw i32 %i.2495, 1
  %call134 = call ptr @sg_next(ptr noundef %sg.0493) #7
  %110 = ptrtoint ptr %num_sgs109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_sgs109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc133, i32 %111)
  %cmp116 = icmp sge i32 %inc133, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp118 = icmp eq i32 %sub, 0
  %or.cond415 = select i1 %cmp116, i1 true, i1 %cmp118
  br i1 %or.cond415, label %sg_virt.exit.if.end144_crit_edge, label %sg_virt.exit.if.end120_crit_edge

sg_virt.exit.if.end120_crit_edge:                 ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

sg_virt.exit.if.end144_crit_edge:                 ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.else136:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  %transfer_buffer137 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  %112 = ptrtoint ptr %transfer_buffer137 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %transfer_buffer137, align 4
  %arrayidx138 = getelementptr %struct.kvec, ptr %call8.i.i, i32 1
  %114 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %113, ptr %arrayidx138, align 8
  %115 = ptrtoint ptr %actual_length1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %actual_length1, align 4
  %iov_len142 = getelementptr %struct.kvec, ptr %call8.i.i, i32 1, i32 1
  %117 = ptrtoint ptr %iov_len142 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %iov_len142, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.else136, %sg_virt.exit.if.end144_crit_edge, %if.then111.if.end144_crit_edge
  %iovnum.3 = phi i32 [ 2, %if.else136 ], [ 1, %if.then111.if.end144_crit_edge ], [ %inc131, %sg_virt.exit.if.end144_crit_edge ]
  %118 = ptrtoint ptr %actual_length1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %actual_length1, align 4
  %add146 = add i32 %119, 48
  br label %if.end194thread-pre-split

for.cond158.preheader:                            ; preds = %if.else96
  %number_of_packets159 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 24
  %120 = ptrtoint ptr %number_of_packets159 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %number_of_packets159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp160498 = icmp sgt i32 %121, 0
  br i1 %cmp160498, label %for.body161.lr.ph, label %for.cond158.preheader.for.end178_crit_edge

for.cond158.preheader.for.end178_crit_edge:       ; preds = %for.cond158.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end178

for.body161.lr.ph:                                ; preds = %for.cond158.preheader
  %transfer_buffer162 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 14
  br label %for.body161

for.body161:                                      ; preds = %for.body161.for.body161_crit_edge, %for.body161.lr.ph
  %txsize.0501 = phi i32 [ 48, %for.body161.lr.ph ], [ %add175, %for.body161.for.body161_crit_edge ]
  %i157.0500 = phi i32 [ 0, %for.body161.lr.ph ], [ %inc177, %for.body161.for.body161_crit_edge ]
  %iovnum.4499 = phi i32 [ 1, %for.body161.lr.ph ], [ %inc171, %for.body161.for.body161_crit_edge ]
  %122 = ptrtoint ptr %transfer_buffer162 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %transfer_buffer162, align 4
  %arrayidx163 = getelementptr %struct.urb, ptr %19, i32 0, i32 29, i32 %i157.0500
  %124 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx163, align 4
  %add.ptr = getelementptr i8, ptr %123, i32 %125
  %arrayidx164 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.4499
  %126 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %add.ptr, ptr %arrayidx164, align 8
  %actual_length168 = getelementptr %struct.urb, ptr %19, i32 0, i32 29, i32 %i157.0500, i32 2
  %127 = ptrtoint ptr %actual_length168 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %actual_length168, align 4
  %iov_len170 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.4499, i32 1
  %129 = ptrtoint ptr %iov_len170 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %iov_len170, align 4
  %inc171 = add nuw i32 %iovnum.4499, 1
  %130 = load i32, ptr %actual_length168, align 4
  %add175 = add i32 %130, %txsize.0501
  %inc177 = add nuw nsw i32 %i157.0500, 1
  %131 = ptrtoint ptr %number_of_packets159 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %number_of_packets159, align 4
  %cmp160 = icmp slt i32 %inc177, %132
  br i1 %cmp160, label %for.body161.for.body161_crit_edge, label %for.body161.for.end178_crit_edge

for.body161.for.end178_crit_edge:                 ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end178

for.body161.for.body161_crit_edge:                ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body161

for.end178:                                       ; preds = %for.body161.for.end178_crit_edge, %for.cond158.preheader.for.end178_crit_edge
  %iovnum.4.lcssa = phi i32 [ 1, %for.cond158.preheader.for.end178_crit_edge ], [ %inc171, %for.body161.for.end178_crit_edge ]
  %txsize.0.lcssa = phi i32 [ 48, %for.cond158.preheader.for.end178_crit_edge ], [ %add175, %for.body161.for.end178_crit_edge ]
  %133 = ptrtoint ptr %actual_length1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %actual_length1, align 4
  %add180 = add i32 %134, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %txsize.0.lcssa, i32 %add180)
  %cmp181.not = icmp eq i32 %txsize.0.lcssa, %add180
  br i1 %cmp181.not, label %for.end178.if.end194thread-pre-split_crit_edge, label %do.end185

for.end178.if.end194thread-pre-split_crit_edge:   ; preds = %for.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end194thread-pre-split

do.end185:                                        ; preds = %for.end178
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sdev, align 8
  %dev187 = getelementptr inbounds %struct.usb_device, ptr %136, i32 0, i32 15
  %sub189 = add i32 %txsize.0.lcssa, -48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev187, ptr noundef nonnull @.str.28, i32 noundef %134, i32 noundef %sub189) #11
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  %ud190 = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 1
  call void @usbip_event_add(ptr noundef %ud190, i32 noundef 5) #7
  br label %cleanup227.thread

if.end194thread-pre-split:                        ; preds = %for.end178.if.end194thread-pre-split_crit_edge, %if.end144, %land.lhs.true105.if.end194thread-pre-split_crit_edge, %for.end94
  %iovnum.5.ph = phi i32 [ %iovnum.4.lcssa, %for.end178.if.end194thread-pre-split_crit_edge ], [ %iovnum.3, %if.end144 ], [ %iovnum.1.lcssa, %for.end94 ], [ 1, %land.lhs.true105.if.end194thread-pre-split_crit_edge ]
  %txsize.1.ph = phi i32 [ %txsize.0.lcssa, %for.end178.if.end194thread-pre-split_crit_edge ], [ %add146, %if.end144 ], [ %add95, %for.end94 ], [ 48, %land.lhs.true105.if.end194thread-pre-split_crit_edge ]
  %137 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %137)
  %.pr = load i32, ptr %pipe, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.end194thread-pre-split, %if.end65.if.end194_crit_edge
  %138 = phi i32 [ %.pr, %if.end194thread-pre-split ], [ %72, %if.end65.if.end194_crit_edge ]
  %iovnum.5 = phi i32 [ %iovnum.5.ph, %if.end194thread-pre-split ], [ 1, %if.end65.if.end194_crit_edge ]
  %txsize.1 = phi i32 [ %txsize.1.ph, %if.end194thread-pre-split ], [ 48, %if.end65.if.end194_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %138)
  %cmp198 = icmp ult i32 %138, 1073741824
  br i1 %cmp198, label %if.then199, label %if.end194.if.end214_crit_edge

if.end194.if.end214_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then199:                                       ; preds = %if.end194
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %139 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %len, align 4
  %call200 = call ptr @usbip_alloc_iso_desc_pdu(ptr noundef %19, ptr noundef nonnull %len) #7
  %tobool201.not = icmp eq ptr %call200, null
  br i1 %tobool201.not, label %cleanup211.thread, label %cleanup211

cleanup211.thread:                                ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #9
  %ud203 = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 1
  call void @usbip_event_add(ptr noundef %ud203, i32 noundef 9) #7
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  br label %cleanup227.thread

cleanup211:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx205 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.5
  %140 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call200, ptr %arrayidx205, align 8
  %141 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len, align 4
  %iov_len208 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.5, i32 1
  %143 = ptrtoint ptr %iov_len208 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %iov_len208, align 4
  %add209 = add i32 %142, %txsize.1
  %inc210 = add i32 %iovnum.5, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  br label %if.end214

if.end214:                                        ; preds = %cleanup211, %if.end194.if.end214_crit_edge
  %iovnum.7 = phi i32 [ %inc210, %cleanup211 ], [ %iovnum.5, %if.end194.if.end214_crit_edge ]
  %iso_buffer.0 = phi ptr [ %call200, %cleanup211 ], [ null, %if.end194.if.end214_crit_edge ]
  %txsize.3 = phi i32 [ %add209, %cleanup211 ], [ %txsize.1, %if.end194.if.end214_crit_edge ]
  %144 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tcp_socket, align 4
  %call216 = call i32 @kernel_sendmsg(ptr noundef %145, ptr noundef nonnull %msg, ptr noundef nonnull %call8.i.i, i32 noundef %iovnum.7, i32 noundef %txsize.3) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call216, i32 %txsize.3)
  %cmp217.not = icmp eq i32 %call216, %txsize.3
  br i1 %cmp217.not, label %cleanup227, label %do.end221

do.end221:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #9
  %ud215 = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 1
  %146 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sdev, align 8
  %dev223 = getelementptr inbounds %struct.usb_device, ptr %147, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev223, ptr noundef nonnull @.str.31, i32 noundef %call216, i32 noundef %txsize.3) #11
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  call void @kfree(ptr noundef %iso_buffer.0) #7
  call void @usbip_event_add(ptr noundef %ud215, i32 noundef 5) #7
  br label %cleanup227.thread

cleanup227.thread:                                ; preds = %do.end221, %cleanup211.thread, %do.end185, %if.then34, %do.end
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #7
  br label %cleanup270

cleanup227:                                       ; preds = %if.end214
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  call void @kfree(ptr noundef %iso_buffer.0) #7
  %add226 = add i32 %txsize.3, %total_size.0506
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #7
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #7
  %148 = ptrtoint ptr %priv_tx.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %priv_tx.i, align 8
  %cmp13.not.i = icmp eq ptr %149, %priv_tx.i
  br i1 %cmp13.not.i, label %cleanup227.dequeue_from_priv_tx.exit.thread_crit_edge, label %cleanup227.for.body.i_crit_edge

cleanup227.for.body.i_crit_edge:                  ; preds = %cleanup227
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup227.dequeue_from_priv_tx.exit.thread_crit_edge: ; preds = %cleanup227
  call void @__sanitizer_cov_trace_pc() #9
  br label %dequeue_from_priv_tx.exit.thread

do.body239:                                       ; preds = %dequeue_from_priv_tx.exit.do.body239_crit_edge, %dequeue_from_priv_tx.exit.thread
  %total_size.0473 = phi i32 [ %total_size.0.lcssa, %dequeue_from_priv_tx.exit.thread ], [ %total_size.0506, %dequeue_from_priv_tx.exit.do.body239_crit_edge ]
  %call243 = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #7
  %priv_free = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 6
  %150 = ptrtoint ptr %priv_free to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %priv_free, align 8
  %cmp257.not511 = icmp eq ptr %151, %priv_free
  br i1 %cmp257.not511, label %do.body239.for.end268_crit_edge, label %do.body239.for.body261_crit_edge

do.body239.for.body261_crit_edge:                 ; preds = %do.body239
  br label %for.body261

do.body239.for.end268_crit_edge:                  ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end268

for.body261:                                      ; preds = %for.body261.for.body261_crit_edge, %do.body239.for.body261_crit_edge
  %.pn.in512 = phi ptr [ %.pn, %for.body261.for.body261_crit_edge ], [ %151, %do.body239.for.body261_crit_edge ]
  %priv.0 = getelementptr i8, ptr %.pn.in512, i32 -4
  %152 = ptrtoint ptr %.pn.in512 to i32
  call void @__asan_load4_noabort(i32 %152)
  %.pn = load ptr, ptr %.pn.in512, align 4
  call void @stub_free_priv_and_urb(ptr noundef %priv.0) #7
  %cmp257.not = icmp eq ptr %.pn, %priv_free
  br i1 %cmp257.not, label %for.body261.for.end268_crit_edge, label %for.body261.for.body261_crit_edge

for.body261.for.body261_crit_edge:                ; preds = %for.body261
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body261

for.body261.for.end268_crit_edge:                 ; preds = %for.body261
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end268

for.end268:                                       ; preds = %for.body261.for.end268_crit_edge, %do.body239.for.end268_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call243) #7
  br label %cleanup270

cleanup270:                                       ; preds = %for.end268, %cleanup227.thread
  %retval.6 = phi i32 [ %total_size.0473, %for.end268 ], [ -1, %cleanup227.thread ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  ret i32 %retval.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stub_send_ret_unlink(ptr noundef %sdev) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca [1 x %struct.kvec], align 8
  %pdu_header = alloca %struct.usbip_header, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #7
  %0 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #7
  %1 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov, align 8, !annotation !76
  %2 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !76
  %priv_lock.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 3
  %call3.i121 = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #7
  %unlink_tx.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 7
  %4 = ptrtoint ptr %unlink_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unlink_tx.i, align 8
  %cmp13.not.i122 = icmp eq ptr %5, %unlink_tx.i
  br i1 %cmp13.not.i122, label %entry.dequeue_from_unlink_tx.exit.thread_crit_edge, label %for.body.i.lr.ph

entry.dequeue_from_unlink_tx.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dequeue_from_unlink_tx.exit.thread

for.body.i.lr.ph:                                 ; preds = %entry
  %unlink_free.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 8
  %prev.i2.i.i = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 8, i32 1
  %seqnum2.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 1
  %devid.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 2
  %ep.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 4
  %direction.i.i = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 3
  %u.i = getelementptr inbounds %struct.usbip_header, ptr %pdu_header, i32 0, i32 1
  %tcp_socket = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 1, i32 5
  br label %for.body.i

dequeue_from_unlink_tx.exit.thread:               ; preds = %cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge, %entry.dequeue_from_unlink_tx.exit.thread_crit_edge
  %total_size.0.lcssa = phi i32 [ 0, %entry.dequeue_from_unlink_tx.exit.thread_crit_edge ], [ %add46, %cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge ]
  %call3.i.lcssa = phi i32 [ %call3.i121, %entry.dequeue_from_unlink_tx.exit.thread_crit_edge ], [ %call3.i, %cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i.lcssa) #7
  br label %do.body49

for.body.i:                                       ; preds = %cleanup.for.body.i_crit_edge, %for.body.i.lr.ph
  %6 = phi ptr [ %5, %for.body.i.lr.ph ], [ %43, %cleanup.for.body.i_crit_edge ]
  %call3.i124 = phi i32 [ %call3.i121, %for.body.i.lr.ph ], [ %call3.i, %cleanup.for.body.i_crit_edge ]
  %total_size.0123 = phi i32 [ 0, %for.body.i.lr.ph ], [ %add46, %cleanup.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.__list_del_entry.exit.i.i_crit_edge

for.body.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %for.body.i.__list_del_entry.exit.i.i_crit_edge
  %13 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %14, ptr noundef %unlink_free.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.dequeue_from_unlink_tx.exit_crit_edge

__list_del_entry.exit.i.i.dequeue_from_unlink_tx.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dequeue_from_unlink_tx.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %prev.i2.i.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %unlink_free.i, ptr %6, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %6, ptr %14, align 4
  br label %dequeue_from_unlink_tx.exit

dequeue_from_unlink_tx.exit:                      ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.dequeue_from_unlink_tx.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i124) #7
  %cmp.not = icmp eq ptr %add.ptr.i, null
  br i1 %cmp.not, label %dequeue_from_unlink_tx.exit.do.body49_crit_edge, label %while.body

dequeue_from_unlink_tx.exit.do.body49_crit_edge:  ; preds = %dequeue_from_unlink_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body49

while.body:                                       ; preds = %dequeue_from_unlink_tx.exit
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pdu_header) #7
  %19 = call ptr @memset(ptr %pdu_header, i32 0, i32 48)
  %20 = call ptr @memset(ptr %msg, i32 0, i32 56)
  %21 = ptrtoint ptr %iov to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %iov, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %22 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.do.end11_crit_edge, label %do.body1

while.body.do.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.body1:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_send_ret_unlink.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_send_ret_unlink, %do.end11)) #7
          to label %if.then8 [label %do.end11], !srcloc !72

if.then8:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stub_send_ret_unlink.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef 381, i32 noundef %24) #7
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body1, %while.body.do.end11_crit_edge
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  %27 = ptrtoint ptr %pdu_header to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %pdu_header, align 4
  %28 = ptrtoint ptr %seqnum2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %seqnum2.i.i, align 4
  %29 = ptrtoint ptr %devid.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %devid.i.i, align 4
  %30 = ptrtoint ptr %ep.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ep.i.i, align 4
  %31 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %direction.i.i, align 4
  %status.i = getelementptr i8, ptr %6, i32 8
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status.i, align 4
  %34 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %u.i, align 4
  call void @usbip_header_correct_endian(ptr noundef nonnull %pdu_header, i32 noundef 1) #7
  %35 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pdu_header, ptr %iov, align 8
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 48, ptr %2, align 4
  %37 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tcp_socket, align 4
  %call13 = call i32 @kernel_sendmsg(ptr noundef %38, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 48
  br i1 %cmp14.not, label %do.body21, label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %ud = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 1
  %39 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sdev, align 8
  %dev = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call13, i32 noundef 48) #11
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #7
  br label %cleanup76

do.body21:                                        ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %41 = load i32, ptr @usbip_debug_flag, align 4
  %and22 = and i32 %41, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body21.cleanup_crit_edge, label %do.body25

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body25:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_send_ret_unlink.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_send_ret_unlink, %cleanup)) #7
          to label %if.then39 [label %cleanup], !srcloc !72

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @stub_send_ret_unlink.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33, i32 noundef 401) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body25, %do.body21.cleanup_crit_edge
  %add46 = add i32 %total_size.0123, 48
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #7
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #7
  %42 = ptrtoint ptr %unlink_tx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %unlink_tx.i, align 8
  %cmp13.not.i = icmp eq ptr %43, %unlink_tx.i
  br i1 %cmp13.not.i, label %cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge, label %cleanup.for.body.i_crit_edge

cleanup.for.body.i_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %dequeue_from_unlink_tx.exit.thread

do.body49:                                        ; preds = %dequeue_from_unlink_tx.exit.do.body49_crit_edge, %dequeue_from_unlink_tx.exit.thread
  %total_size.0120 = phi i32 [ %total_size.0.lcssa, %dequeue_from_unlink_tx.exit.thread ], [ %total_size.0123, %dequeue_from_unlink_tx.exit.do.body49_crit_edge ]
  %call53 = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #7
  %unlink_free = getelementptr inbounds %struct.stub_device, ptr %sdev, i32 0, i32 8
  %44 = ptrtoint ptr %unlink_free to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %unlink_free, align 8
  %cmp65.not127 = icmp eq ptr %45, %unlink_free
  br i1 %cmp65.not127, label %do.body49.for.end_crit_edge, label %do.body49.for.body_crit_edge

do.body49.for.body_crit_edge:                     ; preds = %do.body49
  br label %for.body

do.body49.for.end_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.body49.for.body_crit_edge
  %.pn.in128 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %45, %do.body49.for.body_crit_edge ]
  %unlink.0 = getelementptr i8, ptr %.pn.in128, i32 -4
  %46 = ptrtoint ptr %.pn.in128 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn.in128, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in128) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in128, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %.pn.in128 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %.pn.in128, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %53 = ptrtoint ptr %.pn.in128 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in128, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in128, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %unlink.0) #7
  %cmp65.not = icmp eq ptr %.pn, %unlink_free
  br i1 %cmp65.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.body49.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call53) #7
  br label %cleanup76

cleanup76:                                        ; preds = %for.end, %cleanup.thread
  %retval.2 = phi i32 [ %total_size.0120, %for.end ], [ -1, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #7
  ret i32 %retval.2
}

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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_header_correct_endian(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbip_alloc_iso_desc_pdu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_pack_pdu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/stub_tx.c", i32 46, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @stub_complete.__UNIQUE_ID_ddebug241, !1, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/usb/usbip/stub_tx.c", i32 53, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @stub_complete._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @stub_complete._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/usbip/stub_tx.c", i32 57, i32 3}
!15 = !{ptr @stub_complete._entry.8, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @stub_complete._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/usbip/stub_tx.c", i32 61, i32 3}
!19 = !{ptr @stub_complete._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @stub_complete._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/usbip/stub_tx.c", i32 65, i32 3}
!23 = !{ptr @stub_complete._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @stub_complete._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/usbip/stub_tx.c", i32 68, i32 3}
!27 = !{ptr @stub_complete._entry.17, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @stub_complete._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/usbip/stub_tx.c", i32 93, i32 3}
!31 = !{ptr @stub_complete.__UNIQUE_ID_ddebug242, !30, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!32 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/usbip/stub_tx.c", i32 177, i32 4}
!35 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @stub_send_ret_submit._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @stub_send_ret_submit._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/usbip/stub_tx.c", i32 204, i32 3}
!41 = !{ptr @stub_send_ret_submit.__UNIQUE_ID_ddebug243, !40, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!42 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/usbip/stub_tx.c", i32 287, i32 5}
!45 = !{ptr @stub_send_ret_submit._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @stub_send_ret_submit._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/usbip/stub_tx.c", i32 319, i32 4}
!49 = !{ptr @stub_send_ret_submit._entry.30, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @stub_send_ret_submit._entry_ptr.32, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/usbip/stub_tx.c", i32 381, i32 3}
!53 = !{ptr @.str.34, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @stub_send_ret_unlink.__UNIQUE_ID_ddebug244, !52, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!55 = !{ptr @.str.35, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @stub_send_ret_unlink._entry, !57, !"_entry", i1 false, i1 false}
!57 = !{!"../drivers/usb/usbip/stub_tx.c", i32 394, i32 4}
!58 = !{ptr @stub_send_ret_unlink._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/usbip/stub_tx.c", i32 401, i32 3}
!61 = !{ptr @stub_send_ret_unlink.__UNIQUE_ID_ddebug245, !60, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!62 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148260906, i64 2148260911, i64 2148260924, i64 2148260968, i64 2148261002, i64 2148261023}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2153412386, i64 2153412878, i64 2153412423, i64 2153412479, i64 2153412513, i64 2153412537, i64 2153412578, i64 2153412599, i64 2153412627, i64 2153412661}
!76 = !{!"auto-init"}
