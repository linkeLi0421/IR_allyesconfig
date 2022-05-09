; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/vmk80xx.c_pt.bc'
source_filename = "../drivers/comedi/drivers/vmk80xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
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
%struct.vmk80xx_board = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vmk80xx_private = type { ptr, ptr, %struct.semaphore, ptr, ptr, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_vmk80xx__243_877_vmk80xx_driver_init6 = internal global ptr @vmk80xx_driver_init, section ".initcall6.init", align 4
@vmk80xx_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @vmk80xx_detach, ptr @vmk80xx_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vmk80xx_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @vmk80xx_usb_probe, ptr @comedi_usb_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vmk80xx_usb_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_vmk80xx_driver_exit = internal global ptr @vmk80xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author244 = internal constant [48 x i8] c"vmk80xx.author=Manuel Gebele <forensixs@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [56 x i8] c"vmk80xx.description=Velleman USB Board Low-Level Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [44 x i8] c"vmk80xx.file=drivers/comedi/drivers/vmk80xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [20 x i8] c"vmk80xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vmk80xx\00", [24 x i8] zeroinitializer }, align 32
@vmk80xx_boardinfo = internal constant { [2 x %struct.vmk80xx_board], [48 x i8] } { [2 x %struct.vmk80xx_board] [%struct.vmk80xx_board { ptr @.str.1, i32 0, ptr @range_unipolar5, i32 2, i32 255, i32 2, i32 6, i32 65535, i32 0, i32 0 }, %struct.vmk80xx_board { ptr @.str.2, i32 1, ptr @vmk8061_range, i32 8, i32 1023, i32 8, i32 8, i32 0, i32 1, i32 1023 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"K8055 (VM110)\00", [18 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"K8061 (VM140)\00", [18 x i8] zeroinitializer }, align 32
@vmk8061_range = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@vmk80xx_usb_id_table = internal constant { [13 x %struct.usb_device_id], [72 x i8] } { [13 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4303, i16 21760, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4303, i16 21761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4303, i16 21762, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4303, i16 21763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32670, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32669, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32668, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32667, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32666, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32665, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4303, i16 -32664, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [72 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"vmk80xx_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 841, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"vmk80xx_usb_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 871, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 843, i32 17 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"vmk80xx_boardinfo\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 120, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 122, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 132, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"vmk8061_range\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 100, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 33, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 34, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 35, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"vmk80xx_usb_id_table\00", align 1
@___asan_gen_.37 = private constant [36 x i8] c"../drivers/comedi/drivers/vmk80xx.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 854, i32 35 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_vmk80xx_driver_exit, ptr @__initcall__kmod_vmk80xx__243_877_vmk80xx_driver_init6, ptr @vmk80xx_driver_exit, ptr @vmk80xx_driver, ptr @vmk80xx_usb_driver, ptr @.str, ptr @vmk80xx_boardinfo, ptr @.str.1, ptr @.str.2, ptr @vmk8061_range, ptr @sema_init.__key, ptr @.str.4, ptr @.str.5, ptr @vmk80xx_usb_id_table], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmk80xx_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmk80xx_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmk80xx_boardinfo to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmk8061_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmk80xx_usb_id_table to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_usb_driver_register(ptr noundef nonnull @vmk80xx_driver, ptr noundef nonnull @vmk80xx_usb_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vmk80xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_usb_driver_unregister(ptr noundef nonnull @vmk80xx_driver, ptr noundef nonnull @vmk80xx_usb_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmk80xx_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #5
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_rx_buf, align 4
  tail call void @kfree(ptr noundef %4) #5
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb_tx_buf, align 4
  tail call void @kfree(ptr noundef %6) #5
  tail call void @up(ptr noundef %limit_sem) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %context)
  %cmp = icmp ugt i32 %context, 1
  %arrayidx = getelementptr [2 x %struct.vmk80xx_board], ptr @vmk80xx_boardinfo, i32 0, i32 %context
  %tobool.not62 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not62
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %entry
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %board_ptr, align 4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %board_name, align 4
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 76) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %model = getelementptr [2 x %struct.vmk80xx_board], ptr @vmk80xx_boardinfo, i32 0, i32 %context, i32 1
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  %model7 = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 5
  %6 = ptrtoint ptr %model7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %model7, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2
  %wait_list1.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %limit_sem to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %limit_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 0, i32 2
  %9 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 0, i32 3
  %10 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 0, i32 4
  %11 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.4, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 0, i32 4, i32 5
  %15 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %17 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %call3, i32 0, i32 2, i32 2, i32 1
  %18 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private.i, align 4
  %call.i = tail call ptr @comedi_to_usb_interface(ptr noundef %dev) #5
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.not.i = icmp eq i8 %24, 2
  br i1 %cmp.not.i, label %for.body.lr.ph.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end6
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %22, i32 0, i32 3
  %ep_tx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %20, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.098.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %endpoint.i, align 4
  %arrayidx.i = getelementptr %struct.usb_host_endpoint, ptr %26, i32 %i.098.i
  %bmAttributes.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 3
  %27 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bmAttributes.i.i.i, align 1
  %trunc.i = trunc i8 %28 to i2
  %29 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i, label %for.body.i.for.inc.i_crit_edge [
    i2 -1, label %usb_endpoint_is_int_in.exit.i
    i2 -2, label %usb_endpoint_is_bulk_in.exit.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

usb_endpoint_is_int_in.exit.i:                    ; preds = %for.body.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %tobool.not.i = icmp sgt i8 %31, -1
  br i1 %tobool.not.i, label %usb_endpoint_is_int_in.exit.i.if.then22.i_crit_edge, label %usb_endpoint_is_int_in.exit.i.if.then11.i_crit_edge

usb_endpoint_is_int_in.exit.i.if.then11.i_crit_edge: ; preds = %usb_endpoint_is_int_in.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

usb_endpoint_is_int_in.exit.i.if.then22.i_crit_edge: ; preds = %usb_endpoint_is_int_in.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22.i

usb_endpoint_is_bulk_in.exit.i:                   ; preds = %for.body.i
  %bEndpointAddress.i.i67.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i, i32 0, i32 2
  %32 = ptrtoint ptr %bEndpointAddress.i.i67.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bEndpointAddress.i.i67.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %33)
  %tobool10.not.i = icmp sgt i8 %33, -1
  br i1 %tobool10.not.i, label %usb_endpoint_is_bulk_in.exit.i.if.then22.i_crit_edge, label %usb_endpoint_is_bulk_in.exit.i.if.then11.i_crit_edge

usb_endpoint_is_bulk_in.exit.i.if.then11.i_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

usb_endpoint_is_bulk_in.exit.i.if.then22.i_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22.i

if.then11.i:                                      ; preds = %usb_endpoint_is_bulk_in.exit.i.if.then11.i_crit_edge, %usb_endpoint_is_int_in.exit.i.if.then11.i_crit_edge
  %34 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %20, align 4
  %tobool12.not.i = icmp eq ptr %35, null
  br i1 %tobool12.not.i, label %if.then11.i.for.inc.sink.split.i_crit_edge, label %if.then11.i.for.inc.i_crit_edge

if.then11.i.for.inc.i_crit_edge:                  ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then11.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

if.then22.i:                                      ; preds = %usb_endpoint_is_bulk_in.exit.i.if.then22.i_crit_edge, %usb_endpoint_is_int_in.exit.i.if.then22.i_crit_edge
  %36 = ptrtoint ptr %ep_tx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ep_tx.i, align 4
  %tobool23.not.i = icmp eq ptr %37, null
  br i1 %tobool23.not.i, label %if.then22.i.for.inc.sink.split.i_crit_edge, label %if.then22.i.for.inc.i_crit_edge

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then22.i.for.inc.sink.split.i_crit_edge:       ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.then22.i.for.inc.sink.split.i_crit_edge, %if.then11.i.for.inc.sink.split.i_crit_edge
  %ep_tx.sink.i = phi ptr [ %20, %if.then11.i.for.inc.sink.split.i_crit_edge ], [ %ep_tx.i, %if.then22.i.for.inc.sink.split.i_crit_edge ]
  %38 = ptrtoint ptr %ep_tx.sink.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx.i, ptr %ep_tx.sink.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.then22.i.for.inc.i_crit_edge, %if.then11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %39 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bNumEndpoints.i, align 4
  %conv4.i = zext i8 %40 to i32
  %cmp5.i = icmp ult i32 %inc.i, %conv4.i
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %41 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %20, align 4
  %tobool29.not.i = icmp eq ptr %42, null
  br i1 %tobool29.not.i, label %for.end.i.cleanup_crit_edge, label %lor.lhs.false30.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false30.i:                                ; preds = %for.end.i
  %43 = ptrtoint ptr %ep_tx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ep_tx.i, align 4
  %tobool32.not.i = icmp eq ptr %44, null
  br i1 %tobool32.not.i, label %lor.lhs.false30.i.cleanup_crit_edge, label %if.end34.i

lor.lhs.false30.i.cleanup_crit_edge:              ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34.i:                                       ; preds = %lor.lhs.false30.i
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %42, i32 0, i32 4
  %45 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %47 = and i16 %46, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool37.not.i = icmp eq i16 %47, 0
  br i1 %tobool37.not.i, label %if.end34.i.cleanup_crit_edge, label %lor.lhs.false38.i

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false38.i:                                ; preds = %if.end34.i
  %wMaxPacketSize.i79.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %44, i32 0, i32 4
  %48 = ptrtoint ptr %wMaxPacketSize.i79.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %wMaxPacketSize.i79.i, align 1
  %50 = and i16 %49, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool41.not.i = icmp eq i16 %50, 0
  br i1 %tobool41.not.i, label %lor.lhs.false38.i.cleanup_crit_edge, label %if.end11

lor.lhs.false38.i.cleanup_crit_edge:              ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false38.i
  %51 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %private.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %wMaxPacketSize.i.i44 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %wMaxPacketSize.i.i44 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %wMaxPacketSize.i.i44, align 1
  %57 = and i16 %56, -249
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #5
  %59 = tail call i16 @llvm.umax.i16(i16 %58, i16 64) #5
  %60 = zext i16 %59 to i32
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %60, i32 noundef 3520) #8
  %usb_rx_buf.i = getelementptr inbounds %struct.vmk80xx_private, ptr %52, i32 0, i32 3
  %61 = ptrtoint ptr %usb_rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call9.i.i.i, ptr %usb_rx_buf.i, align 4
  %tobool.not.i45 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i45, label %if.end11.cleanup_crit_edge, label %if.end8.i.i43.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i.i43.i:                                  ; preds = %if.end11
  %62 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %52, align 4
  %wMaxPacketSize.i27.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %wMaxPacketSize.i27.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %wMaxPacketSize.i27.i, align 1
  %66 = and i16 %65, -249
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #5
  %68 = tail call i16 @llvm.umax.i16(i16 %67, i16 64) #5
  %69 = zext i16 %68 to i32
  %call9.i.i42.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %69, i32 noundef 3520) #8
  %usb_tx_buf.i = getelementptr inbounds %struct.vmk80xx_private, ptr %52, i32 0, i32 4
  %70 = ptrtoint ptr %usb_tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call9.i.i42.i, ptr %usb_tx_buf.i, align 4
  %tobool13.not.i = icmp eq ptr %call9.i.i42.i, null
  br i1 %tobool13.not.i, label %if.end8.i.i43.i.cleanup_crit_edge, label %if.end15

if.end8.i.i43.i.cleanup_crit_edge:                ; preds = %if.end8.i.i43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end8.i.i43.i
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call, i32 0, i32 7, i32 8
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call3, ptr %driver_data.i.i, align 4
  %72 = ptrtoint ptr %model7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %model7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp17 = icmp eq i32 %73, 0
  br i1 %cmp17, label %if.then18, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  %74 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %private.i, align 4
  %ep_tx.i49 = getelementptr inbounds %struct.vmk80xx_private, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %ep_tx.i49 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ep_tx.i49, align 4
  %wMaxPacketSize.i.i50 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %wMaxPacketSize.i.i50 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %wMaxPacketSize.i.i50, align 1
  %80 = and i16 %79, -249
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #5
  %and.i.i = zext i16 %81 to i32
  %usb_tx_buf.i51 = getelementptr inbounds %struct.vmk80xx_private, ptr %75, i32 0, i32 4
  %82 = ptrtoint ptr %usb_tx_buf.i51 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %usb_tx_buf.i51, align 4
  %84 = call ptr @memset(ptr %83, i32 0, i32 %and.i.i)
  %call2.i = tail call fastcc i32 @vmk80xx_write_packet(ptr noundef %dev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i52 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i52, label %if.end.i53, label %if.then18.if.end20_crit_edge

if.then18.if.end20_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end.i53:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call fastcc i32 @vmk80xx_write_packet(ptr noundef %dev, i32 noundef 5) #5
  br label %if.end20

if.end20:                                         ; preds = %if.end.i53, %if.then18.if.end20_crit_edge, %if.end15.if.end20_crit_edge
  %85 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %board_ptr, align 4
  %87 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %private.i, align 4
  %limit_sem.i = getelementptr inbounds %struct.vmk80xx_private, ptr %88, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem.i) #5
  %model.i = getelementptr inbounds %struct.vmk80xx_private, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i = icmp eq i32 %90, 0
  %..i = select i1 %cmp.i, i32 5, i32 6
  %call.i55 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %..i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end3.i, label %if.end20.vmk80xx_init_subdevices.exit_crit_edge

if.end20.vmk80xx_init_subdevices.exit_crit_edge:  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %vmk80xx_init_subdevices.exit

if.end3.i:                                        ; preds = %if.end20
  %subdevices.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %91 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %subdevices.i, align 4
  %type.i = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %type.i, align 4
  %subdev_flags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 4
  %94 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1114112, ptr %subdev_flags.i, align 4
  %ai_nchans.i = getelementptr inbounds %struct.vmk80xx_board, ptr %86, i32 0, i32 3
  %95 = ptrtoint ptr %ai_nchans.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ai_nchans.i, align 4
  %n_chan.i = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 3
  %97 = ptrtoint ptr %n_chan.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %n_chan.i, align 4
  %ai_maxdata.i = getelementptr inbounds %struct.vmk80xx_board, ptr %86, i32 0, i32 4
  %98 = ptrtoint ptr %ai_maxdata.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ai_maxdata.i, align 4
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 13
  %100 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %maxdata.i, align 4
  %range.i = getelementptr inbounds %struct.vmk80xx_board, ptr %86, i32 0, i32 2
  %101 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %range.i, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 15
  %103 = ptrtoint ptr %range_table.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %range_table.i, align 4
  %insn_read.i = getelementptr inbounds %struct.comedi_subdevice, ptr %92, i32 0, i32 18
  %104 = ptrtoint ptr %insn_read.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @vmk80xx_ai_insn_read, ptr %insn_read.i, align 4
  %105 = load ptr, ptr %subdevices.i, align 4
  %type6.i = getelementptr %struct.comedi_subdevice, ptr %105, i32 1, i32 2
  %106 = ptrtoint ptr %type6.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %type6.i, align 4
  %subdev_flags7.i = getelementptr %struct.comedi_subdevice, ptr %105, i32 1, i32 4
  %107 = ptrtoint ptr %subdev_flags7.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1179648, ptr %subdev_flags7.i, align 4
  %ao_nchans.i = getelementptr inbounds %struct.vmk80xx_board, ptr %86, i32 0, i32 5
  %108 = ptrtoint ptr %ao_nchans.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ao_nchans.i, align 4
  %n_chan8.i = getelementptr %struct.comedi_subdevice, ptr %105, i32 1, i32 3
  %110 = ptrtoint ptr %n_chan8.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %n_chan8.i, align 4
  %maxdata9.i = getelementptr %struct.comedi_subdevice, ptr %105, i32 1, i32 13
  %111 = ptrtoint ptr %maxdata9.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 255, ptr %maxdata9.i, align 4
  %112 = load ptr, ptr %range.i, align 4
  %range_table11.i = getelementptr %struct.comedi_subdevice, ptr %105, i32 1, i32 15
  %113 = ptrtoint ptr %range_table11.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %range_table11.i, align 4
  %insn_write.i = getelementptr %struct.comedi_subdevice, ptr %105, i32 1, i32 19
  %114 = ptrtoint ptr %insn_write.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @vmk80xx_ao_insn_write, ptr %insn_write.i, align 4
  %115 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp13.i = icmp eq i32 %116, 1
  br i1 %cmp13.i, label %if.then14.i, label %if.end3.i.if.end17.i_crit_edge

if.end3.i.if.end17.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %subdev_flags7.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1245184, ptr %subdev_flags7.i, align 4
  %insn_read16.i = getelementptr %struct.comedi_subdevice, ptr %105, i32 1, i32 18
  %118 = ptrtoint ptr %insn_read16.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @vmk80xx_ao_insn_read, ptr %insn_read16.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end3.i.if.end17.i_crit_edge
  %119 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %subdevices.i, align 4
  %type20.i = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 2
  %121 = ptrtoint ptr %type20.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 3, ptr %type20.i, align 4
  %subdev_flags21.i = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 4
  %122 = ptrtoint ptr %subdev_flags21.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 65536, ptr %subdev_flags21.i, align 4
  %di_nchans.i = getelementptr inbounds %struct.vmk80xx_board, ptr %86, i32 0, i32 6
  %123 = ptrtoint ptr %di_nchans.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %di_nchans.i, align 4
  %n_chan22.i = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 3
  %125 = ptrtoint ptr %n_chan22.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %n_chan22.i, align 4
  %maxdata23.i = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 13
  %126 = ptrtoint ptr %maxdata23.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %maxdata23.i, align 4
  %range_table24.i = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 15
  %127 = ptrtoint ptr %range_table24.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @range_unipolar5, ptr %range_table24.i, align 4
  %insn_bits.i = getelementptr %struct.comedi_subdevice, ptr %120, i32 2, i32 20
  %128 = ptrtoint ptr %insn_bits.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @vmk80xx_di_insn_bits, ptr %insn_bits.i, align 4
  %129 = load ptr, ptr %subdevices.i, align 4
  %type27.i = getelementptr %struct.comedi_subdevice, ptr %129, i32 3, i32 2
  %130 = ptrtoint ptr %type27.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 4, ptr %type27.i, align 4
  %subdev_flags28.i = getelementptr %struct.comedi_subdevice, ptr %129, i32 3, i32 4
  %131 = ptrtoint ptr %subdev_flags28.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 131072, ptr %subdev_flags28.i, align 4
  %n_chan29.i = getelementptr %struct.comedi_subdevice, ptr %129, i32 3, i32 3
  %132 = ptrtoint ptr %n_chan29.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 8, ptr %n_chan29.i, align 4
  %maxdata30.i = getelementptr %struct.comedi_subdevice, ptr %129, i32 3, i32 13
  %133 = ptrtoint ptr %maxdata30.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %maxdata30.i, align 4
  %range_table31.i = getelementptr %struct.comedi_subdevice, ptr %129, i32 3, i32 15
  %134 = ptrtoint ptr %range_table31.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @range_unipolar5, ptr %range_table31.i, align 4
  %insn_bits32.i = getelementptr %struct.comedi_subdevice, ptr %129, i32 3, i32 20
  %135 = ptrtoint ptr %insn_bits32.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @vmk80xx_do_insn_bits, ptr %insn_bits32.i, align 4
  %136 = load ptr, ptr %subdevices.i, align 4
  %type35.i = getelementptr %struct.comedi_subdevice, ptr %136, i32 4, i32 2
  %137 = ptrtoint ptr %type35.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 6, ptr %type35.i, align 4
  %subdev_flags36.i = getelementptr %struct.comedi_subdevice, ptr %136, i32 4, i32 4
  %138 = ptrtoint ptr %subdev_flags36.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 65536, ptr %subdev_flags36.i, align 4
  %n_chan37.i = getelementptr %struct.comedi_subdevice, ptr %136, i32 4, i32 3
  %139 = ptrtoint ptr %n_chan37.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 2, ptr %n_chan37.i, align 4
  %cnt_maxdata.i = getelementptr inbounds %struct.vmk80xx_board, ptr %86, i32 0, i32 7
  %140 = ptrtoint ptr %cnt_maxdata.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cnt_maxdata.i, align 4
  %maxdata38.i = getelementptr %struct.comedi_subdevice, ptr %136, i32 4, i32 13
  %142 = ptrtoint ptr %maxdata38.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %maxdata38.i, align 4
  %insn_read39.i = getelementptr %struct.comedi_subdevice, ptr %136, i32 4, i32 18
  %143 = ptrtoint ptr %insn_read39.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @vmk80xx_cnt_insn_read, ptr %insn_read39.i, align 4
  %insn_config.i = getelementptr %struct.comedi_subdevice, ptr %136, i32 4, i32 21
  %144 = ptrtoint ptr %insn_config.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @vmk80xx_cnt_insn_config, ptr %insn_config.i, align 4
  %145 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp41.i = icmp eq i32 %146, 0
  br i1 %cmp41.i, label %if.then42.i, label %if.end17.i.if.end46.i_crit_edge

if.end17.i.if.end46.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.i

if.then42.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %subdev_flags36.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 196608, ptr %subdev_flags36.i, align 4
  %insn_write45.i = getelementptr %struct.comedi_subdevice, ptr %136, i32 4, i32 19
  %148 = ptrtoint ptr %insn_write45.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @vmk80xx_cnt_insn_write, ptr %insn_write45.i, align 4
  %149 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %.pr.i = load i32, ptr %model.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then42.i, %if.end17.i.if.end46.i_crit_edge
  %150 = phi i32 [ %.pr.i, %if.then42.i ], [ %146, %if.end17.i.if.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp48.i = icmp eq i32 %150, 1
  br i1 %cmp48.i, label %if.then49.i, label %if.end46.i.vmk80xx_init_subdevices.exit_crit_edge

if.end46.i.vmk80xx_init_subdevices.exit_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vmk80xx_init_subdevices.exit

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #7
  %151 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %subdevices.i, align 4
  %type52.i = getelementptr %struct.comedi_subdevice, ptr %152, i32 5, i32 2
  %153 = ptrtoint ptr %type52.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 12, ptr %type52.i, align 4
  %subdev_flags53.i = getelementptr %struct.comedi_subdevice, ptr %152, i32 5, i32 4
  %154 = ptrtoint ptr %subdev_flags53.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 196608, ptr %subdev_flags53.i, align 4
  %pwm_nchans.i = getelementptr inbounds %struct.vmk80xx_board, ptr %86, i32 0, i32 8
  %155 = ptrtoint ptr %pwm_nchans.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pwm_nchans.i, align 4
  %n_chan54.i = getelementptr %struct.comedi_subdevice, ptr %152, i32 5, i32 3
  %157 = ptrtoint ptr %n_chan54.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %n_chan54.i, align 4
  %pwm_maxdata.i = getelementptr inbounds %struct.vmk80xx_board, ptr %86, i32 0, i32 9
  %158 = ptrtoint ptr %pwm_maxdata.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %pwm_maxdata.i, align 4
  %maxdata55.i = getelementptr %struct.comedi_subdevice, ptr %152, i32 5, i32 13
  %160 = ptrtoint ptr %maxdata55.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %maxdata55.i, align 4
  %insn_read56.i = getelementptr %struct.comedi_subdevice, ptr %152, i32 5, i32 18
  %161 = ptrtoint ptr %insn_read56.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @vmk80xx_pwm_insn_read, ptr %insn_read56.i, align 4
  %insn_write57.i = getelementptr %struct.comedi_subdevice, ptr %152, i32 5, i32 19
  %162 = ptrtoint ptr %insn_write57.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @vmk80xx_pwm_insn_write, ptr %insn_write57.i, align 4
  br label %vmk80xx_init_subdevices.exit

vmk80xx_init_subdevices.exit:                     ; preds = %if.then49.i, %if.end46.i.vmk80xx_init_subdevices.exit_crit_edge, %if.end20.vmk80xx_init_subdevices.exit_crit_edge
  tail call void @up(ptr noundef %limit_sem.i) #5
  br label %cleanup

cleanup:                                          ; preds = %vmk80xx_init_subdevices.exit, %if.end8.i.i43.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false38.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %lor.lhs.false30.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i55, %vmk80xx_init_subdevices.exit ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ -22, %if.end34.i.cleanup_crit_edge ], [ -19, %for.end.i.cleanup_crit_edge ], [ -19, %lor.lhs.false30.i.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -22, %lor.lhs.false38.i.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ -12, %if.end8.i.i43.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vmk80xx_write_packet(ptr noundef %dev, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #5
  %conv = trunc i32 %cmd to i8
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_tx_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %3, align 1
  %model = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #5
  %ep_tx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ep_tx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ep_tx.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bEndpointAddress.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  %bEndpointAddress1.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bEndpointAddress1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress1.i, align 1
  %conv.i = zext i8 %12 to i32
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %18, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %conv3.i = zext i8 %16 to i32
  %shl1.i23.i = shl nuw nsw i32 %conv3.i, 15
  %or.i24.i = or i32 %shl.i.i, %shl1.i23.i
  %or6.i = or i32 %or.i24.i, -1073741696
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %10, i32 0, i32 4
  %19 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %21 = and i16 %20, -249
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #5
  %and.i.i = zext i16 %22 to i32
  %wMaxPacketSize.i25.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %14, i32 0, i32 4
  %23 = ptrtoint ptr %wMaxPacketSize.i25.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wMaxPacketSize.i25.i, align 1
  %25 = and i16 %24, -249
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #5
  %and.i26.i = zext i16 %26 to i32
  %usb_tx_buf.i = getelementptr inbounds %struct.vmk80xx_private, ptr %8, i32 0, i32 4
  %27 = ptrtoint ptr %usb_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_tx_buf.i, align 4
  %call11.i = tail call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %28, i32 noundef %and.i.i, ptr noundef null, i32 noundef 10000) #5
  %usb_rx_buf.i = getelementptr inbounds %struct.vmk80xx_private, ptr %8, i32 0, i32 3
  %29 = ptrtoint ptr %usb_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_rx_buf.i, align 4
  %call12.i = tail call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or6.i, ptr noundef %30, i32 noundef %and.i26.i, ptr noundef null, i32 noundef 10000) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ep_tx = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %ep_tx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ep_tx, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bEndpointAddress, align 1
  %conv2 = zext i8 %34 to i32
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call, align 8
  %shl.i = shl i32 %36, 8
  %shl1.i = shl nuw nsw i32 %conv2, 15
  %or.i17 = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i17, 1073741824
  %37 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_tx_buf, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 4
  %39 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %wMaxPacketSize.i, align 1
  %41 = and i16 %40, -249
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #5
  %and.i = zext i16 %42 to i32
  %call6 = tail call i32 @usb_interrupt_msg(ptr noundef %call, i32 noundef %or, ptr noundef %38, i32 noundef %and.i, ptr noundef null, i32 noundef 10000) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_usb_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_ai_insn_read(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %model = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond = icmp eq i32 %5, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_tx_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %7, align 1
  %conv = trunc i32 %3 to i8
  %9 = load ptr, ptr %usb_tx_buf, align 4
  %arrayidx7 = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx7, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %reg.sroa.8.0 = phi i32 [ 3, %sw.default ], [ -1, %sw.bb ]
  %reg.sroa.0.0 = phi i32 [ 2, %sw.default ], [ %., %sw.bb ]
  %n8 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %11 = ptrtoint ptr %n8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp49.not = icmp eq i32 %12, 0
  br i1 %cmp49.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %usb_rx_buf22 = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call fastcc i32 @vmk80xx_read_packet(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end12:                                         ; preds = %for.body
  %13 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14 = icmp eq i32 %14, 0
  %15 = ptrtoint ptr %usb_rx_buf22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_rx_buf22, align 4
  %arrayidx18 = getelementptr i8, ptr %16, i32 %reg.sroa.0.0
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  br i1 %cmp14, label %if.end12.for.inc_crit_edge, label %if.end21

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx28 = getelementptr i8, ptr %16, i32 %reg.sroa.8.0
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %20 to i32
  %mul = shl nuw nsw i32 %conv29, 8
  %add = or i32 %mul, %conv19
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.end12.for.inc_crit_edge
  %add.sink = phi i32 [ %add, %if.end21 ], [ %conv19, %if.end12.for.inc_crit_edge ]
  %21 = getelementptr i32, ptr %data, i32 %n.050
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.sink, ptr %21, align 4
  %inc = add nuw i32 %n.050, 1
  %23 = ptrtoint ptr %n8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n8, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %sw.epilog.for.end_crit_edge ], [ %n.050, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @up(ptr noundef %limit_sem) #5
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_ao_insn_write(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %model = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond = icmp eq i32 %5, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %3 to i8
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_tx_buf, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %cmd.0 = phi i32 [ 2, %sw.default ], [ 5, %sw.bb ]
  %reg.0 = phi i32 [ 2, %sw.default ], [ %., %sw.bb ]
  %n1 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp21.not = icmp eq i32 %10, 0
  br i1 %cmp21.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %usb_tx_buf5 = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr i32, ptr %data, i32 %n.022
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  %conv4 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %usb_tx_buf5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_tx_buf5, align 4
  %arrayidx6 = getelementptr i8, ptr %14, i32 %reg.0
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4, ptr %arrayidx6, align 1
  %call = tail call fastcc i32 @vmk80xx_write_packet(ptr noundef %dev, i32 noundef %cmd.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %n.022, 1
  %16 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n1, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %sw.epilog.for.end_crit_edge ], [ %n.022, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @up(ptr noundef %limit_sem) #5
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_ao_insn_read(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_tx_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 15, ptr %5, align 1
  %n1 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13.not = icmp eq i32 %8, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %and = and i32 %3, 65535
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 3
  %add = add nuw nsw i32 %and, 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %n.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %call = tail call fastcc i32 @vmk80xx_read_packet(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_rx_buf, align 4
  %arrayidx2 = getelementptr i8, ptr %10, i32 %add
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %12 to i32
  %arrayidx3 = getelementptr i32, ptr %data, i32 %n.014
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %arrayidx3, align 4
  %inc = add nuw i32 %n.014, 1
  %14 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n1, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n.014, %for.body.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ]
  tail call void @up(ptr noundef %limit_sem) #5
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_di_insn_bits(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_rx_buf, align 4
  %model = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_tx_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call = tail call fastcc i32 @vmk80xx_read_packet(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then2:                                         ; preds = %if.end
  %9 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4 = icmp eq i32 %10, 0
  %arrayidx6 = getelementptr i8, ptr %3, i32 %reg.0
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1
  %conv = zext i8 %12 to i32
  br i1 %cmp4, label %if.then5, label %if.then2.if.end21.sink.split_crit_edge

if.then2.if.end21.sink.split_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.sink.split

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %13 = lshr i32 %conv, 4
  %and = and i32 %13, 3
  %shl = shl nuw nsw i32 %conv, 2
  %and9 = and i32 %shl, 4
  %or = or i32 %and, %and9
  %14 = lshr i32 %conv, 3
  %and13 = and i32 %14, 24
  %or14 = or i32 %or, %and13
  br label %if.end21.sink.split

if.end21.sink.split:                              ; preds = %if.then5, %if.then2.if.end21.sink.split_crit_edge
  %or14.sink = phi i32 [ %or14, %if.then5 ], [ %conv, %if.then2.if.end21.sink.split_crit_edge ]
  %arrayidx15 = getelementptr i32, ptr %data, i32 1
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or14.sink, ptr %arrayidx15, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.end.if.end21_crit_edge
  %retval1.0 = phi i32 [ %call, %if.end.if.end21_crit_edge ], [ 2, %if.end21.sink.split ]
  tail call void @up(ptr noundef %limit_sem) #5
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_do_insn_bits(ptr noundef %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_rx_buf, align 4
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_tx_buf, align 4
  %model = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then1

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %. = select i1 %cmp, i32 6, i32 5
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %conv = trunc i32 %9 to i8
  %arrayidx = getelementptr i8, ptr %5, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %call2 = tail call fastcc i32 @vmk80xx_write_packet(ptr noundef %dev, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then1.if.end6_crit_edge, label %if.then1.out_crit_edge

if.then1.out_crit_edge:                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %if.then1.if.end6_crit_edge, %entry.if.end6_crit_edge
  %11 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp8 = icmp eq i32 %12, 1
  br i1 %cmp8, label %if.then10, label %if.else19

if.then10:                                        ; preds = %if.end6
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 14, ptr %5, align 1
  %call12 = tail call fastcc i32 @vmk80xx_read_packet(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then10.out_crit_edge

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx16 = getelementptr i8, ptr %3, i32 1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %15 to i32
  br label %cond.false

if.else19:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %state20 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %16 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state20, align 4
  br label %cond.false

out:                                              ; preds = %if.then10.out_crit_edge, %if.then1.out_crit_edge
  %ret.1 = phi i32 [ %call2, %if.then1.out_crit_edge ], [ %call12, %if.then10.out_crit_edge ]
  tail call void @up(ptr noundef %limit_sem) #5
  br label %cond.end

cond.false:                                       ; preds = %if.else19, %if.end15
  %conv17.sink = phi i32 [ %conv17, %if.end15 ], [ %17, %if.else19 ]
  %arrayidx18 = getelementptr i32, ptr %data, i32 1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv17.sink, ptr %arrayidx18, align 4
  tail call void @up(ptr noundef %limit_sem) #5
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %out
  %cond = phi i32 [ %20, %cond.false ], [ %ret.1, %out ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_cnt_insn_read(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %model = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond = icmp eq i32 %5, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 4, i32 6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_tx_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 9, ptr %7, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %reg.sroa.8.0 = phi i32 [ 6, %sw.default ], [ 0, %sw.bb ]
  %reg.sroa.0.0 = phi i32 [ 2, %sw.default ], [ %., %sw.bb ]
  %n6 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp49.not = icmp eq i32 %10, 0
  br i1 %cmp49.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %usb_rx_buf17 = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 3
  %add = add nuw nsw i32 %and, 1
  %mul = mul nuw nsw i32 %reg.sroa.0.0, %add
  %add19 = or i32 %mul, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call fastcc i32 @vmk80xx_read_packet(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end9, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end9:                                          ; preds = %for.body
  %11 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp11 = icmp eq i32 %12, 0
  %13 = ptrtoint ptr %usb_rx_buf17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_rx_buf17, align 4
  br i1 %cmp11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx14 = getelementptr i8, ptr %14, i32 %reg.sroa.0.0
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14, align 1
  %conv = zext i8 %16 to i32
  br label %for.inc

if.else16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20 = getelementptr i8, ptr %14, i32 %add19
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %arrayidx26 = getelementptr i8, ptr %14, i32 %reg.sroa.8.0
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %20 to i32
  %mul28 = shl nuw nsw i32 %conv27, 8
  %add29 = or i32 %mul28, %conv21
  br label %for.inc

for.inc:                                          ; preds = %if.else16, %if.then12
  %add29.sink = phi i32 [ %conv, %if.then12 ], [ %add29, %if.else16 ]
  %21 = getelementptr i32, ptr %data, i32 %n.050
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add29.sink, ptr %21, align 4
  %inc = add nuw i32 %n.050, 1
  %23 = ptrtoint ptr %n6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n6, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %sw.epilog.for.end_crit_edge ], [ %n.050, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @up(ptr noundef %limit_sem) #5
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_cnt_insn_config(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %5)
  %cond7 = icmp eq i32 %5, 34
  br i1 %cond7, label %sw.bb, label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @up(ptr noundef %limit_sem) #5
  br label %cond.end

sw.bb:                                            ; preds = %entry
  %model = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 3, i32 4
  %.14 = select i1 %tobool.not, i32 4, i32 6
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_tx_buf, align 4
  %arrayidx2 = getelementptr i8, ptr %9, i32 %.14
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx2, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge
  %cmd.1 = phi i32 [ %., %if.then ], [ 10, %sw.bb.sw.epilog_crit_edge ]
  %call = tail call fastcc i32 @vmk80xx_write_packet(ptr noundef %dev, i32 noundef %cmd.1)
  tail call void @up(ptr noundef %limit_sem) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %cond.false, label %sw.epilog.cond.end_crit_edge

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.epilog.cond.end_crit_edge, %sw.epilog.thread
  %cond = phi i32 [ %12, %cond.false ], [ %call, %sw.epilog.cond.end_crit_edge ], [ -22, %sw.epilog.thread ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_cnt_insn_write(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  %n1 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37.not = icmp eq i32 %5, 0
  br i1 %cmp37.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %add15 = add nuw nsw i32 %and, 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %n.038
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 7450)
  %.op = mul nuw nsw i32 %8, 1000
  %.op.op = udiv i32 %.op, 115
  %div = select i1 %cmp2, i32 8, i32 %.op.op
  %call = tail call i32 @int_sqrt(i32 noundef %div) #5
  %add = add i32 %call, 1
  %mul8 = mul i32 %add, %call
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8, i32 %div)
  %cmp11 = icmp ult i32 %mul8, %div
  %spec.select = select i1 %cmp11, i32 %add, i32 %call
  %conv = trunc i32 %spec.select to i8
  %9 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_tx_buf, align 4
  %arrayidx16 = getelementptr i8, ptr %10, i32 %add15
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx16, align 1
  %call17 = tail call fastcc i32 @vmk80xx_write_packet(ptr noundef %dev, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %n.038, 1
  %12 = ptrtoint ptr %n1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n1, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n.038, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @up(ptr noundef %limit_sem) #5
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_pwm_insn_read(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_tx_buf, align 4
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_rx_buf, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %3, align 1
  %n3 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp19.not = icmp eq i32 %8, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx5 = getelementptr i8, ptr %5, i32 1
  %arrayidx7 = getelementptr i8, ptr %5, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %n.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %call = tail call fastcc i32 @vmk80xx_read_packet(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv8, 2
  %add = add nuw nsw i32 %mul, %conv
  %arrayidx9 = getelementptr i32, ptr %data, i32 %n.020
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %arrayidx9, align 4
  %inc = add nuw i32 %n.020, 1
  %14 = ptrtoint ptr %n3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n3, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n.020, %for.body.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ]
  tail call void @up(ptr noundef %limit_sem) #5
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_pwm_insn_write(ptr noundef %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %limit_sem = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 2
  tail call void @down(ptr noundef %limit_sem) #5
  %n2 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23.not = icmp eq i32 %3, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %usb_tx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %usb_tx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_tx_buf, align 4
  %arrayidx5 = getelementptr i8, ptr %5, i32 1
  %arrayidx12 = getelementptr i8, ptr %5, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr i32, ptr %data, i32 %n.024
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %8 = trunc i32 %7 to i8
  %conv = and i8 %8, 3
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx5, align 1
  %10 = load i32, ptr %arrayidx3, align 4
  %shr = lshr i32 %10, 2
  %conv10 = trunc i32 %shr to i8
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %arrayidx12, align 1
  %call = tail call fastcc i32 @vmk80xx_write_packet(ptr noundef %dev, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %n.024, 1
  %12 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n2, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n.024, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @up(ptr noundef %limit_sem) #5
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vmk80xx_read_packet(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #5
  %model = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %call.i = tail call ptr @comedi_to_usb_dev(ptr noundef %dev) #5
  %ep_tx.i = getelementptr inbounds %struct.vmk80xx_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ep_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep_tx.i, align 4
  %bEndpointAddress.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bEndpointAddress.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bEndpointAddress.i, align 1
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %bEndpointAddress1.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bEndpointAddress1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bEndpointAddress1.i, align 1
  %conv.i = zext i8 %9 to i32
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i, align 8
  %shl.i.i = shl i32 %15, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or.i = or i32 %or.i.i, -1073741824
  %conv3.i = zext i8 %13 to i32
  %shl1.i23.i = shl nuw nsw i32 %conv3.i, 15
  %or.i24.i = or i32 %shl.i.i, %shl1.i23.i
  %or6.i = or i32 %or.i24.i, -1073741696
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %18 = and i16 %17, -249
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #5
  %and.i.i = zext i16 %19 to i32
  %wMaxPacketSize.i25.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %11, i32 0, i32 4
  %20 = ptrtoint ptr %wMaxPacketSize.i25.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wMaxPacketSize.i25.i, align 1
  %22 = and i16 %21, -249
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #5
  %and.i26.i = zext i16 %23 to i32
  %usb_tx_buf.i = getelementptr inbounds %struct.vmk80xx_private, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %usb_tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usb_tx_buf.i, align 4
  %call11.i = tail call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or.i, ptr noundef %25, i32 noundef %and.i.i, ptr noundef null, i32 noundef 10000) #5
  %usb_rx_buf.i = getelementptr inbounds %struct.vmk80xx_private, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %usb_rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_rx_buf.i, align 4
  %call12.i = tail call i32 @usb_bulk_msg(ptr noundef %call.i, i32 noundef %or6.i, ptr noundef %27, i32 noundef %and.i26.i, ptr noundef null, i32 noundef 10000) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %31 to i32
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %call, align 8
  %shl.i = shl i32 %33, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i14 = or i32 %shl1.i, %shl.i
  %or2 = or i32 %or.i14, 1073741952
  %usb_rx_buf = getelementptr inbounds %struct.vmk80xx_private, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %usb_rx_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_rx_buf, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 4
  %36 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %wMaxPacketSize.i, align 1
  %38 = and i16 %37, -249
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #5
  %and.i = zext i16 %39 to i32
  %call4 = tail call i32 @usb_interrupt_msg(ptr noundef %call, i32 noundef %or2, ptr noundef %35, i32 noundef %and.i, ptr noundef null, i32 noundef 10000) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vmk80xx_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %call = tail call i32 @comedi_usb_auto_config(ptr noundef %intf, ptr noundef nonnull @vmk80xx_driver, i32 noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_usb_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_usb_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_vmk80xx__243_877_vmk80xx_driver_init6, !1, !"__initcall__kmod_vmk80xx__243_877_vmk80xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 877, i32 1}
!2 = !{ptr @__exitcall_vmk80xx_driver_exit, !1, !"__exitcall_vmk80xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author244, !4, !"__UNIQUE_ID_author244", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 879, i32 1}
!5 = !{ptr @__UNIQUE_ID_description245, !6, !"__UNIQUE_ID_description245", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 880, i32 1}
!7 = !{ptr @__UNIQUE_ID_file246, !8, !"__UNIQUE_ID_file246", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 881, i32 1}
!9 = !{ptr @__UNIQUE_ID_license247, !8, !"__UNIQUE_ID_license247", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 843, i32 17}
!12 = !{ptr @vmk80xx_driver, !13, !"vmk80xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 841, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 122, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 132, i32 12}
!18 = !{ptr @vmk80xx_boardinfo, !19, !"vmk80xx_boardinfo", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 120, i32 35}
!20 = !{ptr @vmk8061_range, !21, !"vmk8061_range", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 100, i32 35}
!22 = !{ptr @sema_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!28 = !{ptr @vmk80xx_usb_driver, !29, !"vmk80xx_usb_driver", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 871, i32 26}
!30 = !{ptr @vmk80xx_usb_id_table, !31, !"vmk80xx_usb_id_table", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/vmk80xx.c", i32 854, i32 35}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
