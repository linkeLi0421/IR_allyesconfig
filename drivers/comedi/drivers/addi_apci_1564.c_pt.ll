; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/addi_apci_1564.c_pt.bc'
source_filename = "../drivers/comedi/drivers/addi_apci_1564.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.apci1564_private = type { i32, i32, i32, i32, i32, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }

@__initcall__kmod_addi_apci_1564__236_816_apci1564_driver_init6 = internal global ptr @apci1564_driver_init, section ".initcall6.init", align 4
@apci1564_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @apci1564_detach, ptr @apci1564_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apci1564_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @apci1564_pci_table, ptr @apci1564_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_apci1564_driver_exit = internal global ptr @apci1564_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [52 x i8] c"addi_apci_1564.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [85 x i8] c"addi_apci_1564.description=ADDI-DATA APCI-1564, 32 channel DI / 32 channel DO boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [58 x i8] c"addi_apci_1564.file=drivers/comedi/drivers/addi_apci_1564\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"addi_apci_1564.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"addi_apci_1564\00", [17 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@apci1564_cos_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 469, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Interrupts disabled due to mode configuration!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apci1564_cos_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/comedi/drivers/addi_apci_1564.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@apci1564_cos_cmd._entry_ptr = internal global ptr @apci1564_cos_cmd._entry, section ".printk_index", align 4
@apci1564_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5560, i32 4102, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 32, i64 31, i64 32, i64 33, i64 2003, i64 2004]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 31, i64 32, i64 33, i64 4097]
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"apci1564_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 791, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"apci1564_pci_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 810, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 792, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 468, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"apci1564_pci_table\00", align 1
@___asan_gen_.36 = private constant [43 x i8] c"../drivers/comedi/drivers/addi_apci_1564.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 804, i32 35 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_apci1564_driver_exit, ptr @__initcall__kmod_addi_apci_1564__236_816_apci1564_driver_init6, ptr @apci1564_cos_cmd._entry, ptr @apci1564_cos_cmd._entry_ptr, ptr @apci1564_driver_exit, ptr @apci1564_driver, ptr @apci1564_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @apci1564_pci_table], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci1564_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci1564_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci1564_cos_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci1564_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @apci1564_driver, ptr noundef nonnull @apci1564_pci_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apci1564_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @apci1564_driver, ptr noundef nonnull @apci1564_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apci1564_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @apci1564_reset(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 24) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call1, align 4
  %and = and i32 %1, 1048575
  %add7 = or i32 %and, -18874368
  %3 = inttoptr i32 %add7 to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %4)
  %cmp = icmp ult i32 %4, 268435456
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx13 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx13, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %iobase, align 4
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call1, align 4
  %add17 = add i32 %9, 4
  %timer = getelementptr inbounds %struct.apci1564_private, ptr %call1, i32 0, i32 1
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add17, ptr %timer, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1, align 4
  %add19 = add i32 %12, 4
  %iobase20 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %13 = ptrtoint ptr %iobase20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add19, ptr %iobase20, align 4
  %14 = load i32, ptr %call1, align 4
  %add22 = add i32 %14, 72
  %timer23 = getelementptr inbounds %struct.apci1564_private, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %timer23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add22, ptr %timer23, align 4
  %arrayidx25 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %16 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx25, align 8
  %counters = getelementptr inbounds %struct.apci1564_private, ptr %call1, i32 0, i32 2
  %18 = ptrtoint ptr %counters to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %counters, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then11
  tail call fastcc void @apci1564_reset(ptr noundef %dev)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp29.not = icmp eq i32 %20, 0
  br i1 %cmp29.not, label %if.end27.if.end38_crit_edge, label %if.then30

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then30:                                        ; preds = %if.end27
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %21 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @apci1564_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %22, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp33 = icmp eq i32 %call.i, 0
  br i1 %cmp33, label %if.then34, label %if.then30.if.end38_crit_edge

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  %irq36 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %25 = ptrtoint ptr %irq36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %irq36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.then30.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %call39 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %26 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 4
  %29 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 65536, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 13
  %31 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 15
  %32 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %27, i32 0, i32 20
  %33 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @apci1564_di_insn_bits, ptr %insn_bits, align 4
  %34 = load ptr, ptr %subdevices, align 4
  %type46 = getelementptr %struct.comedi_subdevice, ptr %34, i32 1, i32 2
  %35 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %type46, align 4
  %subdev_flags47 = getelementptr %struct.comedi_subdevice, ptr %34, i32 1, i32 4
  %36 = ptrtoint ptr %subdev_flags47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 131072, ptr %subdev_flags47, align 4
  %n_chan48 = getelementptr %struct.comedi_subdevice, ptr %34, i32 1, i32 3
  %37 = ptrtoint ptr %n_chan48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 32, ptr %n_chan48, align 4
  %maxdata49 = getelementptr %struct.comedi_subdevice, ptr %34, i32 1, i32 13
  %38 = ptrtoint ptr %maxdata49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %maxdata49, align 4
  %range_table50 = getelementptr %struct.comedi_subdevice, ptr %34, i32 1, i32 15
  %39 = ptrtoint ptr %range_table50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @range_unipolar5, ptr %range_table50, align 4
  %insn_bits51 = getelementptr %struct.comedi_subdevice, ptr %34, i32 1, i32 20
  %40 = ptrtoint ptr %insn_bits51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @apci1564_do_insn_bits, ptr %insn_bits51, align 4
  %41 = load ptr, ptr %subdevices, align 4
  %irq54 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %42 = ptrtoint ptr %irq54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool55.not = icmp eq i32 %43, 0
  br i1 %tobool55.not, label %if.end42.if.end65_crit_edge, label %if.then56

