; ModuleID = '/llk/IR_all_yes/drivers/net/usb/lg-vl600.c_pt.bc'
source_filename = "../drivers/net/usb/lg-vl600.c"
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
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.vl600_frame_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.vl600_pkt_hdr = type <{ [2 x i32], i32, i16 }>
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_lg_vl600__350_331_lg_vl600_driver_init6 = internal global ptr @lg_vl600_driver_init, section ".initcall6.init", align 4
@lg_vl600_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_lg_vl600_driver_exit = internal global ptr @lg_vl600_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author351 = internal constant [34 x i8] c"lg_vl600.author=Anrzej Zaborowski\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [52 x i8] c"lg_vl600.description=LG-VL600 modem's ethernet link\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [39 x i8] c"lg_vl600.file=drivers/net/usb/lg-vl600\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [21 x i8] c"lg_vl600.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lg_vl600\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lg-vl600\00", [23 x i8] zeroinitializer }, align 32
@products = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 4100, i16 25002, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @vl600_info to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@vl600_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.2, i32 17408, ptr @vl600_bind, ptr @vl600_unbind, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_cdc_status, ptr null, ptr @vl600_rx_fixup, ptr @vl600_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LG VL600 modem\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Fragment too long\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Frame too short\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Packet too short\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Bad packet length stored in header\0A\00", [60 x i8] zeroinitializer }, align 32
@vl600_tx_fixup.serial = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1146375496, i64 1398031432]
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"lg_vl600_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 321, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 331, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 322, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 311, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"vl600_info\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 301, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 302, i32 17 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 118, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 126, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 158, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 165, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@___asan_gen_.38 = private constant [30 x i8] c"../drivers/net/usb/lg-vl600.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 236, i32 18 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_lg_vl600_driver_exit, ptr @__initcall__kmod_lg_vl600__350_331_lg_vl600_driver_init6, ptr @lg_vl600_driver_exit, ptr @lg_vl600_driver, ptr @.str, ptr @.str.1, ptr @products, ptr @vl600_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vl600_tx_fixup.serial], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_vl600_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl600_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vl600_tx_fixup.serial to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_vl600_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @lg_vl600_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lg_vl600_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @lg_vl600_driver) #6
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
define internal i32 @vl600_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @usbnet_cdc_bind(ptr noundef %dev, ptr noundef %intf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %or = or i32 %5, 128
  store i32 %or, ptr %flags, align 8
  %6 = load ptr, ptr %net, align 4
  %flags6 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags6, align 8
  %or7 = or i32 %8, 4096
  store i32 %or7, ptr %flags6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vl600_unbind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @consume_skb(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %1) #6
  tail call void @usbnet_cdc_unbind(ptr noundef %dev, ptr noundef %intf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_cdc_status(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vl600_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len3, align 4
  %add = add i32 %9, %7
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp = icmp ugt i32 %add, %12
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 4
  %and = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.do.end_crit_edge, label %if.then7

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body.do.end_crit_edge
  %net8 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net8, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 10
  %19 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_length_errors, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %rx_length_errors, align 8
  br label %error

if.end9:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %data11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data11, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %3, i32 noundef %7) #6
  %23 = call ptr @memcpy(ptr %call.i, ptr %22, i32 %7)
  br label %if.end31

if.else:                                          ; preds = %entry
  %len14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp15 = icmp ult i32 %25, 4
  br i1 %cmp15, label %do.body17, label %if.else.if.end31_crit_edge

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.body17:                                        ; preds = %if.else
  %msg_enable18 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %26 = ptrtoint ptr %msg_enable18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable18, align 4
  %and19 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body17.do.end25_crit_edge, label %if.then21

do.body17.do.end25_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

if.then21:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %net22 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %28 = ptrtoint ptr %net22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net22, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.4) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body17.do.end25_crit_edge
  %net26 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %30 = ptrtoint ptr %net26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net26, align 4
  %rx_length_errors28 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 36, i32 10
  %32 = ptrtoint ptr %rx_length_errors28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_length_errors28, align 8
  %inc29 = add i32 %33, 1
  store i32 %inc29, ptr %rx_length_errors28, align 8
  br label %error

if.end31:                                         ; preds = %if.else.if.end31_crit_edge, %if.end9
  %buf.0 = phi ptr [ %3, %if.end9 ], [ %skb, %if.else.if.end31_crit_edge ]
  %data32 = getelementptr inbounds %struct.sk_buff, ptr %buf.0, i32 0, i32 19
  %34 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data32, align 4
  %magic = getelementptr inbounds %struct.vl600_frame_hdr, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %magic to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %magic, align 1
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %37, label %if.end31.error_crit_edge [
    i32 1398031432, label %if.end31.if.end37_crit_edge
    i32 1146375496, label %if.end31.if.end37_crit_edge241
  ]

if.end31.if.end37_crit_edge241:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end31.error_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end37:                                         ; preds = %if.end31.if.end37_crit_edge, %if.end31.if.end37_crit_edge241
  %len38 = getelementptr inbounds %struct.sk_buff, ptr %buf.0, i32 0, i32 6
  %39 = ptrtoint ptr %len38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %40)
  %cmp39 = icmp ult i32 %40, 24
  br i1 %cmp39, label %if.end37.if.then44_crit_edge, label %lor.lhs.false

