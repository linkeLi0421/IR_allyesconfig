; ModuleID = '/llk/IR_all_yes/drivers/net/usb/cdc_eem.c_pt.bc'
source_filename = "../drivers/net/usb/cdc_eem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_cdc_eem__347_362_eem_driver_init6 = internal global ptr @eem_driver_init, section ".initcall6.init", align 4
@eem_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_eem_driver_exit = internal global ptr @eem_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author348 = internal constant [56 x i8] c"cdc_eem.author=Omar Laazimani <omar.oberthur@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [32 x i8] c"cdc_eem.description=USB CDC EEM\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [37 x i8] c"cdc_eem.file=drivers/net/usb/cdc_eem\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [20 x i8] c"cdc_eem.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cdc_eem\00", [24 x i8] zeroinitializer }, align 32
@products = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 12, i8 7, i8 0, i32 ptrtoint (ptr @eem_info to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@eem_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 4128, ptr @eem_bind, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @eem_rx_fixup, ptr @eem_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CDC EEM Device\00", [17 x i8] zeroinitializer }, align 32
@eem_rx_fixup.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eem_rx_fixup\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/usb/cdc_eem.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reserved command %04x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unexpected link command %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"link cmd failure\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"eem_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 352, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 362, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 340, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"eem_info\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 330, i32 33 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 331, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 201, i32 5 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 250, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [29 x i8] c"../drivers/net/usb/cdc_eem.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 64, i32 25 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_eem_driver_exit, ptr @__initcall__kmod_cdc_eem__347_362_eem_driver_init6, ptr @eem_driver_exit, ptr @eem_driver, ptr @.str, ptr @products, ptr @eem_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @eem_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eem_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @eem_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %3, 10
  store i16 %add, ptr %hard_header_len, align 2
  %4 = load ptr, ptr %net, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mtu, align 4
  %hard_header_len4 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 19
  %7 = ptrtoint ptr %hard_header_len4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hard_header_len4, align 2
  %conv5 = zext i16 %8 to i32
  %add6 = add i32 %6, %conv5
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %9 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add6, ptr %hard_mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %out.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pr = load i32, ptr %len1, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond143.do.body_crit_edge, %entry
  %1 = phi i32 [ %47, %do.cond143.do.body_crit_edge ], [ %.pr, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %do.body.return_crit_edge, label %if.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %do.body
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %3, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #6
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #6
  %conv = zext i16 %6 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %and5 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end19, label %do.body9

do.body9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_rx_fixup.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@eem_rx_fixup, %if.then14)) #6
          to label %do.cond143 [label %if.then14], !srcloc !37

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @eem_rx_fixup.__UNIQUE_ID_ddebug346, ptr noundef %8, ptr noundef nonnull @.str.4, i32 noundef %conv) #6
  br label %do.cond143

if.end19:                                         ; preds = %if.then3
  %9 = lshr i16 %6, 11
  %and21 = and i16 %9, 7
  %conv23 = zext i16 %and21 to i32
  %10 = zext i32 %conv23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv23, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb49
    i32 3, label %if.end19.do.cond143_crit_edge
    i32 4, label %if.end19.do.cond143_crit_edge229
  ]

if.end19.do.cond143_crit_edge229:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond143

if.end19.do.cond143_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond143

sw.bb:                                            ; preds = %if.end19
  %and25 = and i16 %6, 2047
  %11 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len1, align 4
  %conv28 = zext i16 %and25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv28)
  %cmp29 = icmp ult i32 %12, %conv28
  br i1 %cmp29, label %sw.bb.return_crit_edge, label %if.end32

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end32:                                         ; preds = %sw.bb
  %call33 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #6
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.cleanup138.thread212_crit_edge, label %if.end44, !prof !38

if.end32.cleanup138.thread212_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup138.thread212

if.end44:                                         ; preds = %if.end32
  tail call void @skb_trim(ptr noundef nonnull %call33, i32 noundef %conv28) #6
  %or = or i16 %and25, -30720
  %call48 = tail call ptr @skb_push(ptr noundef nonnull %call33, i32 noundef 2) #6
  %13 = tail call i16 @llvm.bswap.i16(i16 %or) #6
  %14 = ptrtoint ptr %call48 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %13, ptr %call48, align 1
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end44.fail.i_crit_edge, label %if.end.i

