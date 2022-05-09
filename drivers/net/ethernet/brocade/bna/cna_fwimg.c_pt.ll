; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/cna_fwimg.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/cna_fwimg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@bfi_image_ct2_cna_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bfi_image_ct2_cna = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ct2fw-3.2.5.1.bin\00", [46 x i8] zeroinitializer }, align 32
@bfi_image_ct_cna_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@bfi_image_ct_cna = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctfw-3.2.5.1.bin\00", [47 x i8] zeroinitializer }, align 32
@bfi_fw = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cna_read_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 28, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"can't load firmware %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cna_read_firmware\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/brocade/bna/cna_fwimg.c\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cna_read_firmware._entry_ptr = internal global ptr @cna_read_firmware._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 20, i64 33, i64 34]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"bfi_image_ct2_cna_size\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 18, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"bfi_image_ct2_cna\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 17, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 53, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"bfi_image_ct_cna_size\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 18, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"bfi_image_ct_cna\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 17, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 58, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"bfi_fw\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 16, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [48 x i8] c"../drivers/net/ethernet/brocade/bna/cna_fwimg.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 28, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @cna_read_firmware._entry, ptr @cna_read_firmware._entry_ptr, ptr @bfi_image_ct2_cna_size, ptr @bfi_image_ct2_cna, ptr @.str, ptr @bfi_image_ct_cna_size, ptr @bfi_image_ct_cna, ptr @.str.1, ptr @bfi_fw, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_ct2_cna_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_ct2_cna to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_ct_cna_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_image_ct_cna to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bfi_fw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cna_read_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cna_get_firmware_buf(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %fw.i25 = alloca ptr, align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.return_crit_edge [
    i16 34, label %if.then
    i16 20, label %entry.if.then13_crit_edge
    i16 33, label %entry.if.then13_crit_edge40
  ]

entry.if.then13_crit_edge40:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @bfi_image_ct2_cna_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then4, label %if.then.return.sink.split_crit_edge

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.then4:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #6
  %4 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !31
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str, ptr noundef %dev.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str) #9
  br label %cna_read_firmware.exit

if.end.i:                                         ; preds = %if.then4
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  store ptr %8, ptr @bfi_image_ct2_cna, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %div1.i = lshr i32 %10, 2
  store i32 %div1.i, ptr @bfi_image_ct2_cna_size, align 4
  store ptr %6, ptr @bfi_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp2.not.i = icmp ult i32 %10, 4
  br i1 %cmp2.not.i, label %if.end.i.cna_read_firmware.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cna_read_firmware.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cna_read_firmware.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %n.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %11 = load ptr, ptr @bfi_image_ct2_cna, align 4
  %add.ptr.i = getelementptr i32, ptr %11, i32 %n.03.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %add.ptr.i, align 4
  %inc.i = add nuw i32 %n.03.i, 1
  %16 = load i32, ptr @bfi_image_ct2_cna_size, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cna_read_firmware.exit_crit_edge

for.body.i.cna_read_firmware.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cna_read_firmware.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cna_read_firmware.exit:                           ; preds = %for.body.i.cna_read_firmware.exit_crit_edge, %if.end.i.cna_read_firmware.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #6
  br label %return.sink.split

if.then13:                                        ; preds = %entry.if.then13_crit_edge, %entry.if.then13_crit_edge40
  %17 = load i32, ptr @bfi_image_ct_cna_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp14 = icmp eq i32 %17, 0
  br i1 %cmp14, label %if.then16, label %if.then13.return.sink.split_crit_edge

