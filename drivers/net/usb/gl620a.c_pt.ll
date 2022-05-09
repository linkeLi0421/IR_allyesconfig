; ModuleID = '/llk/IR_all_yes/drivers/net/usb/gl620a.c_pt.bc'
source_filename = "../drivers/net/usb/gl620a.c"
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
%struct.gl_header = type { i32, %struct.gl_packet }
%struct.gl_packet = type { i32, [1 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_gl620a__347_224_gl620a_driver_init6 = internal global ptr @gl620a_driver_init, section ".initcall6.init", align 4
@gl620a_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_gl620a_driver_exit = internal global ptr @gl620a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author348 = internal constant [29 x i8] c"gl620a.author=Jiun-Jie Huang\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [56 x i8] c"gl620a.description=GL620-USB-A Host-to-Host Link cables\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [35 x i8] c"gl620a.file=drivers/net/usb/gl620a\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [19 x i8] c"gl620a.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gl620a\00", [25 x i8] zeroinitializer }, align 32
@products = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1507, i16 1282, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @genelink_info to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@genelink_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 4114, ptr @genelink_bind, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genelink_rx_fixup, ptr @genelink_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 1, i32 2, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Genesys GeneLink\00", [47 x i8] zeroinitializer }, align 32
@genelink_rx_fixup.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"genelink_rx_fixup\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/gl620a.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"genelink: invalid received packet count %u\0A\00", [52 x i8] zeroinitializer }, align 32
@genelink_rx_fixup.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"genelink: invalid rx length %d\0A\00", [32 x i8] zeroinitializer }, align 32
@genelink_rx_fixup.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"gl620a_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 214, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 224, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 201, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"genelink_info\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 187, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 188, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 84, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [28 x i8] c"../drivers/net/usb/gl620a.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 102, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_gl620a_driver_exit, ptr @__initcall__kmod_gl620a__347_224_gl620a_driver_init6, ptr @gl620a_driver_exit, ptr @gl620a_driver, ptr @.str, ptr @products, ptr @genelink_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gl620a_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genelink_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gl620a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @gl620a_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gl620a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @gl620a_driver) #5
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @genelink_bind(ptr nocapture noundef %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 48580, ptr %hard_mtu, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %4, 4
  store i16 %add, ptr %hard_header_len, align 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_info, align 4
  %in = getelementptr inbounds %struct.driver_info, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %6, align 8
  %shl.i = shl i32 %12, 8
  %shl1.i = shl i32 %10, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or2 = or i32 %or.i, -1073741696
  %in3 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 13
  %13 = ptrtoint ptr %in3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or2, ptr %in3, align 4
  %out = getelementptr inbounds %struct.driver_info, ptr %8, i32 0, i32 17
  %14 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %out, align 4
  %16 = load i32, ptr %6, align 8
  %shl.i16 = shl i32 %16, 8
  %shl1.i17 = shl i32 %15, 15
  %or.i18 = or i32 %shl1.i17, %shl.i16
  %or7 = or i32 %or.i18, -1073741824
  %out8 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 14
  %17 = ptrtoint ptr %out8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or7, ptr %out8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @genelink_rx_fixup(ptr noundef %dev, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ult i32 %1, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp2 = icmp ugt i32 %10, 32
  br i1 %cmp2, label %do.body5, label %if.end13

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @genelink_rx_fixup.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@genelink_rx_fixup, %if.then8)) #5
          to label %cleanup [label %if.then8], !srcloc !38

if.then8:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @genelink_rx_fixup.__UNIQUE_ID_ddebug344, ptr noundef %12, ptr noundef nonnull @.str.4, i32 noundef %10) #5
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp15114 = icmp ugt i32 %10, 1
  br i1 %cmp15114, label %while.body.preheader, label %if.end13.while.end_crit_edge

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.preheader:                             ; preds = %if.end13
  %packets = getelementptr inbounds %struct.gl_header, ptr %7, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %while.body.preheader
  %packet.0116 = phi ptr [ %arrayidx, %if.end45.while.body_crit_edge ], [ %packets, %while.body.preheader ]
  %count.0115 = phi i32 [ %dec, %if.end45.while.body_crit_edge ], [ %10, %while.body.preheader ]
  %13 = ptrtoint ptr %packet.0116 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %packet.0116, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %15)
  %cmp17 = icmp ugt i32 %15, 1514
  br i1 %cmp17, label %do.body21, label %if.end40

do.body21:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @genelink_rx_fixup.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@genelink_rx_fixup, %if.then33)) #5
          to label %cleanup [label %if.then33], !srcloc !38

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @genelink_rx_fixup.__UNIQUE_ID_ddebug345, ptr noundef %17, ptr noundef nonnull @.str.5, i32 noundef %15) #5
  br label %cleanup