if.end44.fail.i_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail.i

if.end.i:                                         ; preds = %if.end44
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call33, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call33, i32 0, i32 6
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %23 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %16, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %24 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %18, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %25 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %20, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %26 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %22, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %27 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @eem_linkcmd_complete, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %28 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call33, ptr %context4.i.i, align 4
  %call1.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup138.thread212_crit_edge, label %if.then3.i

if.end.i.cleanup138.thread212_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup138.thread212

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #6
  br label %fail.i

fail.i:                                           ; preds = %if.then3.i, %if.end44.fail.i_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call33) #6
  %29 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %30, ptr noundef nonnull @.str.6) #9
  br label %cleanup138.thread212

sw.bb49:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usbnet_device_suggests_idle(ptr noundef %dev) #6
  br label %do.cond143

sw.default:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.5, i32 noundef %conv23) #9
  br label %do.cond143

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp55 = icmp eq i16 %5, 0
  br i1 %cmp55, label %if.else.do.cond143_crit_edge, label %if.end58

if.else.do.cond143_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond143

if.end58:                                         ; preds = %if.else
  %and60 = and i16 %6, 16383
  %33 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len1, align 4
  %conv63 = zext i16 %and60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv63)
  %cmp64 = icmp ult i32 %34, %conv63
  br i1 %cmp64, label %if.end58.return_crit_edge, label %if.end67

if.end58.return_crit_edge:                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end67:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %and60)
  %cmp69 = icmp ult i16 %and60, 18
  br i1 %cmp69, label %if.end67.cleanup138.thread212_crit_edge, label %if.end72

if.end67.cleanup138.thread212_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup138.thread212

if.end72:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv63)
  %cmp75 = icmp eq i32 %34, %conv63
  br i1 %cmp75, label %if.end72.if.end92_crit_edge, label %if.else79

if.end72.if.end92_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.else79:                                        ; preds = %if.end72
  %call80 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #6
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.else79.return_crit_edge, label %if.else79.if.end92_crit_edge, !prof !38

if.else79.if.end92_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.else79.return_crit_edge:                       ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end92:                                         ; preds = %if.else79.if.end92_crit_edge, %if.end72.if.end92_crit_edge
  %skb2.0 = phi ptr [ %call80, %if.else79.if.end92_crit_edge ], [ %skb, %if.end72.if.end92_crit_edge ]
  %and94 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  %data105 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 19
  %35 = ptrtoint ptr %data105 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data105, align 4
  %add.ptr107 = getelementptr i8, ptr %36, i32 -4
  %add.ptr108 = getelementptr i8, ptr %add.ptr107, i32 %conv63
  %37 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %add.ptr108, align 1
  br i1 %tobool95.not, label %if.end92.if.end110_crit_edge, label %if.then96

if.end92.if.end110_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #6
  %len102 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 6
  %40 = ptrtoint ptr %len102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len102, align 4
  %sub = add i32 %41, -4
  %call103 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %36, i32 noundef %sub) #10
  %neg = xor i32 %call103, -1
  br label %if.end110

if.end110:                                        ; preds = %if.then96, %if.end92.if.end110_crit_edge
  %crc.0 = phi i32 [ %39, %if.then96 ], [ %38, %if.end92.if.end110_crit_edge ]
  %crc2.0 = phi i32 [ %neg, %if.then96 ], [ -559038737, %if.end92.if.end110_crit_edge ]
  %sub112 = add nsw i32 %conv63, -4
  tail call void @skb_trim(ptr noundef %skb2.0, i32 noundef %sub112) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %crc.0, i32 %crc2.0)
  %cmp115 = icmp eq i32 %crc.0, %crc2.0
  br i1 %cmp75, label %if.then114, label %if.end117

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %conv116 = zext i1 %cmp115 to i32
  br label %return