if.end42.if.end65_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then56:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx53 = getelementptr %struct.comedi_subdevice, ptr %41, i32 2
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %44 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx53, ptr %read_subdev, align 4
  %subdev_flags58 = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 4
  %45 = ptrtoint ptr %subdev_flags58 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 268533760, ptr %subdev_flags58, align 4
  %n_chan59 = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 3
  %46 = ptrtoint ptr %n_chan59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %n_chan59, align 4
  %maxdata60 = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 13
  %47 = ptrtoint ptr %maxdata60 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %maxdata60, align 4
  %range_table61 = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 15
  %48 = ptrtoint ptr %range_table61 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @range_unipolar5, ptr %range_table61, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 5
  %49 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %len_chanlist, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 21
  %50 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @apci1564_cos_insn_config, ptr %insn_config, align 4
  %insn_bits62 = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 20
  %51 = ptrtoint ptr %insn_bits62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @apci1564_cos_insn_bits, ptr %insn_bits62, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 23
  %52 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @apci1564_cos_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 22
  %53 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @apci1564_cos_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 25
  %54 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @apci1564_cos_cancel, ptr %cancel, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then56, %if.end42.if.end65_crit_edge
  %.sink = phi i32 [ 3, %if.then56 ], [ 0, %if.end42.if.end65_crit_edge ]
  %55 = getelementptr %struct.comedi_subdevice, ptr %41, i32 2, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %55, align 4
  %57 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %subdevices, align 4
  %type68 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 2
  %59 = ptrtoint ptr %type68 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 7, ptr %type68, align 4
  %subdev_flags69 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 4
  %60 = ptrtoint ptr %subdev_flags69 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 196608, ptr %subdev_flags69, align 4
  %n_chan70 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 3
  %61 = ptrtoint ptr %n_chan70 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %n_chan70, align 4
  %maxdata71 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 13
  %62 = ptrtoint ptr %maxdata71 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4095, ptr %maxdata71, align 4
  %range_table72 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 15
  %63 = ptrtoint ptr %range_table72 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @range_unipolar5, ptr %range_table72, align 4
  %insn_config73 = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 21
  %64 = ptrtoint ptr %insn_config73 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @apci1564_timer_insn_config, ptr %insn_config73, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 19
  %65 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @apci1564_timer_insn_write, ptr %insn_write, align 4
  %insn_read = getelementptr %struct.comedi_subdevice, ptr %58, i32 3, i32 18
  %66 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @apci1564_timer_insn_read, ptr %insn_read, align 4
  %67 = load ptr, ptr %subdevices, align 4
  %counters76 = getelementptr inbounds %struct.apci1564_private, ptr %call1, i32 0, i32 2
  %68 = ptrtoint ptr %counters76 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %counters76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool77.not = icmp eq i32 %69, 0
  br i1 %tobool77.not, label %if.end65.if.end89_crit_edge, label %if.then78

