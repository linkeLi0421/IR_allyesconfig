; ModuleID = '/llk/IR_all_yes/drivers/usb/usbip/vhci_tx.c_pt.bc'
source_filename = "../drivers/usb/usbip/vhci_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.74, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { ptr }
%union.anon.58 = type { i64 }
%union.anon.74 = type { ptr }
%struct.usbip_header = type { %struct.usbip_header_basic, %union.anon.77 }
%struct.usbip_header_basic = type { i32, i32, i32, i32, i32 }
%union.anon.77 = type { %struct.usbip_header_cmd_submit }
%struct.usbip_header_cmd_submit = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.vhci_device = type { ptr, i32, i32, i32, %struct.usbip_device, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head }
%struct.usbip_device = type { i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, i32, %struct.wait_queue_head, %struct.eh_ops, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.eh_ops = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vhci_priv = type { i32, %struct.list_head, ptr, ptr }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/usbip/vhci_tx.c\00", [36 x i8] zeroinitializer }, align 32
@usbip_debug_flag = external dso_local local_unnamed_addr global i32, align 4
@vhci_tx_loop.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vhci_hcd\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vhci_tx_loop\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pending urbs ?, now wake up\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"vhci_hcd: %s:%d: pending urbs ?, now wake up\0A\00", [50 x i8] zeroinitializer }, align 32
@vhci_send_cmd_submit.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vhci_send_cmd_submit\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"setup txdata urb seqnum %lu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"vhci_hcd: %s:%d: setup txdata urb seqnum %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@vhci_send_cmd_submit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013vhci_hcd: %s:%d: sendmsg failed!, ret=%d for %zd\0A\00", [44 x i8] zeroinitializer }, align 32
@vhci_send_cmd_submit._entry_ptr = internal global ptr @vhci_send_cmd_submit._entry, section ".printk_index", align 4
@vhci_send_cmd_submit.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str, ptr @.str.9, i8 0, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send txdata\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vhci_hcd: %s:%d: send txdata\0A\00", [34 x i8] zeroinitializer }, align 32
@setup_cmd_submit_pdu.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str, ptr @.str.12, i8 0, i8 4, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setup_cmd_submit_pdu\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"URB, local devnum %u, remote devid %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"vhci_hcd: %s:%d: URB, local devnum %u, remote devid %u\0A\00", [40 x i8] zeroinitializer }, align 32
@vhci_send_cmd_unlink.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str, ptr @.str.15, i8 0, i8 51, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vhci_send_cmd_unlink\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"setup cmd unlink, %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vhci_hcd: %s:%d: setup cmd unlink, %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@vhci_send_cmd_unlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.14, ptr @.str, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vhci_send_cmd_unlink._entry_ptr = internal global ptr @vhci_send_cmd_unlink._entry, section ".printk_index", align 4
@vhci_send_cmd_unlink.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str, ptr @.str.9, i8 0, i8 56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 247, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 252, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 77, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 142, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 154, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 18, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 204, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private constant [31 x i8] c"../drivers/usb/usbip/vhci_tx.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 221, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @vhci_send_cmd_submit._entry, ptr @vhci_send_cmd_submit._entry_ptr, ptr @vhci_send_cmd_unlink._entry, ptr @vhci_send_cmd_unlink._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_send_cmd_submit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhci_send_cmd_unlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vhci_tx_loop(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -16
  %call81 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call81, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %priv_tx = getelementptr i8, ptr %data, i32 284
  %unlink_tx = getelementptr i8, ptr %data, i32 300
  %waitq_tx = getelementptr i8, ptr %data, i32 316
  br label %while.body

