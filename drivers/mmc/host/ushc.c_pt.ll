; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/ushc.c_pt.bc'
source_filename = "../drivers/mmc/host/ushc.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ushc_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, i32, i16, i32, i8, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ushc_csw = type <{ i8, i8, i32 }>
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.ushc_cbw = type { i8, i8, i16, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_ushc__278_564_ushc_driver_init6 = internal global ptr @ushc_driver_init, section ".initcall6.init", align 4
@ushc_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ushc_probe, ptr @ushc_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ushc_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ushc_driver_exit = internal global ptr @ushc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description279 = internal constant [47 x i8] c"ushc.description=USB SD Host Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author280 = internal constant [48 x i8] c"ushc.author=David Vrabel <david.vrabel@csr.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file281 = internal constant [32 x i8] c"ushc.file=drivers/mmc/host/ushc\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [17 x i8] c"ushc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ushc\00", [27 x i8] zeroinitializer }, align 32
@ushc_id_table = internal global { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2578, i16 23824, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ushc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ushc->lock\00", [20 x i8] zeroinitializer }, align 32
@ushc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @ushc_request, ptr null, ptr @ushc_set_ios, ptr null, ptr @ushc_get_cd, ptr @ushc_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ushc_hw_get_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"controller version %d is not supported\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ushc_hw_get_caps\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mmc/host/ushc.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ushc_hw_get_caps._entry_ptr = internal global ptr @ushc_hw_get_caps._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.ushc_set_ios = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 1, i16 1], [26 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"ushc_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 557, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 564, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"ushc_id_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 550, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 437, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"ushc_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 411, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [27 x i8] c"../drivers/mmc/host/ushc.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 141, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [26 x i8] c"switch.table.ushc_set_ios\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__exitcall_ushc_driver_exit, ptr @__initcall__kmod_ushc__278_564_ushc_driver_init6, ptr @ushc_driver_exit, ptr @ushc_hw_get_caps._entry, ptr @ushc_hw_get_caps._entry_ptr, ptr @ushc_driver, ptr @.str, ptr @ushc_id_table, ptr @ushc_probe.__key, ptr @.str.1, ptr @ushc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @switch.table.ushc_set_ios], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ushc_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ushc_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ushc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ushc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ushc_hw_get_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ushc_set_ios to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ushc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ushc_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ushc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @ushc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ushc_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call2 = tail call ptr @mmc_alloc_host(i32 noundef 104, ptr noundef %dev) #7
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 70
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %private.i, align 4
  %mmc9 = getelementptr inbounds %struct.ushc_data, ptr %private.i, i32 0, i32 1
  %8 = ptrtoint ptr %mmc9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %mmc9, align 4
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ushc_probe.__key, i16 noundef signext 3) #7
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i = shl i32 %12, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp12 = icmp slt i32 %call2.i, 0
  br i1 %cmp12, label %if.end6.err_crit_edge, label %if.end15

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end15:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i168 = shl i32 %16, 8
  %or2.i = or i32 %shl.i.i168, -2147483520
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 7, i32 1
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or2.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %caps.i, i16 noundef zeroext 4, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.end15.err_crit_edge, label %if.end.i

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end.i:                                         ; preds = %if.end15
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %20 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %caps.i, align 4
  %and.i = and i32 %19, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp7.not.i = icmp eq i32 %and.i, 2
  br i1 %cmp7.not.i, label %if.end20, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef %and.i) #10
  br label %err

if.end20:                                         ; preds = %if.end.i
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 3
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ushc_ops, ptr %ops, align 4
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 5
  %24 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 400000, ptr %f_min, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 6
  %25 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 50000000, ptr %f_max, align 8
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 8
  %26 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3145728, ptr %ocr_avail, align 64
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 16
  %27 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %caps.i, align 4
  %and = lshr i32 %28, 14
  %29 = and i32 %and, 4
  %or = or i32 %29, 9
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %caps, align 32
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 20
  %31 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 261632, ptr %max_seg_size, align 16
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 21
  %32 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %max_segs, align 4
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 23
  %33 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 261632, ptr %max_req_size, align 8
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 24
  %34 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 512, ptr %max_blk_size, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 0, i32 25
  %35 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 511, ptr %max_blk_count, align 128
  %call23 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %int_urb = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1
  %36 = ptrtoint ptr %int_urb to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call23, ptr %int_urb, align 4
  %cmp25 = icmp eq ptr %call23, null
  br i1 %cmp25, label %if.end20.err_crit_edge, label %if.end28