if.end65.if.end89_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %subdev_flags80 = getelementptr %struct.comedi_subdevice, ptr %67, i32 4, i32 4
  %70 = ptrtoint ptr %subdev_flags80 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 268632064, ptr %subdev_flags80, align 4
  %n_chan81 = getelementptr %struct.comedi_subdevice, ptr %67, i32 4, i32 3
  %71 = ptrtoint ptr %n_chan81 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %n_chan81, align 4
  %maxdata82 = getelementptr %struct.comedi_subdevice, ptr %67, i32 4, i32 13
  %72 = ptrtoint ptr %maxdata82 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %maxdata82, align 4
  %range_table83 = getelementptr %struct.comedi_subdevice, ptr %67, i32 4, i32 15
  %73 = ptrtoint ptr %range_table83 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @range_unipolar5, ptr %range_table83, align 4
  %insn_config84 = getelementptr %struct.comedi_subdevice, ptr %67, i32 4, i32 21
  %74 = ptrtoint ptr %insn_config84 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @apci1564_counter_insn_config, ptr %insn_config84, align 4
  %insn_write85 = getelementptr %struct.comedi_subdevice, ptr %67, i32 4, i32 19
  %75 = ptrtoint ptr %insn_write85 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @apci1564_counter_insn_write, ptr %insn_write85, align 4
  %insn_read86 = getelementptr %struct.comedi_subdevice, ptr %67, i32 4, i32 18
  %76 = ptrtoint ptr %insn_read86 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @apci1564_counter_insn_read, ptr %insn_read86, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then78, %if.end65.if.end89_crit_edge
  %.sink197 = phi i32 [ 6, %if.then78 ], [ 0, %if.end65.if.end89_crit_edge ]
  %77 = getelementptr %struct.comedi_subdevice, ptr %67, i32 4, i32 2
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink197, ptr %77, align 4
  %79 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %subdevices, align 4
  %arrayidx91 = getelementptr %struct.comedi_subdevice, ptr %80, i32 5
  %iobase92 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %81 = ptrtoint ptr %iobase92 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iobase92, align 4
  %add93 = add i32 %82, 36
  %call94 = tail call i32 @addi_watchdog_init(ptr noundef %arrayidx91, i32 noundef %add93) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end97:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %subdevices, align 4
  %type100 = getelementptr %struct.comedi_subdevice, ptr %84, i32 6, i32 2
  %85 = ptrtoint ptr %type100 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3, ptr %type100, align 4
  %subdev_flags101 = getelementptr %struct.comedi_subdevice, ptr %84, i32 6, i32 4
  %86 = ptrtoint ptr %subdev_flags101 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 65536, ptr %subdev_flags101, align 4
  %n_chan102 = getelementptr %struct.comedi_subdevice, ptr %84, i32 6, i32 3
  %87 = ptrtoint ptr %n_chan102 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2, ptr %n_chan102, align 4
  %maxdata103 = getelementptr %struct.comedi_subdevice, ptr %84, i32 6, i32 13
  %88 = ptrtoint ptr %maxdata103 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %maxdata103, align 4
  %range_table104 = getelementptr %struct.comedi_subdevice, ptr %84, i32 6, i32 15
  %89 = ptrtoint ptr %range_table104 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @range_unipolar5, ptr %range_table104, align 4
  %insn_bits105 = getelementptr %struct.comedi_subdevice, ptr %84, i32 6, i32 20
  %90 = ptrtoint ptr %insn_bits105 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @apci1564_diag_insn_bits, ptr %insn_bits105, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end89.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end97 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %call94, %if.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apci1564_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 0) #6, !srcloc !38
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add3 = add i32 %6, 12
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %7 = inttoptr i32 %add5 to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add12 = add i32 %10, 4
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %11 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add20 = add i32 %13, 8
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %14 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add28 = add i32 %16, 20
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %17 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add36 = add i32 %19, 24
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %20 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 0) #6, !srcloc !38
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add41 = add i32 %22, 36
  tail call void @addi_watchdog_reset(i32 noundef %add41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %timer = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timer, align 4
  %add45 = add i32 %24, 12
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %25 = inttoptr i32 %add47 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timer, align 4
  %add53 = add i32 %27, 4
  %and54 = and i32 %add53, 1048575
  %add55 = or i32 %and54, -18874368
  %28 = inttoptr i32 %add55 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 0) #6, !srcloc !38
  %counters = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add59 = add i32 %30, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %and64 = and i32 %add59, 1048575
  %add65 = or i32 %and64, -18874368
  %31 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %add70 = add i32 %30, 44
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %32 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %32, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %add77 = add i32 %30, 76
  %and78 = and i32 %add77, 1048575
  %add79 = or i32 %and78, -18874368
  %33 = inttoptr i32 %add79 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 0) #6, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @addi_watchdog_reset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 29
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 1048560
  store i32 %and, ptr %state, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 16
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %8 = inttoptr i32 %add2 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #6, !srcloc !35
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %and4 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add7 = add i32 %12, 12
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %13 = inttoptr i32 %add9 to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %15 = and i32 %14, -251719936
  %16 = or i32 %15, 128
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %and17 = and i32 %10, -5
  %19 = tail call i32 @llvm.bswap.i32(i32 %and17)
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add19 = add i32 %21, 16
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %22 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add27 = add i32 %24, 16
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %25 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %9) #6, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %timer = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timer, align 4
  %add32 = add i32 %27, 20
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %28 = inttoptr i32 %add34 to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool39.not = icmp eq i32 %30, 0
  br i1 %tobool39.not, label %if.end.if.end67_crit_edge, label %if.then40

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  %or42 = or i32 %32, 1073741824
  store i32 %or42, ptr %state, align 4
  %33 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timer, align 4
  %add45 = add i32 %34, 12
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %35 = inttoptr i32 %add47 to ptr
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %35) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timer, align 4
  %add55 = add i32 %38, 12
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %39 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %39, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %timer, align 4
  %add63 = add i32 %41, 12
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %42 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 %36) #6, !srcloc !38
  br label %if.end67