while.body:                                       ; preds = %do.end52.while.body_crit_edge, %while.body.lr.ph
  %call1 = call fastcc i32 @vhci_send_cmd_submit(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %call2 = call fastcc i32 @vhci_send_cmd_unlink(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.while.end_crit_edge, label %if.end5

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end5:                                          ; preds = %if.end
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 250) #6
  %0 = ptrtoint ptr %priv_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %priv_tx, align 4
  %cmp.i.not = icmp eq ptr %1, %priv_tx
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end5.if.end33_crit_edge

if.end5.if.end33_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

lor.lhs.false:                                    ; preds = %if.end5
  %2 = ptrtoint ptr %unlink_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %unlink_tx, align 4
  %cmp.i63.not = icmp eq ptr %3, %unlink_tx
  br i1 %cmp.i63.not, label %lor.lhs.false12, label %lor.lhs.false.if.end33_crit_edge

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %call13 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call13, label %lor.lhs.false12.if.end33_crit_edge, label %if.then14

lor.lhs.false12.if.end33_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then14:                                        ; preds = %lor.lhs.false12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call1676 = call i32 @prepare_to_wait_event(ptr noundef %waitq_tx, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %5 = ptrtoint ptr %priv_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %priv_tx, align 4
  %cmp.i65.not77 = icmp eq ptr %6, %priv_tx
  br i1 %cmp.i65.not77, label %if.then14.lor.lhs.false20_crit_edge, label %if.then14.for.end_crit_edge

if.then14.for.end_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then14.lor.lhs.false20_crit_edge:              ; preds = %if.then14
  br label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %cleanup.lor.lhs.false20_crit_edge, %if.then14.lor.lhs.false20_crit_edge
  %call1678 = phi i32 [ %call16, %cleanup.lor.lhs.false20_crit_edge ], [ %call1676, %if.then14.lor.lhs.false20_crit_edge ]
  %7 = ptrtoint ptr %unlink_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %unlink_tx, align 4
  %cmp.i67.not = icmp eq ptr %8, %unlink_tx
  br i1 %cmp.i67.not, label %lor.lhs.false24, label %lor.lhs.false20.for.end_crit_edge

lor.lhs.false20.for.end_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %call25 = call zeroext i1 @kthread_should_stop() #6
  br i1 %call25, label %lor.lhs.false24.for.end_crit_edge, label %if.end27

lor.lhs.false24.for.end_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end27:                                         ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1678)
  %tobool28.not = icmp eq i32 %call1678, 0
  br i1 %tobool28.not, label %cleanup, label %if.end27.__out_crit_edge

if.end27.__out_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end27
  call void @schedule() #6
  %call16 = call i32 @prepare_to_wait_event(ptr noundef %waitq_tx, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %9 = ptrtoint ptr %priv_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %priv_tx, align 4
  %cmp.i65.not = icmp eq ptr %10, %priv_tx
  br i1 %cmp.i65.not, label %cleanup.lor.lhs.false20_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.lor.lhs.false20_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false20

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false24.for.end_crit_edge, %lor.lhs.false20.for.end_crit_edge, %if.then14.for.end_crit_edge
  call void @finish_wait(ptr noundef %waitq_tx, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end27.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end33

if.end33:                                         ; preds = %__out, %lor.lhs.false12.if.end33_crit_edge, %lor.lhs.false.if.end33_crit_edge, %if.end5.if.end33_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %11 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end33.do.end52_crit_edge, label %do.body38

if.end33.do.end52_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

do.body38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_tx_loop.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_tx_loop, %do.end52)) #6
          to label %if.then46 [label %do.end52], !srcloc !45

if.then46:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_tx_loop.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 252) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then46, %do.body38, %if.end33.do.end52_crit_edge
  %call = call zeroext i1 @kthread_should_stop() #6
  br i1 %call, label %do.end52.while.end_crit_edge, label %do.end52.while.body_crit_edge

do.end52.while.body_crit_edge:                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end52.while.end_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.end52.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhci_send_cmd_submit(ptr noundef %vdev) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %pdu_header = alloca %struct.usbip_header, align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  %0 = call ptr @memset(ptr %msg, i32 255, i32 56)
  %priv_lock.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 5
  %call3.i263 = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #6
  %priv_tx.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 6
  %1 = ptrtoint ptr %priv_tx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv_tx.i, align 4
  %cmp13.not.i264 = icmp eq ptr %2, %priv_tx.i
  br i1 %cmp13.not.i264, label %entry.dequeue_from_priv_tx.exit.thread_crit_edge, label %for.body.i.lr.ph

entry.dequeue_from_priv_tx.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dequeue_from_priv_tx.exit.thread

for.body.i.lr.ph:                                 ; preds = %entry
  %priv_rx.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 7
  %prev.i2.i.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 7, i32 1
  %tcp_socket = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 4, i32 5
  br label %for.body.i