if.end117:                                        ; preds = %if.end110
  br i1 %cmp115, label %if.else128, label %if.then126, !prof !39

if.then126:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %net, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 36, i32 4
  %44 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %45, 1
  store i32 %inc, ptr %rx_errors, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb2.0, i32 noundef 1) #6
  br label %cleanup138.thread212

if.else128:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef %skb2.0) #6
  br label %cleanup138.thread212

cleanup138.thread212:                             ; preds = %if.else128, %if.then126, %if.end67.cleanup138.thread212_crit_edge, %fail.i, %if.end.i.cleanup138.thread212_crit_edge, %if.end32.cleanup138.thread212_crit_edge
  %conv136.pre-phi = phi i32 [ %conv63, %if.then126 ], [ %conv63, %if.else128 ], [ %conv63, %if.end67.cleanup138.thread212_crit_edge ], [ %conv28, %if.end32.cleanup138.thread212_crit_edge ], [ %conv28, %if.end.i.cleanup138.thread212_crit_edge ], [ %conv28, %fail.i ]
  %call137 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv136.pre-phi) #6
  br label %do.cond143

do.cond143:                                       ; preds = %cleanup138.thread212, %if.else.do.cond143_crit_edge, %sw.default, %sw.bb49, %if.end19.do.cond143_crit_edge, %if.end19.do.cond143_crit_edge229, %if.then14, %do.body9
  %46 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len1, align 4
  %tobool145.not = icmp eq i32 %47, 0
  br i1 %tobool145.not, label %do.cond143.return_crit_edge, label %do.cond143.do.body_crit_edge

do.cond143.do.body_crit_edge:                     ; preds = %do.cond143
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond143.return_crit_edge:                      ; preds = %do.cond143
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %do.cond143.return_crit_edge, %if.then114, %if.else79.return_crit_edge, %if.end58.return_crit_edge, %sw.bb.return_crit_edge, %do.body.return_crit_edge
  %retval.5 = phi i32 [ %conv116, %if.then114 ], [ 0, %sw.bb.return_crit_edge ], [ 0, %if.else79.return_crit_edge ], [ 0, %if.end58.return_crit_edge ], [ 0, %do.body.return_crit_edge ], [ 1, %do.cond143.return_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @eem_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %conv2 = and i32 %1, 65535
  %add3 = add nuw nsw i32 %conv2, 6
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxpacket, align 4
  %rem = urem i32 %add3, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %spec.select = select i1 %tobool.not, i32 2, i32 0
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %4 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then6_crit_edge, label %skb_cloned.exit

entry.if.then6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

skb_cloned.exit:                                  ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %5 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %6, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #6
  %7 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.then6_crit_edge, label %skb_cloned.exit.if.end25_crit_edge

skb_cloned.exit.if.end25_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

skb_cloned.exit.if.then6_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %skb_cloned.exit.if.then6_crit_edge, %entry.if.then6_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %skb_tailroom.exit, label %if.then6.if.end14_crit_edge

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

skb_tailroom.exit:                                ; preds = %if.then6
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i76 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i77 = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i78 = sub i32 %sub.ptr.lhs.cast.i76, %sub.ptr.rhs.cast.i77
  %add9 = or i32 %spec.select, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i78, i32 %add9)
  %cmp.not = icmp sge i32 %sub.ptr.sub.i78, %add9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i)
  %cmp11 = icmp sgt i32 %sub.ptr.sub.i, 1
  %or.cond = select i1 %cmp.not, i1 %cmp11, i1 false
  br i1 %or.cond, label %skb_tailroom.exit.done_crit_edge, label %skb_tailroom.exit.if.end14_crit_edge

skb_tailroom.exit.if.end14_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