if.end37.if.then44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.end37
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %35, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %43)
  %cmp43.not = icmp eq i32 %40, %43
  br i1 %cmp43.not, label %if.end60, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.end37.if.then44_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %tobool46.not = icmp eq ptr %45, null
  br i1 %tobool46.not, label %if.end48, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.then44
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %35, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %call51 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 0, i32 noundef %48, i32 noundef 2592) #6
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call51, ptr %1, align 4
  %tobool54.not = icmp eq ptr %call51, null
  br i1 %tobool54.not, label %if.then55, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %net56 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %50 = ptrtoint ptr %net56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net56, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 36, i32 4
  %52 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_errors, align 8
  %inc58 = add i32 %53, 1
  store i32 %inc58, ptr %rx_errors, align 8
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false
  %pkt_cnt = getelementptr inbounds %struct.vl600_frame_hdr, ptr %35, i32 0, i32 2
  %54 = ptrtoint ptr %pkt_cnt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pkt_cnt, align 4
  %call62 = tail call ptr @skb_pull(ptr noundef %buf.0, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool63.not224 = icmp eq i32 %55, 0
  br i1 %tobool63.not224, label %if.end60.error_crit_edge, label %while.body.lr.ph

if.end60.error_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

while.body.lr.ph:                                 ; preds = %if.end60
  %data94 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %net112 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %56 = ptrtoint ptr %len38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %57)
  %cmp65233 = icmp ult i32 %57, 14
  br i1 %cmp65233, label %while.body.lr.ph.do.body67_crit_edge, label %if.end76.lr.ph

while.body.lr.ph.do.body67_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67

if.end76.lr.ph:                                   ; preds = %while.body.lr.ph
  %58 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  br label %if.end76

do.body67:                                        ; preds = %if.end128.do.body67_crit_edge, %while.body.lr.ph.do.body67_crit_edge
  %msg_enable68 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %59 = ptrtoint ptr %msg_enable68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msg_enable68, align 4
  %and69 = and i32 %60, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %do.body67.error_crit_edge, label %if.then71

do.body67.error_crit_edge:                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.then71:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %net112 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net112, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %62, ptr noundef nonnull @.str.5) #10
  br label %error

if.end76:                                         ; preds = %if.end128.if.end76_crit_edge, %if.end76.lr.ph
  %63 = phi i32 [ %57, %if.end76.lr.ph ], [ %94, %if.end128.if.end76_crit_edge ]
  %dec225234.in = phi i32 [ %58, %if.end76.lr.ph ], [ %dec225234, %if.end128.if.end76_crit_edge ]
  %dec225234 = add i32 %dec225234.in, -1
  %64 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data32, align 4
  %len78 = getelementptr inbounds %struct.vl600_pkt_hdr, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %len78 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len78, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #6
  %add80 = add i32 %68, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %add80, i32 %63)
  %cmp82 = icmp ugt i32 %add80, %63
  br i1 %cmp82, label %do.body84, label %if.end93