dequeue_from_priv_tx.exit.thread:                 ; preds = %cleanup115.dequeue_from_priv_tx.exit.thread_crit_edge, %entry.dequeue_from_priv_tx.exit.thread_crit_edge
  %total_size.0.lcssa = phi i32 [ 0, %entry.dequeue_from_priv_tx.exit.thread_crit_edge ], [ %add114, %cleanup115.dequeue_from_priv_tx.exit.thread_crit_edge ]
  %call3.i.lcssa = phi i32 [ %call3.i263, %entry.dequeue_from_priv_tx.exit.thread_crit_edge ], [ %call3.i, %cleanup115.dequeue_from_priv_tx.exit.thread_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i.lcssa) #6
  br label %cleanup120

for.body.i:                                       ; preds = %cleanup115.for.body.i_crit_edge, %for.body.i.lr.ph
  %3 = phi ptr [ %2, %for.body.i.lr.ph ], [ %81, %cleanup115.for.body.i_crit_edge ]
  %call3.i266 = phi i32 [ %call3.i263, %for.body.i.lr.ph ], [ %call3.i, %cleanup115.for.body.i_crit_edge ]
  %total_size.0265 = phi i32 [ 0, %for.body.i.lr.ph ], [ %add114, %cleanup115.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %3, i32 -4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.__list_del_entry.exit.i.i_crit_edge

for.body.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %11, ptr noundef %priv_rx.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.dequeue_from_priv_tx.exit_crit_edge

__list_del_entry.exit.i.i.dequeue_from_priv_tx.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dequeue_from_priv_tx.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %prev.i2.i.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %priv_rx.i, ptr %3, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %3, ptr %11, align 4
  br label %dequeue_from_priv_tx.exit

dequeue_from_priv_tx.exit:                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.dequeue_from_priv_tx.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i266) #6
  %cmp.not = icmp eq ptr %add.ptr.i, null
  br i1 %cmp.not, label %dequeue_from_priv_tx.exit.cleanup120_crit_edge, label %while.body

dequeue_from_priv_tx.exit.cleanup120_crit_edge:   ; preds = %dequeue_from_priv_tx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup120

while.body:                                       ; preds = %dequeue_from_priv_tx.exit
  %urb1 = getelementptr i8, ptr %3, i32 12
  %16 = ptrtoint ptr %urb1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pdu_header) #6
  %18 = call ptr @memset(ptr %pdu_header, i32 0, i32 48)
  %19 = call ptr @memset(ptr %msg, i32 0, i32 56)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %20 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.do.end11_crit_edge, label %do.body2

while.body.do.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.body2:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_send_cmd_submit.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_send_cmd_submit, %do.end11)) #6
          to label %if.then8 [label %do.end11], !srcloc !45

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_send_cmd_submit.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 78, i32 noundef %22) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2, %while.body.do.end11_crit_edge
  %num_sgs = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 18
  %23 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not = icmp eq i32 %24, 0
  br i1 %tobool12.not, label %do.end11.if.end17_crit_edge, label %land.lhs.true

do.end11.if.end17_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %pipe = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 10
  %25 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pipe, align 4
  %and13 = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %add = add i32 %24, 2
  %spec.select = select i1 %tobool14.not, i32 %add, i32 3
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %do.end11.if.end17_crit_edge
  %iovnum.0 = phi i32 [ 3, %do.end11.if.end17_crit_edge ], [ %spec.select, %land.lhs.true ]
  %27 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %iovnum.0, i32 8) #6
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %if.end17.cleanup115.thread_crit_edge, label %if.end7.i.i, !prof !46

if.end17.cleanup115.thread_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup115.thread

if.end7.i.i:                                      ; preds = %if.end17
  %29 = extractvalue { i32, i1 } %27, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #9
  %tobool19.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool19.not, label %if.end7.i.i.cleanup115.thread_crit_edge, label %if.end21

if.end7.i.i.cleanup115.thread_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup115.thread

cleanup115.thread:                                ; preds = %if.end7.i.i.cleanup115.thread_crit_edge, %if.end17.cleanup115.thread_crit_edge
  %ud = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 4
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 9) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #6
  br label %cleanup120