if.end67:                                         ; preds = %if.then40, %if.end.if.end67_crit_edge
  %counters = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool68.not = icmp eq i32 %44, 0
  br i1 %tobool68.not, label %if.end67.if.end108_crit_edge, label %for.body.preheader

if.end67.if.end108_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

for.body.preheader:                               ; preds = %if.end67
  %45 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %counters, align 4
  %add74 = add i32 %46, 20
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %47 = inttoptr i32 %add76 to ptr
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %47) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %49 = and i32 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool81.not = icmp eq i32 %49, 0
  br i1 %tobool81.not, label %for.body.preheader.if.end107_crit_edge, label %if.then82

for.body.preheader.if.end107_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then82:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state, align 4
  %or85 = or i32 %51, 134217728
  store i32 %or85, ptr %state, align 4
  %add87 = add i32 %46, 12
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %52 = inttoptr i32 %add89 to ptr
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %52) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %52, i32 %53) #6, !srcloc !38
  br label %if.end107

if.end107:                                        ; preds = %if.then82, %for.body.preheader.if.end107_crit_edge
  %54 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %counters, align 4
  %add74.1 = add i32 %55, 52
  %and75.1 = and i32 %add74.1, 1048575
  %add76.1 = or i32 %and75.1, -18874368
  %56 = inttoptr i32 %add76.1 to ptr
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %56) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %58 = and i32 %57, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool81.not.1 = icmp eq i32 %58, 0
  br i1 %tobool81.not.1, label %if.end107.if.end107.1_crit_edge, label %if.then82.1

if.end107.if.end107.1_crit_edge:                  ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107.1

if.then82.1:                                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %state, align 4
  %or85.1 = or i32 %60, 268435456
  store i32 %or85.1, ptr %state, align 4
  %add87.1 = add i32 %55, 44
  %and88.1 = and i32 %add87.1, 1048575
  %add89.1 = or i32 %and88.1, -18874368
  %61 = inttoptr i32 %add89.1 to ptr
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %61) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %61, i32 %62) #6, !srcloc !38
  br label %if.end107.1

if.end107.1:                                      ; preds = %if.then82.1, %if.end107.if.end107.1_crit_edge
  %63 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %counters, align 4
  %add74.2 = add i32 %64, 84
  %and75.2 = and i32 %add74.2, 1048575
  %add76.2 = or i32 %and75.2, -18874368
  %65 = inttoptr i32 %add76.2 to ptr
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %65) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %67 = and i32 %66, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool81.not.2 = icmp eq i32 %67, 0
  br i1 %tobool81.not.2, label %if.end107.1.if.end108_crit_edge, label %if.then82.2

if.end107.1.if.end108_crit_edge:                  ; preds = %if.end107.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108

if.then82.2:                                      ; preds = %if.end107.1
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state, align 4
  %or85.2 = or i32 %69, 536870912
  store i32 %or85.2, ptr %state, align 4
  %add87.2 = add i32 %64, 76
  %and88.2 = and i32 %add87.2, 1048575
  %add89.2 = or i32 %and88.2, -18874368
  %70 = inttoptr i32 %add89.2 to ptr
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %70) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %70, i32 %71) #6, !srcloc !38
  br label %if.end108

if.end108:                                        ; preds = %if.then82.2, %if.end107.1.if.end108_crit_edge, %if.end67.if.end108_crit_edge
  %72 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %state, align 4
  %and110 = and i32 %73, -1048561
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end108.if.end116_crit_edge, label %if.then112