do.body84:                                        ; preds = %if.end76
  %msg_enable85 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  %69 = ptrtoint ptr %msg_enable85 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable85, align 4
  %and86 = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body84.error_crit_edge, label %if.then88

do.body84.error_crit_edge:                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.then88:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %net112 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %net112, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %72, ptr noundef nonnull @.str.6) #10
  br label %error

if.end93:                                         ; preds = %if.end76
  %73 = ptrtoint ptr %data94 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data94, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %h_proto to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %h_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %76)
  %cmp96 = icmp eq i16 %76, 2054
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %63)
  %cmp100 = icmp ugt i32 %63, 38
  %or.cond = select i1 %cmp96, i1 %cmp100, i1 false
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %74, i32 0, i32 1
  br i1 %or.cond, label %if.then102, label %if.else107

if.then102:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i8, ptr %65, i32 22
  %77 = call ptr @memcpy(ptr %h_source, ptr %arrayidx, i32 6)
  %78 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data32, align 4
  %arrayidx106 = getelementptr i8, ptr %79, i32 32
  %80 = call ptr @memcpy(ptr %74, ptr %arrayidx106, i32 6)
  br label %if.end122

if.else107:                                       ; preds = %if.end93
  %81 = call ptr @memset(ptr %h_source, i32 0, i32 6)
  %82 = ptrtoint ptr %net112 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %net112, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 86
  %84 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_addr, align 64
  %86 = call ptr @memcpy(ptr %74, ptr %85, i32 6)
  %87 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data32, align 4
  %arrayidx114 = getelementptr i8, ptr %88, i32 14
  %89 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx114, align 1
  %91 = and i8 %90, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %91)
  %cmp117 = icmp eq i8 %91, 96
  br i1 %cmp117, label %if.then119, label %if.else107.if.end122_crit_edge

if.else107.if.end122_crit_edge:                   ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then119:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 -31011, ptr %h_proto, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.else107.if.end122_crit_edge, %if.then102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec225234)
  %tobool123.not = icmp eq i32 %dec225234, 0
  br i1 %tobool123.not, label %if.else132, label %if.then124

if.then124:                                       ; preds = %if.end122
  %call125 = tail call ptr @skb_clone(ptr noundef %buf.0, i32 noundef 2592) #6
  %tobool126.not = icmp eq ptr %call125, null
  br i1 %tobool126.not, label %if.then124.error_crit_edge, label %if.end128

if.then124.error_crit_edge:                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end128:                                        ; preds = %if.then124
  tail call void @skb_trim(ptr noundef nonnull %call125, i32 noundef %add80) #6
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call125) #6
  %add129 = add i32 %68, 17
  %and130 = and i32 %add129, -4
  %call131 = tail call ptr @skb_pull(ptr noundef %buf.0, i32 noundef %and130) #6
  %93 = ptrtoint ptr %len38 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len38, align 4
  %cmp65 = icmp ult i32 %94, 14
  br i1 %cmp65, label %if.end128.do.body67_crit_edge, label %if.end128.if.end76_crit_edge

if.end128.if.end76_crit_edge:                     ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.end128.do.body67_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67

if.else132:                                       ; preds = %if.end122
  tail call void @skb_trim(ptr noundef %buf.0, i32 noundef %add80) #6
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %tobool134.not = icmp eq ptr %96, null
  br i1 %tobool134.not, label %if.else132.cleanup_crit_edge, label %if.then135

if.else132.cleanup_crit_edge:                     ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then135:                                       ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef %buf.0) #6
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %1, align 4
  br label %cleanup

error:                                            ; preds = %if.then124.error_crit_edge, %if.then88, %do.body84.error_crit_edge, %if.then71, %do.body67.error_crit_edge, %if.end60.error_crit_edge, %if.end31.error_crit_edge, %do.end25, %do.end
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %tobool140.not = icmp eq ptr %99, null
  br i1 %tobool140.not, label %error.if.end144_crit_edge, label %if.then141