if.end21:                                         ; preds = %if.end7.i.i
  %30 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool23.not = icmp eq i32 %31, 0
  br i1 %tobool23.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 13
  %32 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %transfer_flags, align 4
  %or = or i32 %33, 262144
  store i32 %or, ptr %transfer_flags, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  call fastcc void @setup_cmd_submit_pdu(ptr noundef nonnull %pdu_header, ptr noundef %17)
  call void @usbip_header_correct_endian(ptr noundef nonnull %pdu_header, i32 noundef 1) #6
  %34 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pdu_header, ptr %call8.i.i, align 128
  %iov_len = getelementptr inbounds %struct.kvec, ptr %call8.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 48, ptr %iov_len, align 4
  %pipe28 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 10
  %36 = ptrtoint ptr %pipe28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pipe28, align 4
  %and29 = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %if.end25.if.end61_crit_edge

if.end25.if.end61_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

land.lhs.true31:                                  ; preds = %if.end25
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 19
  %38 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp32.not = icmp eq i32 %39, 0
  br i1 %cmp32.not, label %land.lhs.true31.if.end61thread-pre-split_crit_edge, label %if.then33

land.lhs.true31.if.end61thread-pre-split_crit_edge: ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61thread-pre-split

if.then33:                                        ; preds = %land.lhs.true31
  %40 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool35.not = icmp eq i32 %41, 0
  br i1 %tobool35.not, label %if.then33.if.else51_crit_edge, label %land.lhs.true36

if.then33.if.else51_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else51

land.lhs.true36:                                  ; preds = %if.then33
  %ep = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 9
  %42 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ep, align 4
  %bmAttributes.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bmAttributes.i, align 1
  %46 = and i8 %45, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp.i.not = icmp eq i8 %46, 1
  br i1 %cmp.i.not, label %land.lhs.true36.if.else51_crit_edge, label %if.then39

land.lhs.true36.if.else51_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else51

if.then39:                                        ; preds = %land.lhs.true36
  %47 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_sgs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp42259 = icmp sgt i32 %48, 0
  br i1 %cmp42259, label %for.body.preheader, label %if.then39.if.end58_crit_edge

if.then39.if.end58_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body.preheader:                               ; preds = %if.then39
  %sg40 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 16
  %49 = ptrtoint ptr %sg40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sg40, align 4
  br label %for.body