if.end108.if.end116_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #8
  %call114 = tail call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef %state, i32 noundef 1) #6
  %call115 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #6
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %if.end108.if.end116_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !35
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !35
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %state, align 4
  %call3 = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add6 = add i32 %10, 20
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %11 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #6, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_cos_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %3)
  %cond = icmp eq i32 %3, 21
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %arrayidx2 = getelementptr i32, ptr %data, i32 3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %cmp3 = icmp ult i32 %7, 32
  br i1 %cmp3, label %if.then4, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %notmask = shl nsw i32 -1, %7
  %sub = xor i32 %notmask, -1
  %arrayidx5 = getelementptr i32, ptr %data, i32 4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %shl6 = shl i32 %9, %7
  %arrayidx7 = getelementptr i32, ptr %data, i32 5
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %shl8 = shl i32 %11, %7
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  %oldmask.0 = phi i32 [ %sub, %if.then4 ], [ -1, %if.end.if.end9_crit_edge ]
  %himask.0 = phi i32 [ %shl6, %if.then4 ], [ 0, %if.end.if.end9_crit_edge ]
  %lomask.0 = phi i32 [ %shl8, %if.then4 ], [ 0, %if.end.if.end9_crit_edge ]
  %arrayidx10 = getelementptr i32, ptr %data, i32 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end9.cleanup_crit_edge [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb35
    i32 2, label %sw.bb51
  ]

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ctrl, align 4
  %mode1 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mode1, align 4
  %mode2 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %mode2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %mode2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add = add i32 %19, 16
  %and = and i32 %add, 1048575
  %add12 = or i32 %and, -18874368
  %20 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 0) #6, !srcloc !38
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add14 = add i32 %22, 12
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %23 = inttoptr i32 %add16 to ptr
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %23) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add23 = add i32 %26, 4
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %27 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase, align 4
  %add31 = add i32 %29, 8
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %30 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 0) #6, !srcloc !38
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end9
  %ctrl36 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %ctrl36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ctrl36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp37.not = icmp eq i32 %32, 4
  br i1 %cmp37.not, label %if.else42, label %if.then38

if.then38:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %ctrl36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %ctrl36, align 4
  %mode140 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %mode140 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %mode140, align 4
  %mode241 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %mode241 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mode241, align 4
  br label %if.end47

if.else42:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #8
  %mode143 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %mode143 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode143, align 4
  %and44 = and i32 %37, %oldmask.0
  store i32 %and44, ptr %mode143, align 4
  %mode245 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %mode245 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode245, align 4
  %and46 = and i32 %39, %oldmask.0
  store i32 %and46, ptr %mode245, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else42, %if.then38
  %mode148 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %mode148 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mode148, align 4
  %or = or i32 %41, %himask.0
  store i32 %or, ptr %mode148, align 4
  %mode249 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %mode249 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode249, align 4
  %or50 = or i32 %43, %lomask.0
  store i32 %or50, ptr %mode249, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end9
  %ctrl52 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %ctrl52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctrl52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %45)
  %cmp53.not = icmp eq i32 %45, 6
  br i1 %cmp53.not, label %if.else58, label %if.then54

if.then54:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %ctrl52 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %ctrl52, align 4
  %mode156 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %mode156 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %mode156, align 4
  %mode257 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %mode257 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %mode257, align 4
  br label %if.end63