if.end20.err_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end28:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 4) #11
  %int_data = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %int_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %int_data, align 4
  %cmp31 = icmp eq ptr %call7.i.i, null
  br i1 %cmp31, label %if.end28.err_crit_edge, label %if.end34

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end34:                                         ; preds = %if.end28
  %39 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %int_urb, align 4
  %41 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private.i, align 4
  %43 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur_altsetting, align 4
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bEndpointAddress, align 2
  %conv39 = zext i8 %48 to i32
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %50, 8
  %shl1.i = shl nuw nsw i32 %conv39, 15
  %or.i169 = or i32 %shl1.i, %shl.i
  %or42 = or i32 %or.i169, 1073741952
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 5
  %51 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bInterval, align 2
  %conv48 = zext i8 %52 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 8
  %53 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %42, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 10
  %54 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or42, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 14
  %55 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 19
  %56 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 28
  %57 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @int_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 27
  %58 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %private.i, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 4
  %59 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp.i170 = icmp eq i32 %60, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp6.i = icmp ugt i32 %60, 4
  %or.cond.i = or i1 %cmp.i170, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end34.usb_fill_int_urb.exit_crit_edge

if.end34.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %61 = tail call i32 @llvm.smax.i32(i32 %conv48, i32 1) #7
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 16) #7
  %sub.i = add nsw i32 %62, -1
  %shl.i171 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end34.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i171, %if.then.i ], [ %conv48, %if.end34.usb_fill_int_urb.exit_crit_edge ]
  %63 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 25
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %interval.sink.i, ptr %63, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 23
  %65 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %start_frame.i, align 4
  %call49 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %cbw_urb = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %cbw_urb to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call49, ptr %cbw_urb, align 4
  %cmp51 = icmp eq ptr %call49, null
  br i1 %cmp51, label %usb_fill_int_urb.exit.err_crit_edge, label %if.end54

usb_fill_int_urb.exit.err_crit_edge:              ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end54:                                         ; preds = %usb_fill_int_urb.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i173 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 8) #11
  %cbw = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 2
  %68 = ptrtoint ptr %cbw to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i173, ptr %cbw, align 4
  %cmp57 = icmp eq ptr %call7.i.i173, null
  br i1 %cmp57, label %if.end54.err_crit_edge, label %if.end60

if.end54.err_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end60:                                         ; preds = %if.end54
  %69 = ptrtoint ptr %call7.i.i173 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 67, ptr %call7.i.i173, align 8
  %70 = ptrtoint ptr %cbw_urb to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cbw_urb, align 4
  %72 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %private.i, align 4
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr.i, align 8
  %shl.i174 = shl i32 %75, 8
  %or65 = or i32 %shl.i174, -1073676288
  %76 = ptrtoint ptr %cbw to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cbw, align 4
  %dev1.i176 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 8
  %78 = ptrtoint ptr %dev1.i176 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %73, ptr %dev1.i176, align 4
  %pipe2.i177 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 10
  %79 = ptrtoint ptr %pipe2.i177 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or65, ptr %pipe2.i177, align 4
  %transfer_buffer3.i178 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 14
  %80 = ptrtoint ptr %transfer_buffer3.i178 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %transfer_buffer3.i178, align 4
  %transfer_buffer_length.i179 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 19
  %81 = ptrtoint ptr %transfer_buffer_length.i179 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 8, ptr %transfer_buffer_length.i179, align 4
  %complete.i180 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 28
  %82 = ptrtoint ptr %complete.i180 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @cbw_callback, ptr %complete.i180, align 4
  %context4.i181 = getelementptr inbounds %struct.urb, ptr %71, i32 0, i32 27
  %83 = ptrtoint ptr %context4.i181 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %private.i, ptr %context4.i181, align 4
  %call67 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %data_urb = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 3
  %84 = ptrtoint ptr %data_urb to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call67, ptr %data_urb, align 4
  %cmp69 = icmp eq ptr %call67, null
  br i1 %cmp69, label %if.end60.err_crit_edge, label %if.end72