for.body:                                         ; preds = %sg_virt.exit.for.body_crit_edge, %for.body.preheader
  %sg.0262 = phi ptr [ %call50, %sg_virt.exit.for.body_crit_edge ], [ %50, %for.body.preheader ]
  %i.0261 = phi i32 [ %inc49, %sg_virt.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %iovnum.1260 = phi i32 [ %inc48, %sg_virt.exit.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %51 = ptrtoint ptr %sg.0262 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sg.0262, align 4
  %and.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !47

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !48
  unreachable

sg_virt.exit:                                     ; preds = %for.body
  %and.i.i = and i32 %52, -4
  %53 = inttoptr i32 %and.i.i to ptr
  %call1.i = call ptr @page_address(ptr noundef %53) #6
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0262, i32 0, i32 1
  %54 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %call1.i, i32 %55
  %arrayidx44 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.1260
  %56 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr.i196, ptr %arrayidx44, align 8
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0262, i32 0, i32 2
  %57 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %length, align 4
  %iov_len47 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.1260, i32 1
  %59 = ptrtoint ptr %iov_len47 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %iov_len47, align 4
  %inc48 = add nuw i32 %iovnum.1260, 1
  %inc49 = add nuw nsw i32 %i.0261, 1
  %call50 = call ptr @sg_next(ptr noundef %sg.0262) #6
  %60 = ptrtoint ptr %num_sgs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_sgs, align 4
  %cmp42 = icmp slt i32 %inc49, %61
  br i1 %cmp42, label %sg_virt.exit.for.body_crit_edge, label %sg_virt.exit.if.end58_crit_edge

sg_virt.exit.if.end58_crit_edge:                  ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

sg_virt.exit.for.body_crit_edge:                  ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.else51:                                        ; preds = %land.lhs.true36.if.else51_crit_edge, %if.then33.if.else51_crit_edge
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 14
  %62 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx52 = getelementptr %struct.kvec, ptr %call8.i.i, i32 1
  %64 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %arrayidx52, align 8
  %65 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %transfer_buffer_length, align 4
  %iov_len56 = getelementptr %struct.kvec, ptr %call8.i.i, i32 1, i32 1
  %67 = ptrtoint ptr %iov_len56 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %iov_len56, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else51, %sg_virt.exit.if.end58_crit_edge, %if.then39.if.end58_crit_edge
  %iovnum.2 = phi i32 [ 2, %if.else51 ], [ 1, %if.then39.if.end58_crit_edge ], [ %inc48, %sg_virt.exit.if.end58_crit_edge ]
  %68 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %transfer_buffer_length, align 4
  %add60 = add i32 %69, 48
  br label %if.end61thread-pre-split

if.end61thread-pre-split:                         ; preds = %if.end58, %land.lhs.true31.if.end61thread-pre-split_crit_edge
  %txsize.0.ph = phi i32 [ 48, %land.lhs.true31.if.end61thread-pre-split_crit_edge ], [ %add60, %if.end58 ]
  %iovnum.3.ph = phi i32 [ 1, %land.lhs.true31.if.end61thread-pre-split_crit_edge ], [ %iovnum.2, %if.end58 ]
  %70 = ptrtoint ptr %pipe28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr = load i32, ptr %pipe28, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end61thread-pre-split, %if.end25.if.end61_crit_edge
  %71 = phi i32 [ %.pr, %if.end61thread-pre-split ], [ %37, %if.end25.if.end61_crit_edge ]
  %txsize.0 = phi i32 [ %txsize.0.ph, %if.end61thread-pre-split ], [ 48, %if.end25.if.end61_crit_edge ]
  %iovnum.3 = phi i32 [ %iovnum.3.ph, %if.end61thread-pre-split ], [ 1, %if.end25.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %71)
  %cmp64 = icmp ult i32 %71, 1073741824
  br i1 %cmp64, label %if.then65, label %if.end61.if.end77_crit_edge

if.end61.if.end77_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then65:                                        ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %72 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %len, align 4
  %call66 = call ptr @usbip_alloc_iso_desc_pdu(ptr noundef %17, ptr noundef nonnull %len) #6
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %cleanup115.thread234, label %cleanup

cleanup115.thread234:                             ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %ud69 = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 4
  call void @usbip_event_add(ptr noundef %ud69, i32 noundef 9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #6
  br label %err_iso_buffer

cleanup:                                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx71 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.3
  %73 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call66, ptr %arrayidx71, align 8
  %74 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len, align 4
  %iov_len74 = getelementptr %struct.kvec, ptr %call8.i.i, i32 %iovnum.3, i32 1
  %76 = ptrtoint ptr %iov_len74 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %iov_len74, align 4
  %inc75 = add i32 %iovnum.3, 1
  %add76 = add i32 %75, %txsize.0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  br label %if.end77

if.end77:                                         ; preds = %cleanup, %if.end61.if.end77_crit_edge
  %txsize.2 = phi i32 [ %add76, %cleanup ], [ %txsize.0, %if.end61.if.end77_crit_edge ]
  %iovnum.5 = phi i32 [ %inc75, %cleanup ], [ %iovnum.3, %if.end61.if.end77_crit_edge ]
  %iso_buffer.1 = phi ptr [ %call66, %cleanup ], [ null, %if.end61.if.end77_crit_edge ]
  %77 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tcp_socket, align 4
  %call79 = call i32 @kernel_sendmsg(ptr noundef %78, ptr noundef nonnull %msg, ptr noundef nonnull %call8.i.i, i32 noundef %iovnum.5, i32 noundef %txsize.2) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call79, i32 %txsize.2)
  %cmp80.not = icmp eq i32 %call79, %txsize.2
  br i1 %cmp80.not, label %if.end88, label %err_tx

if.end88:                                         ; preds = %if.end77
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  call void @kfree(ptr noundef %iso_buffer.1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %79 = load i32, ptr @usbip_debug_flag, align 4
  %and90 = and i32 %79, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.cleanup115_crit_edge, label %do.body93

if.end88.cleanup115_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup115

do.body93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_send_cmd_submit.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_send_cmd_submit, %cleanup115)) #6
          to label %if.then107 [label %cleanup115], !srcloc !45

if.then107:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_send_cmd_submit.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef 154) #6
  br label %cleanup115