if.else58:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  %mode159 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %mode159 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mode159, align 4
  %and60 = and i32 %50, %oldmask.0
  store i32 %and60, ptr %mode159, align 4
  %mode261 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %mode261 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode261, align 4
  %and62 = and i32 %52, %oldmask.0
  store i32 %and62, ptr %mode261, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.else58, %if.then54
  %mode164 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %mode164 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode164, align 4
  %or65 = or i32 %54, %himask.0
  store i32 %or65, ptr %mode164, align 4
  %mode266 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %55 = ptrtoint ptr %mode266 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mode266, align 4
  %or67 = or i32 %56, %lomask.0
  store i32 %or67, ptr %mode266, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end63, %if.end47, %sw.bb11
  %mode168 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %mode168 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mode168, align 4
  %and69 = and i32 %58, 1048560
  store i32 %and69, ptr %mode168, align 4
  %mode270 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %mode270 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode270, align 4
  %and71 = and i32 %60, 1048560
  store i32 %and71, ptr %mode270, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %61 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %62, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apci1564_cos_insn_bits(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %insn, ptr nocapture noundef writeonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @apci1564_cos_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i43 = and i32 %3, 64
  store i32 %and.i43, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %cmp.i44 = icmp ne i32 %and.i43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i43, i32 %3)
  %cmp1.not.i45 = icmp eq i32 %and.i43, %3
  %or.cond.i46 = and i1 %cmp.i44, %cmp1.not.i45
  %4 = select i1 %or.cond.i, i1 %or.cond.i46, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i48 = and i32 %6, 4
  store i32 %and.i48, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %cmp.i49 = icmp ne i32 %and.i48, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i48, i32 %6)
  %cmp1.not.i50 = icmp eq i32 %and.i48, %6
  %or.cond.i51 = and i1 %cmp.i49, %cmp1.not.i50
  %7 = select i1 %4, i1 %or.cond.i51, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i53 = and i32 %9, 32
  store i32 %and.i53, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %cmp.i54 = icmp ne i32 %and.i53, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i53, i32 %9)
  %cmp1.not.i55 = icmp eq i32 %and.i53, %9
  %or.cond.i56 = and i1 %cmp.i54, %cmp1.not.i55
  %10 = select i1 %7, i1 %or.cond.i56, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i58 = and i32 %12, 1
  store i32 %and.i58, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i63 = phi i32 [ -22, %if.then.i ], [ 0, %if.end.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i64 = icmp eq i32 %19, 0
  br i1 %cmp.not.i64, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge, label %if.then.i65

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit67

if.then.i65:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit67

comedi_check_trigger_arg_is.exit67:               ; preds = %if.then.i65, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge
  %retval.0.i66 = phi i32 [ -22, %if.then.i65 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge ]
  %or12 = or i32 %retval.0.i66, %retval.0.i63
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i68 = icmp eq i32 %22, 0
  br i1 %cmp.not.i68, label %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge, label %if.then.i69

comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit71

if.then.i69:                                      ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit71

comedi_check_trigger_arg_is.exit71:               ; preds = %if.then.i69, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge
  %retval.0.i70 = phi i32 [ -22, %if.then.i69 ], [ 0, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge ]
  %or14 = or i32 %or12, %retval.0.i70
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  %26 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i72 = icmp eq i32 %27, %25
  br i1 %cmp.not.i72, label %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge, label %if.then.i73

comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit75

if.then.i73:                                      ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit75

comedi_check_trigger_arg_is.exit75:               ; preds = %if.then.i73, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge
  %retval.0.i74 = phi i32 [ -22, %if.then.i73 ], [ 0, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge ]
  %or16 = or i32 %or14, %retval.0.i74
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i76 = icmp eq i32 %30, 0
  br i1 %cmp.not.i76, label %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge, label %if.then.i77

comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit79

if.then.i77:                                      ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_is.exit79

comedi_check_trigger_arg_is.exit79:               ; preds = %if.then.i77, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge
  %retval.0.i78 = phi i32 [ -22, %if.then.i77 ], [ 0, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge ]
  %or18 = or i32 %or16, %retval.0.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18)
  %tobool19.not = icmp eq i32 %or18, 0
  %. = select i1 %tobool19.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_is.exit79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_cos_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ctrl = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

land.lhs.true:                                    ; preds = %entry
  %mode1 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %land.lhs.true.do.body3_crit_edge

land.lhs.true.do.body3_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

lor.lhs.false:                                    ; preds = %land.lhs.true
  %mode2 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %do.end, label %lor.lhs.false.do.body3_crit_edge

lor.lhs.false.do.body3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.1) #9
  br label %cleanup

do.body3:                                         ; preds = %lor.lhs.false.do.body3_crit_edge, %land.lhs.true.do.body3_crit_edge, %entry.do.body3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %mode16 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %mode16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode16, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add = add i32 %14, 4
  %and = and i32 %add, 1048575
  %add7 = or i32 %and, -18874368
  %15 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %mode211 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %mode211 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode211, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add13 = add i32 %20, 8
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %21 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %21, i32 %18) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctrl, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add22 = add i32 %26, 16
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %27 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %27, i32 %24) #6, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %do.end
  %retval.0 = phi i32 [ 0, %do.body3 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_cos_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 0) #6, !srcloc !38
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add3 = add i32 %4, 12
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %5 = inttoptr i32 %add5 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add11 = add i32 %8, 4
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %9 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 0) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add18 = add i32 %11, 8
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %12 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 0) #6, !srcloc !38
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_timer_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 32, label %do.body13
    i32 33, label %sw.bb21
    i32 2003, label %sw.bb54
    i32 2004, label %sw.bb78
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %7 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp ugt i32 %6, %8
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %do.body

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %timer = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timer, align 4
  %add = add i32 %13, 4
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %14 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timer, align 4
  %add8 = add i32 %16, 12
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %17 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 301989888) #6, !srcloc !38
  br label %sw.epilog

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %timer16 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %timer16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timer16, align 4
  %add17 = add i32 %19, 12
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %20 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 0) #6, !srcloc !38
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  %arrayidx22 = getelementptr i32, ptr %data, i32 1
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx22, align 4
  %timer23 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %timer23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timer23, align 4
  %add24 = add i32 %23, 12
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %24 = inttoptr i32 %add26 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #6, !srcloc !35
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %and29 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not = icmp eq i32 %and29, 0
  br i1 %tobool.not, label %sw.bb21.if.end32_crit_edge, label %if.then30