skb_tailroom.exit.done_crit_edge:                 ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end14:                                         ; preds = %skb_tailroom.exit.if.end14_crit_edge, %if.then6.if.end14_crit_edge
  %cond.i87 = phi i32 [ %sub.ptr.sub.i78, %skb_tailroom.exit.if.end14_crit_edge ], [ 0, %if.then6.if.end14_crit_edge ]
  %add15 = add i32 %cond.i87, %sub.ptr.sub.i
  %add16 = add nuw nsw i32 %spec.select, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %add16)
  %cmp17 = icmp sgt i32 %add15, %add16
  br i1 %cmp17, label %if.then19, label %if.end14.if.end25_crit_edge

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %12, i32 2
  %19 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len1, align 4
  %21 = call ptr @memmove(ptr %add.ptr, ptr %10, i32 %20)
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %conv2
  %tail.i80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i80 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %tail.i80, align 8
  br label %done

if.end25:                                         ; preds = %if.end14.if.end25_crit_edge, %skb_cloned.exit.if.end25_crit_edge
  %add26 = or i32 %spec.select, 4
  %call27 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 2, i32 noundef %add26, i32 noundef %flags) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.cleanup44_crit_edge, label %if.end25.done_crit_edge

if.end25.done_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end25.cleanup44_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

done:                                             ; preds = %if.end25.done_crit_edge, %if.then19, %skb_tailroom.exit.done_crit_edge
  %skb.addr.0 = phi ptr [ %call27, %if.end25.done_crit_edge ], [ %skb, %if.then19 ], [ %skb, %skb_tailroom.exit.done_crit_edge ]
  %data31 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %24 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data31, align 4
  %len32 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %26 = ptrtoint ptr %len32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len32, align 4
  %call33 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %25, i32 noundef %27) #10
  %neg = xor i32 %call33, -1
  %call34 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 4) #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %neg) #6
  %29 = ptrtoint ptr %call34 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %call34, align 1
  %30 = ptrtoint ptr %len32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len32, align 4
  %32 = trunc i32 %31 to i16
  %conv38 = or i16 %32, 16384
  %call39 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 2) #6
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv38) #6
  %34 = ptrtoint ptr %call39 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %call39, align 1
  br i1 %tobool.not, label %if.then41, label %done.cleanup44_crit_edge

done.cleanup44_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.then41:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 2) #6
  %35 = ptrtoint ptr %call42 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 0, ptr %call42, align 1
  br label %cleanup44

cleanup44:                                        ; preds = %if.then41, %done.cleanup44_crit_edge, %if.end25.cleanup44_crit_edge
  %retval.0 = phi ptr [ null, %if.end25.cleanup44_crit_edge ], [ %skb.addr.0, %if.then41 ], [ %skb.addr.0, %done.cleanup44_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_device_suggests_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eem_linkcmd_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @consume_skb(ptr noundef %1) #6
  tail call void @usb_free_urb(ptr noundef %urb) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_cdc_eem__347_362_eem_driver_init6, !1, !"__initcall__kmod_cdc_eem__347_362_eem_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/cdc_eem.c", i32 362, i32 1}
!2 = !{ptr @__exitcall_eem_driver_exit, !1, !"__exitcall_eem_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author348, !4, !"__UNIQUE_ID_author348", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/cdc_eem.c", i32 364, i32 1}
!5 = !{ptr @__UNIQUE_ID_description349, !6, !"__UNIQUE_ID_description349", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/cdc_eem.c", i32 365, i32 1}
!7 = !{ptr @__UNIQUE_ID_file350, !8, !"__UNIQUE_ID_file350", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/cdc_eem.c", i32 366, i32 1}
!9 = !{ptr @__UNIQUE_ID_license351, !8, !"__UNIQUE_ID_license351", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @eem_driver, !12, !"eem_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/cdc_eem.c", i32 352, i32 26}
!13 = !{ptr @products, !14, !"products", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/cdc_eem.c", i32 340, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/cdc_eem.c", i32 331, i32 17}
!17 = !{ptr @eem_info, !18, !"eem_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/cdc_eem.c", i32 330, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/cdc_eem.c", i32 201, i32 5}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @eem_rx_fixup.__UNIQUE_ID_ddebug346, !20, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/cdc_eem.c", i32 250, i32 10}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/cdc_eem.c", i32 64, i32 25}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148960341, i64 2148960346, i64 2148960359, i64 2148960403, i64 2148960437, i64 2148960458}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{!"branch_weights", i32 2000, i32 1}