cleanup115:                                       ; preds = %if.then107, %do.body93, %if.end88.cleanup115_crit_edge
  %add114 = add i32 %txsize.2, %total_size.0265
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #6
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #6
  %80 = ptrtoint ptr %priv_tx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %priv_tx.i, align 4
  %cmp13.not.i = icmp eq ptr %81, %priv_tx.i
  br i1 %cmp13.not.i, label %cleanup115.dequeue_from_priv_tx.exit.thread_crit_edge, label %cleanup115.for.body.i_crit_edge

cleanup115.for.body.i_crit_edge:                  ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup115.dequeue_from_priv_tx.exit.thread_crit_edge: ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #8
  br label %dequeue_from_priv_tx.exit.thread

err_tx:                                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %ud78 = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 143, i32 noundef %call79, i32 noundef %txsize.2) #10
  call void @usbip_event_add(ptr noundef %ud78, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #6
  call void @kfree(ptr noundef %iso_buffer.1) #6
  br label %err_iso_buffer

err_iso_buffer:                                   ; preds = %err_tx, %cleanup115.thread234
  %err.1231 = phi i32 [ -32, %err_tx ], [ -12, %cleanup115.thread234 ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup120

cleanup120:                                       ; preds = %err_iso_buffer, %cleanup115.thread, %dequeue_from_priv_tx.exit.cleanup120_crit_edge, %dequeue_from_priv_tx.exit.thread
  %retval.2 = phi i32 [ %err.1231, %err_iso_buffer ], [ %total_size.0.lcssa, %dequeue_from_priv_tx.exit.thread ], [ -12, %cleanup115.thread ], [ %total_size.0265, %dequeue_from_priv_tx.exit.cleanup120_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vhci_send_cmd_unlink(ptr noundef %vdev) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.msghdr, align 8
  %iov = alloca %struct.kvec, align 8
  %pdu_header = alloca %struct.usbip_header, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #6
  %0 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #6
  %1 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %iov, align 8, !annotation !49
  %2 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !49
  %priv_lock.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 5
  %call3.i85 = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #6
  %unlink_tx.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 8
  %4 = ptrtoint ptr %unlink_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unlink_tx.i, align 4
  %cmp13.not.i86 = icmp eq ptr %5, %unlink_tx.i
  br i1 %cmp13.not.i86, label %entry.dequeue_from_unlink_tx.exit.thread_crit_edge, label %for.body.i.lr.ph

entry.dequeue_from_unlink_tx.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dequeue_from_unlink_tx.exit.thread

for.body.i.lr.ph:                                 ; preds = %entry
  %unlink_rx.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 9
  %prev.i2.i.i = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 9, i32 1
  %seqnum13 = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 1
  %devid = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 1
  %devid15 = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 2
  %ep = getelementptr inbounds %struct.usbip_header_basic, ptr %pdu_header, i32 0, i32 4
  %u = getelementptr inbounds %struct.usbip_header, ptr %pdu_header, i32 0, i32 1
  %tcp_socket = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 4, i32 5
  br label %for.body.i

dequeue_from_unlink_tx.exit.thread:               ; preds = %cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge, %entry.dequeue_from_unlink_tx.exit.thread_crit_edge
  %total_size.0.lcssa = phi i32 [ 0, %entry.dequeue_from_unlink_tx.exit.thread_crit_edge ], [ %add, %cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge ]
  %call3.i.lcssa = phi i32 [ %call3.i85, %entry.dequeue_from_unlink_tx.exit.thread_crit_edge ], [ %call3.i, %cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i.lcssa) #6
  br label %cleanup54

for.body.i:                                       ; preds = %cleanup.for.body.i_crit_edge, %for.body.i.lr.ph
  %6 = phi ptr [ %5, %for.body.i.lr.ph ], [ %42, %cleanup.for.body.i_crit_edge ]
  %call3.i88 = phi i32 [ %call3.i85, %for.body.i.lr.ph ], [ %call3.i, %cleanup.for.body.i_crit_edge ]
  %total_size.087 = phi i32 [ 0, %for.body.i.lr.ph ], [ %add, %cleanup.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.__list_del_entry.exit.i.i_crit_edge

for.body.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %14, ptr noundef %unlink_rx.i) #6
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.dequeue_from_unlink_tx.exit_crit_edge

__list_del_entry.exit.i.i.dequeue_from_unlink_tx.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dequeue_from_unlink_tx.exit

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %prev.i2.i.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %unlink_rx.i, ptr %6, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %6, ptr %14, align 4
  br label %dequeue_from_unlink_tx.exit

dequeue_from_unlink_tx.exit:                      ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.dequeue_from_unlink_tx.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %priv_lock.i, i32 noundef %call3.i88) #6
  %cmp.not = icmp eq ptr %add.ptr.i, null
  br i1 %cmp.not, label %dequeue_from_unlink_tx.exit.cleanup54_crit_edge, label %while.body

dequeue_from_unlink_tx.exit.cleanup54_crit_edge:  ; preds = %dequeue_from_unlink_tx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup54

while.body:                                       ; preds = %dequeue_from_unlink_tx.exit
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pdu_header) #6
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
  br i1 %tobool.not, label %while.body.do.end10_crit_edge, label %do.body1

while.body.do.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

do.body1:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_send_cmd_unlink.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_send_cmd_unlink, %do.end10)) #6
          to label %if.then7 [label %do.end10], !srcloc !45

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_send_cmd_unlink.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef 204, i32 noundef %24) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %while.body.do.end10_crit_edge
  %25 = ptrtoint ptr %pdu_header to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %pdu_header, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  %28 = ptrtoint ptr %seqnum13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %seqnum13, align 4
  %29 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %devid, align 4
  %31 = ptrtoint ptr %devid15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %devid15, align 4
  %32 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %ep, align 4
  %unlink_seqnum = getelementptr i8, ptr %6, i32 8
  %33 = ptrtoint ptr %unlink_seqnum to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %unlink_seqnum, align 4
  %35 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %u, align 4
  call void @usbip_header_correct_endian(ptr noundef nonnull %pdu_header, i32 noundef 1) #6
  %36 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pdu_header, ptr %iov, align 8
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 48, ptr %2, align 4
  %38 = ptrtoint ptr %tcp_socket to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tcp_socket, align 4
  %call18 = call i32 @kernel_sendmsg(ptr noundef %39, ptr noundef nonnull %msg, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 48
  br i1 %cmp19.not, label %do.body28, label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  %ud = getelementptr inbounds %struct.vhci_device, ptr %vdev, i32 0, i32 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14, i32 noundef 222, i32 noundef %call18, i32 noundef 48) #10
  call void @usbip_event_add(ptr noundef %ud, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #6
  br label %cleanup54

do.body28:                                        ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %40 = load i32, ptr @usbip_debug_flag, align 4
  %and29 = and i32 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.cleanup_crit_edge, label %do.body32

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body32:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vhci_send_cmd_unlink.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@vhci_send_cmd_unlink, %cleanup)) #6
          to label %if.then46 [label %cleanup], !srcloc !45