sw.bb21.if.end32_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx22, align 4
  %or = or i32 %28, 1
  store i32 %or, ptr %arrayidx22, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %sw.bb21.if.end32_crit_edge
  %and33 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx22, align 4
  %or37 = or i32 %30, 2
  store i32 %or37, ptr %arrayidx22, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %31 = ptrtoint ptr %timer23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timer23, align 4
  %add41 = add i32 %32, 16
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %33 = inttoptr i32 %add43 to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %35 = and i32 %34, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool48.not = icmp eq i32 %35, 0
  br i1 %tobool48.not, label %if.end38.if.end52_crit_edge, label %if.then49

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then49:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx22, align 4
  %or51 = or i32 %37, 4
  store i32 %or51, ptr %arrayidx22, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.end38.if.end52_crit_edge
  %arrayidx53 = getelementptr i32, ptr %data, i32 2
  %38 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7, ptr %arrayidx53, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  %arrayidx55 = getelementptr i32, ptr %data, i32 2
  %39 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx55, align 4
  %maxdata56 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %41 = ptrtoint ptr %maxdata56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxdata56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp57 = icmp ugt i32 %40, %42
  br i1 %cmp57, label %sw.bb54.cleanup_crit_edge, label %do.body60

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body60:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %arrayidx63 = getelementptr i32, ptr %data, i32 1
  %43 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx63, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %timer64 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %timer64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %timer64, align 4
  %add65 = add i32 %47, 8
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %48 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 %45) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx55, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %timer64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %timer64, align 4
  %add74 = add i32 %53, 4
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %54 = inttoptr i32 %add76 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %54, i32 %51) #6, !srcloc !38
  br label %sw.epilog

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %timer80 = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %timer80 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %timer80, align 4
  %add81 = add i32 %56, 8
  %and82 = and i32 %add81, 1048575
  %add83 = or i32 %and82, -18874368
  %57 = inttoptr i32 %add83 to ptr
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %57) #6, !srcloc !35
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %arrayidx87 = getelementptr i32, ptr %data, i32 1
  %60 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %arrayidx87, align 4
  %61 = ptrtoint ptr %timer80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %timer80, align 4
  %add90 = add i32 %62, 4
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %63 = inttoptr i32 %add92 to ptr
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %63) #6, !srcloc !35
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %arrayidx96 = getelementptr i32, ptr %data, i32 2
  %66 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx96, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb78, %do.body60, %if.end52, %do.body13, %do.body
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %67 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb54.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %68, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb54.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_timer_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr i32, ptr %data, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %timer = getelementptr inbounds %struct.apci1564_private, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timer, align 4
  %add = add i32 %8, 4
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %9 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #6, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_timer_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %timer = getelementptr inbounds %struct.apci1564_private, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timer, align 4
  %and = and i32 %5, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #6, !srcloc !35
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %arrayidx = getelementptr i32, ptr %data, i32 %i.08
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.08, 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_counter_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %counters = getelementptr inbounds %struct.apci1564_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %counters, align 4
  %and = shl i32 %3, 5
  %mul = and i32 %and, 2097120
  %add = add i32 %mul, %5
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 32, label %sw.bb17
    i32 4097, label %do.body34
    i32 33, label %sw.bb42
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add1 = add i32 %add, 12
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %9 = inttoptr i32 %add3 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %11 = or i32 %10, 33556480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %arrayidx5 = getelementptr i32, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add6 = add i32 %add, 4
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %15 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %14) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %11) #6, !srcloc !38
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add19 = add i32 %add, 12
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %16 = inttoptr i32 %add21 to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %18 = and i32 %17, -33556481
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %18) #6, !srcloc !38
  br label %sw.epilog

do.body34:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %arrayidx37 = getelementptr i32, ptr %data, i32 1
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx37, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %add38 = add i32 %add, 12
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %22 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %21) #6, !srcloc !38
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %arrayidx43 = getelementptr i32, ptr %data, i32 1
  %23 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx43, align 4
  %add45 = add i32 %add, 12
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %24 = inttoptr i32 %add47 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #6, !srcloc !35
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %and51 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool.not = icmp eq i32 %and51, 0
  br i1 %tobool.not, label %sw.bb42.if.end_crit_edge, label %if.then