error.if.end144_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then141:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %99, i32 noundef 1) #6
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %1, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %error.if.end144_crit_edge
  %net145 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %101 = ptrtoint ptr %net145 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %net145, align 4
  %rx_errors147 = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 36, i32 4
  %103 = ptrtoint ptr %rx_errors147 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_errors147, align 8
  %inc148 = add i32 %104, 1
  store i32 %inc148, ptr %rx_errors147, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end144, %if.then135, %if.else132.cleanup_crit_edge, %if.then55, %if.end48.cleanup_crit_edge, %if.then44.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end144 ], [ 0, %if.then135 ], [ 0, %if.then44.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %if.end48.cleanup_crit_edge ], [ 1, %if.else132.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vl600_tx_fixup(ptr nocapture noundef readnone %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub = add i32 %1, -14
  %add2 = add i32 %1, 27
  %and = and i32 %add2, -4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp = icmp ugt i32 %1, 24
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %6)
  %cmp6 = icmp eq i32 %1, %6
  br i1 %cmp6, label %land.lhs.true.cleanup53_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

land.lhs.true.cleanup53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %1)
  %cmp8 = icmp ult i32 %1, 14
  br i1 %cmp8, label %if.end.cleanup53_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.cleanup53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %7 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end10.if.then12_crit_edge, label %skb_cloned.exit

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

skb_cloned.exit:                                  ; preds = %if.end10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #6
  %10 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %11, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.if.then12_crit_edge, label %skb_cloned.exit.if.end34_crit_edge

skb_cloned.exit.if.then12_crit_edge:              ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

skb_cloned.exit.if.end34_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = add i32 %and, -24
  br label %if.end34

if.then12:                                        ; preds = %skb_cloned.exit.if.then12_crit_edge, %if.end10.if.then12_crit_edge
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then12.skb_tailroom.exit_crit_edge

if.then12.skb_tailroom.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i101 = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i102 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i103 = sub i32 %sub.ptr.lhs.cast.i101, %sub.ptr.rhs.cast.i102
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then12.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i103, %cond.false.i ], [ 0, %if.then12.skb_tailroom.exit_crit_edge ]
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %sub16 = add i32 %and, -24
  %sub17 = sub i32 %sub16, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %sub17)
  %cmp18.not = icmp uge i32 %cond.i, %sub17
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub.ptr.sub.i)
  %cmp20 = icmp ugt i32 %sub.ptr.sub.i, 23
  %or.cond = select i1 %cmp18.not, i1 %cmp20, i1 false
  br i1 %or.cond, label %skb_tailroom.exit.encapsulate_crit_edge, label %if.end22

skb_tailroom.exit.encapsulate_crit_edge:          ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %encapsulate

if.end22:                                         ; preds = %skb_tailroom.exit
  %add23 = add i32 %cond.i, %sub.ptr.sub.i
  %add25 = add i32 %add23, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %add25, i32 %and)
  %cmp26.not = icmp ult i32 %add25, %and
  br i1 %cmp26.not, label %if.end22.if.end34_crit_edge, label %if.then27

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %15, i32 24
  %24 = call ptr @memmove(ptr %add.ptr, ptr %13, i32 %23)
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr, ptr %data, align 4
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %27
  %tail.i105 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i105 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %tail.i105, align 8
  br label %encapsulate

if.end34:                                         ; preds = %if.end22.if.end34_crit_edge, %skb_cloned.exit.if.end34_crit_edge
  %sub36.pre-phi = phi i32 [ %.pre, %skb_cloned.exit.if.end34_crit_edge ], [ %sub16, %if.end22.if.end34_crit_edge ]
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len, align 4
  %sub37 = sub i32 %sub36.pre-phi, %30
  %call38 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 24, i32 noundef %sub37, i32 noundef %flags) #6
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #6
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end34.cleanup53_crit_edge, label %if.end34.encapsulate_crit_edge

if.end34.encapsulate_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %encapsulate

if.end34.cleanup53_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