if.then46:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vhci_send_cmd_unlink.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14, i32 noundef 227) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body32, %do.body28.cleanup_crit_edge
  %add = add i32 %total_size.087, 48
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pdu_header) #6
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %priv_lock.i) #6
  %41 = ptrtoint ptr %unlink_tx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %unlink_tx.i, align 4
  %cmp13.not.i = icmp eq ptr %42, %unlink_tx.i
  br i1 %cmp13.not.i, label %cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge, label %cleanup.for.body.i_crit_edge

cleanup.for.body.i_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.dequeue_from_unlink_tx.exit.thread_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %dequeue_from_unlink_tx.exit.thread

cleanup54:                                        ; preds = %cleanup.thread, %dequeue_from_unlink_tx.exit.cleanup54_crit_edge, %dequeue_from_unlink_tx.exit.thread
  %retval.2 = phi i32 [ %total_size.0.lcssa, %dequeue_from_unlink_tx.exit.thread ], [ -1, %cleanup.thread ], [ %total_size.087, %dequeue_from_unlink_tx.exit.cleanup54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #6
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_event_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_cmd_submit_pdu(ptr noundef %pdup, ptr noundef %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hcpriv = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 2
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %vdev1 = getelementptr inbounds %struct.vhci_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usbip_debug_flag to i32))
  %4 = load i32, ptr @usbip_debug_flag, align 4
  %and = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_cmd_submit_pdu.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_cmd_submit_pdu, %do.end11)) #6
          to label %if.then7 [label %do.end11], !srcloc !45

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %pipe = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %5 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipe, align 4
  %shr = lshr i32 %6, 8
  %and8 = and i32 %shr, 127
  %devid = getelementptr inbounds %struct.vhci_device, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devid, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @setup_cmd_submit_pdu.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 19, i32 noundef %and8, i32 noundef %8) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then7, %do.body2, %entry.do.end11_crit_edge
  %9 = ptrtoint ptr %pdup to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 1, ptr %pdup, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %seqnum13 = getelementptr inbounds %struct.usbip_header_basic, ptr %pdup, i32 0, i32 1
  %12 = ptrtoint ptr %seqnum13 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %seqnum13, align 1
  %devid14 = getelementptr inbounds %struct.vhci_device, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %devid14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devid14, align 4
  %devid16 = getelementptr inbounds %struct.usbip_header_basic, ptr %pdup, i32 0, i32 2
  %15 = ptrtoint ptr %devid16 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %devid16, align 1
  %pipe17 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %16 = ptrtoint ptr %pipe17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe17, align 4
  %and18 = lshr i32 %17, 7
  %and18.lobit = and i32 %and18, 1
  %direction = getelementptr inbounds %struct.usbip_header_basic, ptr %pdup, i32 0, i32 3
  %18 = ptrtoint ptr %direction to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %and18.lobit, ptr %direction, align 1
  %19 = load i32, ptr %pipe17, align 4
  %shr22 = lshr i32 %19, 15
  %and23 = and i32 %shr22, 15
  %ep = getelementptr inbounds %struct.usbip_header_basic, ptr %pdup, i32 0, i32 4
  %20 = ptrtoint ptr %ep to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %and23, ptr %ep, align 1
  tail call void @usbip_pack_pdu(ptr noundef %pdup, ptr noundef %urb, i32 noundef 1, i32 noundef 1) #6
  %setup_packet = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 21
  %21 = ptrtoint ptr %setup_packet to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %setup_packet, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %do.end11.if.end28_crit_edge, label %if.then26