sw.bb42.if.end_crit_edge:                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx43, align 4
  %or53 = or i32 %28, 1
  store i32 %or53, ptr %arrayidx43, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb42.if.end_crit_edge
  %and54 = and i32 %26, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end.if.end59_crit_edge, label %if.then56

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then56:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx43, align 4
  %or58 = or i32 %30, 2
  store i32 %or58, ptr %arrayidx43, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end.if.end59_crit_edge
  %add61 = add i32 %add, 16
  %and62 = and i32 %add61, 1048575
  %add63 = or i32 %and62, -18874368
  %31 = inttoptr i32 %add63 to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool68.not = icmp eq i32 %33, 0
  br i1 %tobool68.not, label %if.end59.if.end72_crit_edge, label %if.then69

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then69:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx43, align 4
  %or71 = or i32 %35, 4
  store i32 %or71, ptr %arrayidx43, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end59.if.end72_crit_edge
  %arrayidx73 = getelementptr i32, ptr %data, i32 2
  %36 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 7, ptr %arrayidx73, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end72, %do.body34, %sw.bb17, %sw.bb
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %37 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %38, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_counter_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %counters = getelementptr inbounds %struct.apci1564_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %counters, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %6 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanspec, align 4
  %and = shl i32 %7, 5
  %sub = add i32 %1, -1
  %arrayidx = getelementptr i32, ptr %data, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %add = add i32 %5, 4
  %add2 = add i32 %add, %and
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %11 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %10) #6, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_counter_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %counters = getelementptr inbounds %struct.apci1564_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %counters, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %6 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanspec, align 4
  %and = shl i32 %7, 5
  %add = add i32 %5, %and
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %8 = inttoptr i32 %add3 to ptr
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #6, !srcloc !35
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %arrayidx = getelementptr i32, ptr %data, i32 %i.011
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.011, 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %13, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @addi_watchdog_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_diag_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 28
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !35
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %and3 = and i32 %4, 3
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci1564_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @apci1564_driver, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_addi_apci_1564__236_816_apci1564_driver_init6, !1, !"__initcall__kmod_addi_apci_1564__236_816_apci1564_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/addi_apci_1564.c", i32 816, i32 1}
!2 = !{ptr @__exitcall_apci1564_driver_exit, !1, !"__exitcall_apci1564_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/addi_apci_1564.c", i32 818, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/addi_apci_1564.c", i32 819, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/addi_apci_1564.c", i32 820, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/addi_apci_1564.c", i32 792, i32 17}
!12 = !{ptr @apci1564_driver, !13, !"apci1564_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/addi_apci_1564.c", i32 791, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/addi_apci_1564.c", i32 468, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @apci1564_cos_cmd._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @apci1564_cos_cmd._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @apci1564_pci_driver, !23, !"apci1564_pci_driver", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/addi_apci_1564.c", i32 810, i32 26}
!24 = !{ptr @apci1564_pci_table, !25, !"apci1564_pci_table", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/addi_apci_1564.c", i32 804, i32 35}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 4638288}
!36 = !{i64 2154584569}
!37 = !{i64 2154546461}
!38 = !{i64 4637870}
!39 = !{i64 2154547370}
!40 = !{i64 2154547630}
!41 = !{i64 2154548112}
!42 = !{i64 2154548594}
!43 = !{i64 2154549076}
!44 = !{i64 2154549566}
!45 = !{i64 2154550054}
!46 = !{i64 2154550559}
!47 = !{i64 2154551061}
!48 = !{i64 2154551563}
!49 = !{i64 2154552488}
!50 = !{i64 2154553257}
!51 = !{i64 2154553729}
!52 = !{i64 2154554284}
!53 = !{i64 2154555211}
!54 = !{i64 2154556076}
!55 = !{i64 2154556339}
!56 = !{i64 2154556828}
!57 = !{i64 2154557740}
!58 = !{i64 2154558595}
!59 = !{i64 2154558850}
!60 = !{i64 2154559323}
!61 = !{i64 2154560240}
!62 = !{i64 2154560927}
!63 = !{i64 2154561192}
!64 = !{i64 2154562374}
!65 = !{i64 2154563283}
!66 = !{i64 2154563543}
!67 = !{i64 2154564025}
!68 = !{i64 2154566933}
!69 = !{i64 2154567448}
!70 = !{i64 2154567962}
!71 = !{i64 2154568464}
!72 = !{i64 2154569373}
!73 = !{i64 2154569633}
!74 = !{i64 2154570115}
!75 = !{i64 2154570607}
!76 = !{i64 2154571321}
!77 = !{i64 2154571917}
!78 = !{i64 2154572841}
!79 = !{i64 2154573704}
!80 = !{i64 2154574056}
!81 = !{i64 2154574556}
!82 = !{i64 2154575488}
!83 = !{i64 2154576187}
!84 = !{i64 2154576453}
!85 = !{i64 2154577377}
!86 = !{i64 2154578092}
!87 = !{i64 2154578517}
!88 = !{i64 2154578997}
!89 = !{i64 2154579881}
!90 = !{i64 2154580302}
!91 = !{i64 2154580778}
!92 = !{i64 2154581670}
!93 = !{i64 2154582503}
!94 = !{i64 2154582891}
!95 = !{i64 2154583823}
!96 = !{i64 2154562111}