if.end60.err_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end72:                                         ; preds = %if.end60
  %call73 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %csw_urb = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 4
  %85 = ptrtoint ptr %csw_urb to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call73, ptr %csw_urb, align 4
  %cmp75 = icmp eq ptr %call73, null
  br i1 %cmp75, label %if.end72.err_crit_edge, label %if.end78

if.end72.err_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end78:                                         ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i182 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3520, i32 noundef 6) #11
  %csw = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 5
  %87 = ptrtoint ptr %csw to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i.i182, ptr %csw, align 4
  %cmp81 = icmp eq ptr %call7.i.i182, null
  br i1 %cmp81, label %if.end78.err_crit_edge, label %if.end84

if.end78.err_crit_edge:                           ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end84:                                         ; preds = %if.end78
  %88 = ptrtoint ptr %csw_urb to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %csw_urb, align 4
  %90 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %private.i, align 4
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i, align 8
  %shl.i183 = shl i32 %93, 8
  %or89 = or i32 %shl.i183, -1073545088
  %dev1.i185 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 8
  %94 = ptrtoint ptr %dev1.i185 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %dev1.i185, align 4
  %pipe2.i186 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 10
  %95 = ptrtoint ptr %pipe2.i186 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or89, ptr %pipe2.i186, align 4
  %transfer_buffer3.i187 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 14
  %96 = ptrtoint ptr %transfer_buffer3.i187 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i.i182, ptr %transfer_buffer3.i187, align 4
  %transfer_buffer_length.i188 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 19
  %97 = ptrtoint ptr %transfer_buffer_length.i188 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 6, ptr %transfer_buffer_length.i188, align 4
  %complete.i189 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 28
  %98 = ptrtoint ptr %complete.i189 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @csw_callback, ptr %complete.i189, align 4
  %context4.i190 = getelementptr inbounds %struct.urb, ptr %89, i32 0, i32 27
  %99 = ptrtoint ptr %context4.i190 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %private.i, ptr %context4.i190, align 4
  %100 = ptrtoint ptr %mmc9 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mmc9, align 4
  %call92 = tail call i32 @mmc_add_host(ptr noundef %101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %if.end84.err_crit_edge

if.end84.err_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end95:                                         ; preds = %if.end84
  %102 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %int_urb, align 4
  %call97 = tail call i32 @usb_submit_urb(ptr noundef %103, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %if.then100, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %mmc9 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmc9, align 4
  tail call void @mmc_remove_host(ptr noundef %105) #7
  br label %err

err:                                              ; preds = %if.then100, %if.end84.err_crit_edge, %if.end78.err_crit_edge, %if.end72.err_crit_edge, %if.end60.err_crit_edge, %if.end54.err_crit_edge, %usb_fill_int_urb.exit.err_crit_edge, %if.end28.err_crit_edge, %if.end20.err_crit_edge, %do.end.i, %if.end15.err_crit_edge, %if.end6.err_crit_edge
  %ret.0 = phi i32 [ %call2.i, %if.end6.err_crit_edge ], [ %call92, %if.end84.err_crit_edge ], [ %call97, %if.then100 ], [ -12, %if.end20.err_crit_edge ], [ -12, %if.end28.err_crit_edge ], [ -12, %usb_fill_int_urb.exit.err_crit_edge ], [ -12, %if.end54.err_crit_edge ], [ -12, %if.end60.err_crit_edge ], [ -12, %if.end72.err_crit_edge ], [ -12, %if.end78.err_crit_edge ], [ %call3.i, %if.end15.err_crit_edge ], [ -22, %do.end.i ]
  %int_urb.i = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1
  %106 = ptrtoint ptr %int_urb.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %int_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %107) #7
  %csw_urb.i = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 4
  %108 = ptrtoint ptr %csw_urb.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %csw_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %109) #7
  %data_urb.i = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 3
  %110 = ptrtoint ptr %data_urb.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %111) #7
  %cbw_urb.i = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 1, i32 1
  %112 = ptrtoint ptr %cbw_urb.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cbw_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %113) #7
  %int_data.i = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 1
  %114 = ptrtoint ptr %int_data.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %int_data.i, align 4
  tail call void @kfree(ptr noundef %115) #7
  %cbw.i = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 2
  %116 = ptrtoint ptr %cbw.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cbw.i, align 4
  tail call void @kfree(ptr noundef %117) #7
  %csw.i = getelementptr inbounds %struct.mmc_host, ptr %call2, i32 1, i32 1, i32 0, i32 5
  %118 = ptrtoint ptr %csw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %csw.i, align 4
  tail call void @kfree(ptr noundef %119) #7
  %120 = ptrtoint ptr %mmc9 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mmc9, align 4
  tail call void @mmc_free_host(ptr noundef %121) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end95.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ushc_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %flags = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %int_urb = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #7
  %cbw_urb = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cbw_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cbw_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #7
  %data_urb = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %data_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #7
  %csw_urb = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %csw_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %csw_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #7
  %mmc = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 4
  tail call void @mmc_remove_host(ptr noundef %11) #7
  %12 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %int_urb, align 4
  tail call void @usb_free_urb(ptr noundef %13) #7
  %14 = ptrtoint ptr %csw_urb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %csw_urb, align 4
  tail call void @usb_free_urb(ptr noundef %15) #7
  %16 = ptrtoint ptr %data_urb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_urb, align 4
  tail call void @usb_free_urb(ptr noundef %17) #7
  %18 = ptrtoint ptr %cbw_urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cbw_urb, align 4
  tail call void @usb_free_urb(ptr noundef %19) #7
  %int_data.i = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %int_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %int_data.i, align 4
  tail call void @kfree(ptr noundef %21) #7
  %cbw.i = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %cbw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cbw.i, align 4
  tail call void @kfree(ptr noundef %23) #7
  %csw.i = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %csw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csw.i, align 4
  tail call void @kfree(ptr noundef %25) #7
  %26 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc, align 4
  tail call void @mmc_free_host(ptr noundef %27) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @int_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %int_data = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %int_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %int_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %last_status3 = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %last_status3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %last_status3, align 4
  store i8 %7, ptr %last_status3, align 4
  %flags = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 13
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  %13 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %land.lhs.true.if.end11_crit_edge, label %if.then10

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %mmc = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %19(ptr noundef %15, i32 noundef 0) #7
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 49
  %20 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 47
  %21 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then10.if.end11_crit_edge, label %if.then.i

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %22) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.then10.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %xor41 = xor i8 %9, %7
  %23 = and i8 %xor41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not = icmp eq i8 %23, 0
  br i1 %tobool15.not, label %if.end11.if.end19_crit_edge, label %if.then16

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %mmc17 = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %mmc17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc17, align 4
  tail call void @mmc_detect_change(ptr noundef %25, i32 noundef 10) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end11.if.end19_crit_edge
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool22.not = icmp eq i32 %28, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end19.if.end25_crit_edge
  %int_urb = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %int_urb, align 4
  %call26 = tail call i32 @usb_submit_urb(ptr noundef %30, i32 noundef 2592) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cbw_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %data_urb = getelementptr inbounds %struct.ushc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %data_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_urb, align 4
  %call = tail call i32 @usb_unlink_urb(ptr noundef %5) #7
  %csw_urb = getelementptr inbounds %struct.ushc_data, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %csw_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %csw_urb, align 4
  %call1 = tail call i32 @usb_unlink_urb(ptr noundef %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csw_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %current_req = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %current_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_req, align 4
  %csw = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %csw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csw, align 4
  %status1 = getelementptr inbounds %struct.ushc_csw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %status1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status1, align 1
  %conv = zext i8 %7 to i32
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %8 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %error, align 4
  br label %if.end15

if.else:                                          ; preds = %entry
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.if.end15_crit_edge, label %if.then5

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then5:                                         ; preds = %if.else
  %and6 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %cmd12 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd12, align 4
  %error13 = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 5
  br i1 %tobool7.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -5, ptr %error13, align 4
  br label %if.end15

if.else11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -110, ptr %error13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then8, %if.else.if.end15_crit_edge, %if.then
  %data = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %if.end15.if.end37_crit_edge, label %if.then17

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then17:                                        ; preds = %if.end15
  %and18 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else31, label %if.then20

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %and21 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %spec.select = select i1 %tobool22.not, i32 -110, i32 -5
  %19 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select, ptr %19, align 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  br label %if.end37.sink.split

if.else31:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 3
  %25 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blocks, align 4
  %mul = mul i32 %26, %24
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.else31, %if.then20
  %.sink60 = phi ptr [ %22, %if.then20 ], [ %18, %if.else31 ]
  %.sink = phi i32 [ 0, %if.then20 ], [ %mul, %if.else31 ]
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %.sink60, i32 0, i32 7
  %27 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %bytes_xfered, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.end15.if.end37_crit_edge
  %28 = ptrtoint ptr %csw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csw, align 4
  %response = getelementptr inbounds %struct.ushc_csw, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %response to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %response, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %cmd39 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %cmd39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd39, align 4
  %resp = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %resp, align 4
  %mmc = getelementptr inbounds %struct.ushc_data, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmc, align 4
  tail call void @mmc_request_done(ptr noundef %37, ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ushc_request(ptr noundef %mmc, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %flags6 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags6, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end:                                           ; preds = %entry
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd, align 4
  %flags8 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags8, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.out.thread_crit_edge

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end11:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %land.lhs.true

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end11
  %clock_freq = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  %8 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clock_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %9)
  %cmp13 = icmp slt i32 %9, 6000000
  br i1 %cmp13, label %land.lhs.true.out.thread_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true.out.thread_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  %current_req = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %10 = ptrtoint ptr %current_req to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %req, ptr %current_req, align 4
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = lshr i32 %14, 8
  %conv19 = trunc i32 %15 to i8
  %cbw = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %cbw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cbw, align 4
  %cmd_idx = getelementptr inbounds %struct.ushc_cbw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cmd_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv19, ptr %cmd_idx, align 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %if.end16.if.end28_crit_edge, label %if.then22

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %blksz, align 4
  %conv24 = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv24)
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end16.if.end28_crit_edge
  %.sink = phi i16 [ %23, %if.then22 ], [ 0, %if.end16.if.end28_crit_edge ]
  %24 = ptrtoint ptr %cbw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cbw, align 4
  %block_size27 = getelementptr inbounds %struct.ushc_cbw, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %block_size27 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %.sink, ptr %block_size27, align 1
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arg, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %cbw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cbw, align 4
  %arg31 = getelementptr inbounds %struct.ushc_cbw, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %arg31 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %31, ptr %arg31, align 1
  %cbw_urb = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %cbw_urb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cbw_urb, align 4
  %call32 = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end28.out.thread_crit_edge, label %if.end36

if.end28.out.thread_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

if.end36:                                         ; preds = %if.end28
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %tobool38.not = icmp eq ptr %38, null
  br i1 %tobool38.not, label %if.end36.out_crit_edge, label %if.then39

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then39:                                        ; preds = %if.end36
  %flags42 = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %flags42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags42, align 4
  %and43 = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %41 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i114 = shl i32 %44, 8
  %. = select i1 %tobool44.not, i32 -1073676288, i32 -1073545088
  %or51 = or i32 %shl.i114, %.
  %data_urb = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %45 = ptrtoint ptr %data_urb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data_urb, align 4
  %47 = load ptr, ptr %private.i, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 12
  %48 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 8
  %52 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %47, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 10
  %53 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or51, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 14
  %54 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 19
  %55 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %51, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 28
  %56 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @data_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %46, i32 0, i32 27
  %57 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %private.i, ptr %context4.i, align 4
  %58 = load ptr, ptr %data_urb, align 4
  %num_sgs = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 18
  %59 = ptrtoint ptr %num_sgs to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %num_sgs, align 4
  %60 = load ptr, ptr %sg, align 4
  %61 = load ptr, ptr %data_urb, align 4
  %sg57 = getelementptr inbounds %struct.urb, ptr %61, i32 0, i32 16
  %62 = ptrtoint ptr %sg57 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %60, ptr %sg57, align 4
  %63 = load ptr, ptr %data_urb, align 4
  %call59 = tail call i32 @usb_submit_urb(ptr noundef %63, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then39.out.thread_crit_edge, label %if.then39.out_crit_edge

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then39.out.thread_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread

out.thread:                                       ; preds = %if.then39.out.thread_crit_edge, %if.end28.out.thread_crit_edge, %land.lhs.true.out.thread_crit_edge, %if.end.out.thread_crit_edge, %entry.out.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %land.lhs.true.out.thread_crit_edge ], [ -22, %if.end.out.thread_crit_edge ], [ -19, %entry.out.thread_crit_edge ], [ %call59, %if.then39.out.thread_crit_edge ], [ %call32, %if.end28.out.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br label %if.then70

out:                                              ; preds = %if.then39.out_crit_edge, %if.end36.out_crit_edge
  %csw_urb = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %64 = ptrtoint ptr %csw_urb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %csw_urb, align 4
  %call66 = tail call i32 @usb_submit_urb(ptr noundef %65, i32 noundef 2592) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp68 = icmp slt i32 %call66, 0
  br i1 %cmp68, label %out.if.then70_crit_edge, label %out.if.end76_crit_edge

out.if.end76_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

out.if.then70_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then70

if.then70:                                        ; preds = %out.if.then70_crit_edge, %out.thread
  %ret.0118 = phi i32 [ %ret.0.ph, %out.thread ], [ %call66, %out.if.then70_crit_edge ]
  %cbw_urb71 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %cbw_urb71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cbw_urb71, align 4
  %call72 = tail call i32 @usb_unlink_urb(ptr noundef %67) #7
  %data_urb73 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %68 = ptrtoint ptr %data_urb73 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data_urb73, align 4
  %call74 = tail call i32 @usb_unlink_urb(ptr noundef %69) #7
  %cmd75 = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %70 = ptrtoint ptr %cmd75 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cmd75, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %ret.0118, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %req) #7
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %out.if.end76_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ushc_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %0 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %2 = icmp ult i8 %1, 3
  br i1 %2, label %switch.lookup, label %entry.ushc_set_power.exit_crit_edge

entry.ushc_set_power.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ushc_set_power.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = sext i8 %1 to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.ushc_set_ios, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %switch.load, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  br label %ushc_set_power.exit

ushc_set_power.exit:                              ; preds = %switch.lookup, %entry.ushc_set_power.exit_crit_edge
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %9 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp.i = icmp eq i8 %10, 2
  %conv.i = select i1 %cmp.i, i16 2, i16 0
  %host_ctrl1.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %host_ctrl1.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %host_ctrl1.i.i, align 4
  %and.i.i = and i16 %12, -3
  %or.i.i = or i16 %and.i.i, %conv.i
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i.i.i = shl i32 %16, 8
  %or6.i.i = or i32 %shl.i.i.i, -2147483648
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or6.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %or.i.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp.i.i, label %ushc_set_power.exit.ushc_set_bus_width.exit_crit_edge, label %if.end.i.i

ushc_set_power.exit.ushc_set_bus_width.exit_crit_edge: ; preds = %ushc_set_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ushc_set_bus_width.exit

if.end.i.i:                                       ; preds = %ushc_set_power.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %host_ctrl1.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %or.i.i, ptr %host_ctrl1.i.i, align 4
  br label %ushc_set_bus_width.exit

ushc_set_bus_width.exit:                          ; preds = %if.end.i.i, %ushc_set_power.exit.ushc_set_bus_width.exit_crit_edge
  %18 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ios, align 4
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %20 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp = icmp eq i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i11 = icmp eq i32 %19, 0
  %spec.store.select.i = select i1 %cmp.i11, i32 400000, i32 %19
  %conv.i12 = zext i1 %cmp to i16
  %22 = ptrtoint ptr %host_ctrl1.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %host_ctrl1.i.i, align 4
  %and.i.i14 = and i16 %23, -2
  %or.i.i15 = or i16 %and.i.i14, %conv.i12
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i.i.i16 = shl i32 %27, 8
  %or6.i.i17 = or i32 %shl.i.i.i16, -2147483648
  %call7.i.i18 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or6.i.i17, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %or.i.i15, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i18)
  %cmp.i.i19 = icmp slt i32 %call7.i.i18, 0
  br i1 %cmp.i.i19, label %ushc_set_bus_width.exit.ushc_set_bus_freq.exit_crit_edge, label %if.end4.i