do.end11.if.end28_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %setup = getelementptr inbounds %struct.usbip_header, ptr %pdup, i32 0, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %22, align 1
  %25 = ptrtoint ptr %setup to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %setup, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %do.end11.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_header_correct_endian(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usbip_alloc_iso_desc_pdu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_sendmsg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbip_pack_pdu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/usbip/vhci_tx.c", i32 247, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/usbip/vhci_tx.c", i32 252, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vhci_tx_loop.__UNIQUE_ID_ddebug246, !3, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/usbip/vhci_tx.c", i32 77, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vhci_send_cmd_submit.__UNIQUE_ID_ddebug242, !9, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/usbip/vhci_tx.c", i32 142, i32 4}
!15 = !{ptr @vhci_send_cmd_submit._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @vhci_send_cmd_submit._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/usbip/vhci_tx.c", i32 154, i32 3}
!19 = !{ptr @vhci_send_cmd_submit.__UNIQUE_ID_ddebug243, !18, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/usbip/vhci_tx.c", i32 18, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @setup_cmd_submit_pdu.__UNIQUE_ID_ddebug241, !22, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!25 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/usbip/vhci_tx.c", i32 204, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @vhci_send_cmd_unlink.__UNIQUE_ID_ddebug244, !27, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!30 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vhci_send_cmd_unlink._entry, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/usb/usbip/vhci_tx.c", i32 221, i32 4}
!33 = !{ptr @vhci_send_cmd_unlink._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @vhci_send_cmd_unlink.__UNIQUE_ID_ddebug245, !35, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!35 = !{!"../drivers/usb/usbip/vhci_tx.c", i32 227, i32 3}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148255273, i64 2148255278, i64 2148255291, i64 2148255335, i64 2148255369, i64 2148255390}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2153404058, i64 2153404550, i64 2153404095, i64 2153404151, i64 2153404185, i64 2153404209, i64 2153404250, i64 2153404271, i64 2153404299, i64 2153404333}
!49 = !{!"auto-init"}