if.end40:                                         ; preds = %while.body
  %call.i = tail call ptr @__alloc_skb(i32 noundef %15, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %tobool42.not = icmp eq ptr %call.i, null
  br i1 %tobool42.not, label %if.end40.if.end45_crit_edge, label %if.then43

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %packet_data = getelementptr inbounds %struct.gl_packet, ptr %packet.0116, i32 0, i32 1
  %call.i110 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %15) #5
  %18 = call ptr @memcpy(ptr %call.i110, ptr %packet_data, i32 %15)
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge
  %arrayidx = getelementptr %struct.gl_packet, ptr %packet.0116, i32 0, i32 1, i32 %15
  %dec = add i32 %count.0115, -1
  %add = add nuw nsw i32 %15, 4
  %call47 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #5
  %cmp15 = icmp ugt i32 %dec, 1
  br i1 %cmp15, label %if.end45.while.body_crit_edge, label %if.end45.while.end_crit_edge

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end45.while.end_crit_edge, %if.end13.while.end_crit_edge
  %call48 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #5
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %20)
  %cmp50 = icmp ugt i32 %20, 1514
  br i1 %cmp50, label %do.body54, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body54:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @genelink_rx_fixup.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@genelink_rx_fixup, %if.then66)) #5
          to label %cleanup [label %if.then66], !srcloc !38

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 4
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @genelink_rx_fixup.__UNIQUE_ID_ddebug346, ptr noundef %22, ptr noundef nonnull @.str.5, i32 noundef %24) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %do.body54, %while.end.cleanup_crit_edge, %if.then33, %do.body21, %if.then8, %do.body5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.then33 ], [ 0, %if.then66 ], [ 1, %while.end.cleanup_crit_edge ], [ 0, %do.body5 ], [ 0, %do.body21 ], [ 0, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @genelink_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %entry.skb_tailroom.exit_crit_edge

entry.skb_tailroom.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i55 = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i56 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i57 = sub i32 %sub.ptr.lhs.cast.i55, %sub.ptr.rhs.cast.i56
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %entry.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i57, %cond.false.i ], [ 0, %entry.skb_tailroom.exit_crit_edge ]
  %add = add i32 %1, 8
  %rem = and i32 %add, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %cond = zext i1 %tobool.not to i32
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %12 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %skb_tailroom.exit.land.lhs.true_crit_edge, label %skb_cloned.exit

skb_tailroom.exit.land.lhs.true_crit_edge:        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

skb_cloned.exit:                                  ; preds = %skb_tailroom.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #5
  %15 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.land.lhs.true_crit_edge, label %skb_cloned.exit.if.else_crit_edge

skb_cloned.exit.if.else_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

skb_cloned.exit.land.lhs.true_crit_edge:          ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %skb_cloned.exit.land.lhs.true_crit_edge, %skb_tailroom.exit.land.lhs.true_crit_edge
  %add5 = add i32 %cond.i, %sub.ptr.sub.i
  %add6 = select i1 %tobool.not, i32 9, i32 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %add6)
  %cmp.not = icmp slt i32 %add5, %add6
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp7 = icmp slt i32 %sub.ptr.sub.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %cond)
  %cmp8 = icmp slt i32 %cond.i, %cond
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.then9, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 8
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %23 = call ptr @memmove(ptr %add.ptr, ptr %20, i32 %22)
  store ptr %add.ptr, ptr %data.i, align 4
  %24 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %24
  %tail.i59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i59 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %tail.i59, align 8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %skb_cloned.exit.if.else_crit_edge
  %call13 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 8, i32 noundef %cond, i32 noundef %flags) #5
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #5
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.else.cleanup26_crit_edge, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.else.cleanup26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.then9, %if.then.if.end17_crit_edge
  %skb.addr.0 = phi ptr [ %call13, %if.else.if.end17_crit_edge ], [ %skb, %if.then9 ], [ %skb, %if.then.if.end17_crit_edge ]
  %call18 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 8) #5
  %add.ptr19 = getelementptr i32, ptr %call18, i32 1
  %26 = ptrtoint ptr %call18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16777216, ptr %call18, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %1)
  %28 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr19, align 4
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %29 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len20, align 4
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %31 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %maxpacket, align 4
  %rem21 = urem i32 %30, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21)
  %cmp22 = icmp eq i32 %rem21, 0
  br i1 %cmp22, label %if.then23, label %if.end17.cleanup26_crit_edge

if.end17.cleanup26_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup26

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 1) #5
  br label %cleanup26

cleanup26:                                        ; preds = %if.then23, %if.end17.cleanup26_crit_edge, %if.else.cleanup26_crit_edge
  %retval.1 = phi ptr [ null, %if.else.cleanup26_crit_edge ], [ %skb.addr.0, %if.then23 ], [ %skb.addr.0, %if.end17.cleanup26_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_gl620a__347_224_gl620a_driver_init6, !1, !"__initcall__kmod_gl620a__347_224_gl620a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/gl620a.c", i32 224, i32 1}
!2 = !{ptr @__exitcall_gl620a_driver_exit, !1, !"__exitcall_gl620a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author348, !4, !"__UNIQUE_ID_author348", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/gl620a.c", i32 226, i32 1}
!5 = !{ptr @__UNIQUE_ID_description349, !6, !"__UNIQUE_ID_description349", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/gl620a.c", i32 227, i32 1}
!7 = !{ptr @__UNIQUE_ID_file350, !8, !"__UNIQUE_ID_file350", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/gl620a.c", i32 228, i32 1}
!9 = !{ptr @__UNIQUE_ID_license351, !8, !"__UNIQUE_ID_license351", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @gl620a_driver, !12, !"gl620a_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/gl620a.c", i32 214, i32 26}
!13 = !{ptr @products, !14, !"products", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/gl620a.c", i32 201, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/gl620a.c", i32 188, i32 17}
!17 = !{ptr @genelink_info, !18, !"genelink_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/gl620a.c", i32 187, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/gl620a.c", i32 84, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @genelink_rx_fixup.__UNIQUE_ID_ddebug344, !20, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/gl620a.c", i32 102, i32 4}
!26 = !{ptr @genelink_rx_fixup.__UNIQUE_ID_ddebug345, !25, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!27 = !{ptr @genelink_rx_fixup.__UNIQUE_ID_ddebug346, !28, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/gl620a.c", i32 128, i32 3}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148957465, i64 2148957470, i64 2148957483, i64 2148957527, i64 2148957561, i64 2148957582}