ushc_set_bus_width.exit.ushc_set_bus_freq.exit_crit_edge: ; preds = %ushc_set_bus_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ushc_set_bus_freq.exit

if.end4.i:                                        ; preds = %ushc_set_bus_width.exit
  %28 = ptrtoint ptr %host_ctrl1.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %or.i.i15, ptr %host_ctrl1.i.i, align 4
  %29 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i20 = shl i32 %32, 8
  %or.i21 = or i32 %shl.i.i20, -2147483648
  %conv7.i = trunc i32 %spec.store.select.i to i16
  %33 = lshr i32 %spec.store.select.i, 16
  %conv9.i = trunc i32 %33 to i16
  %call10.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i21, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %conv7.i, i16 noundef zeroext %conv9.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end4.i.ushc_set_bus_freq.exit_crit_edge, label %if.end14.i

if.end4.i.ushc_set_bus_freq.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ushc_set_bus_freq.exit

if.end14.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %clock_freq.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  %34 = ptrtoint ptr %clock_freq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %spec.store.select.i, ptr %clock_freq.i, align 4
  br label %ushc_set_bus_freq.exit

ushc_set_bus_freq.exit:                           ; preds = %if.end14.i, %if.end4.i.ushc_set_bus_freq.exit_crit_edge, %ushc_set_bus_width.exit.ushc_set_bus_freq.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ushc_get_cd(ptr nocapture noundef readonly %mmc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %last_status = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %0 = ptrtoint ptr %last_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %last_status, align 4
  %2 = and i8 %1, 1
  %3 = zext i8 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ushc_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %flags1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @data_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %csw_urb = getelementptr inbounds %struct.ushc_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %csw_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csw_urb, align 4
  %call = tail call i32 @usb_unlink_urb(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_ushc__278_564_ushc_driver_init6, !1, !"__initcall__kmod_ushc__278_564_ushc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/ushc.c", i32 564, i32 1}
!2 = !{ptr @__exitcall_ushc_driver_exit, !1, !"__exitcall_ushc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description279, !4, !"__UNIQUE_ID_description279", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/ushc.c", i32 566, i32 1}
!5 = !{ptr @__UNIQUE_ID_author280, !6, !"__UNIQUE_ID_author280", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/ushc.c", i32 567, i32 1}
!7 = !{ptr @__UNIQUE_ID_file281, !8, !"__UNIQUE_ID_file281", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/ushc.c", i32 568, i32 1}
!9 = !{ptr @__UNIQUE_ID_license282, !8, !"__UNIQUE_ID_license282", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ushc_driver, !12, !"ushc_driver", i1 false, i1 false}
!12 = !{!"../drivers/mmc/host/ushc.c", i32 557, i32 26}
!13 = !{ptr @ushc_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/ushc.c", i32 437, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/ushc.c", i32 141, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ushc_hw_get_caps._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ushc_hw_get_caps._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ushc_ops, !25, !"ushc_ops", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/ushc.c", i32 411, i32 34}
!26 = !{ptr @ushc_id_table, !27, !"ushc_id_table", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/ushc.c", i32 550, i32 29}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