encapsulate:                                      ; preds = %if.end34.encapsulate_crit_edge, %if.then27, %skb_tailroom.exit.encapsulate_crit_edge
  %skb.addr.0 = phi ptr [ %call38, %if.end34.encapsulate_crit_edge ], [ %skb, %if.then27 ], [ %skb, %skb_tailroom.exit.encapsulate_crit_edge ]
  %data42 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %31 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data42, align 4
  %h_proto = getelementptr inbounds %struct.vl600_pkt_hdr, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 2048, ptr %h_proto, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 0, ptr %32, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %len43 = getelementptr inbounds %struct.vl600_pkt_hdr, ptr %32, i32 0, i32 1
  %36 = ptrtoint ptr %len43 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %35, ptr %len43, align 1
  %call44 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 24) #6
  %37 = getelementptr inbounds i8, ptr %call44, i32 12
  %38 = call ptr @memset(ptr %37, i32 0, i32 12)
  %39 = tail call i32 @llvm.bswap.i32(i32 %and)
  %40 = ptrtoint ptr %call44 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %call44, align 1
  %41 = load i32, ptr @vl600_tx_fixup.serial, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr @vl600_tx_fixup.serial, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %serial = getelementptr inbounds %struct.vl600_frame_hdr, ptr %call44, i32 0, i32 1
  %43 = ptrtoint ptr %serial to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %serial, align 1
  %pkt_cnt = getelementptr inbounds %struct.vl600_frame_hdr, ptr %call44, i32 0, i32 2
  %44 = ptrtoint ptr %pkt_cnt to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 16777216, ptr %pkt_cnt, align 1
  %len46 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %45 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %46)
  %cmp47 = icmp ugt i32 %and, %46
  br i1 %cmp47, label %if.then48, label %encapsulate.cleanup53_crit_edge

encapsulate.cleanup53_crit_edge:                  ; preds = %encapsulate
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup53

if.then48:                                        ; preds = %encapsulate
  call void @__sanitizer_cov_trace_pc() #8
  %sub50 = sub i32 %and, %46
  %call51 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef %sub50) #6
  br label %cleanup53

cleanup53:                                        ; preds = %if.then48, %encapsulate.cleanup53_crit_edge, %if.end34.cleanup53_crit_edge, %if.end.cleanup53_crit_edge, %land.lhs.true.cleanup53_crit_edge
  %retval.0 = phi ptr [ %skb, %land.lhs.true.cleanup53_crit_edge ], [ null, %if.end.cleanup53_crit_edge ], [ null, %if.end34.cleanup53_crit_edge ], [ %skb.addr.0, %if.then48 ], [ %skb.addr.0, %encapsulate.cleanup53_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_cdc_bind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_cdc_unbind(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_lg_vl600__350_331_lg_vl600_driver_init6, !1, !"__initcall__kmod_lg_vl600__350_331_lg_vl600_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/lg-vl600.c", i32 331, i32 1}
!2 = !{ptr @__exitcall_lg_vl600_driver_exit, !1, !"__exitcall_lg_vl600_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author351, !4, !"__UNIQUE_ID_author351", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/lg-vl600.c", i32 333, i32 1}
!5 = !{ptr @__UNIQUE_ID_description352, !6, !"__UNIQUE_ID_description352", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/lg-vl600.c", i32 334, i32 1}
!7 = !{ptr @__UNIQUE_ID_file353, !8, !"__UNIQUE_ID_file353", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/lg-vl600.c", i32 335, i32 1}
!9 = !{ptr @__UNIQUE_ID_license354, !8, !"__UNIQUE_ID_license354", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/lg-vl600.c", i32 322, i32 11}
!13 = !{ptr @lg_vl600_driver, !14, !"lg_vl600_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/lg-vl600.c", i32 321, i32 26}
!15 = !{ptr @products, !16, !"products", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/lg-vl600.c", i32 311, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/lg-vl600.c", i32 302, i32 17}
!19 = !{ptr @vl600_info, !20, !"vl600_info", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/lg-vl600.c", i32 301, i32 33}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/lg-vl600.c", i32 118, i32 4}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/lg-vl600.c", i32 126, i32 3}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/lg-vl600.c", i32 158, i32 4}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/usb/lg-vl600.c", i32 165, i32 4}
!29 = !{ptr @vl600_tx_fixup.serial, !30, !"serial", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/lg-vl600.c", i32 236, i32 18}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