if.then13.return.sink.split_crit_edge:            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.then16:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i25) #6
  %18 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i25, align 4, !annotation !31
  %dev.i26 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i27 = call i32 @request_firmware(ptr noundef nonnull %fw.i25, ptr noundef nonnull @.str.1, ptr noundef %dev.i26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %if.end.i33, label %do.end.i29

do.end.i29:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev.i26, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #9
  br label %cna_read_firmware.exit39

if.end.i33:                                       ; preds = %if.then16
  %19 = ptrtoint ptr %fw.i25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.i25, align 4
  %data.i30 = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %data.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i30, align 4
  store ptr %22, ptr @bfi_image_ct_cna, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %div1.i31 = lshr i32 %24, 2
  store i32 %div1.i31, ptr @bfi_image_ct_cna_size, align 4
  store ptr %20, ptr @bfi_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp2.not.i32 = icmp ult i32 %24, 4
  br i1 %cmp2.not.i32, label %if.end.i33.cna_read_firmware.exit39_crit_edge, label %if.end.i33.for.body.i38_crit_edge

if.end.i33.for.body.i38_crit_edge:                ; preds = %if.end.i33
  br label %for.body.i38

if.end.i33.cna_read_firmware.exit39_crit_edge:    ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cna_read_firmware.exit39

for.body.i38:                                     ; preds = %for.body.i38.for.body.i38_crit_edge, %if.end.i33.for.body.i38_crit_edge
  %n.03.i34 = phi i32 [ %inc.i36, %for.body.i38.for.body.i38_crit_edge ], [ 0, %if.end.i33.for.body.i38_crit_edge ]
  %25 = load ptr, ptr @bfi_image_ct_cna, align 4
  %add.ptr.i35 = getelementptr i32, ptr %25, i32 %n.03.i34
  %26 = ptrtoint ptr %add.ptr.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i35, align 4
  %28 = call i32 @llvm.bswap.i32(i32 %27) #6
  %29 = ptrtoint ptr %add.ptr.i35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %add.ptr.i35, align 4
  %inc.i36 = add nuw i32 %n.03.i34, 1
  %30 = load i32, ptr @bfi_image_ct_cna_size, align 4
  %cmp.i37 = icmp ult i32 %inc.i36, %30
  br i1 %cmp.i37, label %for.body.i38.for.body.i38_crit_edge, label %for.body.i38.cna_read_firmware.exit39_crit_edge

for.body.i38.cna_read_firmware.exit39_crit_edge:  ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cna_read_firmware.exit39

for.body.i38.for.body.i38_crit_edge:              ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i38

cna_read_firmware.exit39:                         ; preds = %for.body.i38.cna_read_firmware.exit39_crit_edge, %if.end.i33.cna_read_firmware.exit39_crit_edge, %do.end.i29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i25) #6
  br label %return.sink.split

return.sink.split:                                ; preds = %cna_read_firmware.exit39, %if.then13.return.sink.split_crit_edge, %cna_read_firmware.exit, %if.then.return.sink.split_crit_edge
  %bfi_image_ct_cna.sink = phi ptr [ @bfi_image_ct2_cna, %cna_read_firmware.exit ], [ @bfi_image_ct2_cna, %if.then.return.sink.split_crit_edge ], [ @bfi_image_ct_cna, %cna_read_firmware.exit39 ], [ @bfi_image_ct_cna, %if.then13.return.sink.split_crit_edge ]
  %31 = ptrtoint ptr %bfi_image_ct_cna.sink to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bfi_image_ct_cna.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %32, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @bfa_cb_image_get_chunk(i32 noundef %asic_gen, i32 noundef %off) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %asic_gen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %asic_gen, label %entry.return_crit_edge [
    i32 2, label %entry.return.sink.split_crit_edge
    i32 3, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %bfi_image_ct2_cna.sink = phi ptr [ @bfi_image_ct2_cna, %sw.bb1 ], [ @bfi_image_ct_cna, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %bfi_image_ct2_cna.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bfi_image_ct2_cna.sink, align 4
  %add.ptr2 = getelementptr i32, ptr %2, i32 %off
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %add.ptr2, %return.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfa_cb_image_get_size(i32 noundef %asic_gen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %asic_gen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %asic_gen, label %entry.return_crit_edge [
    i32 2, label %entry.return.sink.split_crit_edge
    i32 3, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %bfi_image_ct2_cna_size.sink = phi ptr [ @bfi_image_ct2_cna_size, %sw.bb1 ], [ @bfi_image_ct_cna_size, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %bfi_image_ct2_cna_size.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bfi_image_ct2_cna_size.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %2, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/brocade/bna/cna_fwimg.c", i32 53, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/brocade/bna/cna_fwimg.c", i32 58, i32 29}
!4 = !{ptr @bfi_fw, !5, !"bfi_fw", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/brocade/bna/cna_fwimg.c", i32 16, i32 24}
!6 = !{ptr @bfi_image_ct_cna, !7, !"bfi_image_ct_cna", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/brocade/bna/cna_fwimg.c", i32 17, i32 13}
!8 = !{ptr @bfi_image_ct2_cna, !9, !"bfi_image_ct2_cna", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/brocade/bna/cna_fwimg.c", i32 17, i32 32}
!10 = !{ptr @bfi_image_ct_cna_size, !11, !"bfi_image_ct_cna_size", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/brocade/bna/cna_fwimg.c", i32 18, i32 12}
!12 = !{ptr @bfi_image_ct2_cna_size, !13, !"bfi_image_ct2_cna_size", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/brocade/bna/cna_fwimg.c", i32 18, i32 35}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/brocade/bna/cna_fwimg.c", i32 28, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cna_read_firmware._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cna_read_firmware._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
