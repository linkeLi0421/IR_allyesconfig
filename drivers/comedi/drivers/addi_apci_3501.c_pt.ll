; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/addi_apci_3501.c_pt.bc'
source_filename = "../drivers/comedi/drivers/addi_apci_3501.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
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
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_addi_apci_3501__236_413_apci3501_driver_init6 = internal global ptr @apci3501_driver_init, section ".initcall6.init", align 4
@apci3501_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @apci3501_detach, ptr @apci3501_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@apci3501_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @apci3501_pci_table, ptr @apci3501_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_apci3501_driver_exit = internal global ptr @apci3501_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [67 x i8] c"addi_apci_3501.description=ADDI-DATA APCI-3501 Analog output board\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [52 x i8] c"addi_apci_3501.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [58 x i8] c"addi_apci_3501.file=drivers/comedi/drivers/addi_apci_3501\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [27 x i8] c"addi_apci_3501.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"addi_apci_3501\00", [17 x i8] zeroinitializer }, align 32
@apci3501_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: DAC not-ready for channel %i\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apci3501_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/comedi/drivers/addi_apci_3501.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@apci3501_reset._entry_ptr = internal global ptr @apci3501_reset._entry, section ".printk_index", align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@apci3501_ao_range = internal constant { { i32, [2 x %struct.comedi_krange] }, [36 x i8] } { { i32, [2 x %struct.comedi_krange] } { i32 2, [2 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }] }, [36 x i8] zeroinitializer }, align 32
@apci3501_ao_insn_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 137, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unipolar resolution is only 13-bits\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"apci3501_ao_insn_write\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@apci3501_ao_insn_write._entry_ptr = internal global ptr @apci3501_ao_insn_write._entry, section ".printk_index", align 4
@apci3501_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5560, i32 12289, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"apci3501_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 388, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"apci3501_pci_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 407, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 389, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 292, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"apci3501_ao_range\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 88, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 136, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"apci3501_pci_table\00", align 1
@___asan_gen_.53 = private constant [43 x i8] c"../drivers/comedi/drivers/addi_apci_3501.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 401, i32 35 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_apci3501_driver_exit, ptr @__initcall__kmod_addi_apci_3501__236_413_apci3501_driver_init6, ptr @apci3501_ao_insn_write._entry, ptr @apci3501_ao_insn_write._entry_ptr, ptr @apci3501_driver_exit, ptr @apci3501_reset._entry, ptr @apci3501_reset._entry_ptr, ptr @apci3501_driver, ptr @apci3501_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @apci3501_ao_range, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @apci3501_pci_table], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3501_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3501_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3501_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3501_ao_range to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3501_ao_insn_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apci3501_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3501_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @apci3501_driver, ptr noundef nonnull @apci3501_pci_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apci3501_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @apci3501_driver, ptr noundef nonnull @apci3501_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apci3501_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @apci3501_reset(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3501_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #5
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call1, align 4
  %arrayidx7 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx7, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %iobase, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call.i = tail call fastcc zeroext i16 @apci3501_eeprom_readw(i32 noundef %9, i16 noundef zeroext 10) #5
  %10 = and i16 %call.i, 255
  %conv2.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp40.not.i = icmp eq i16 %10, 0
  br i1 %cmp40.not.i, label %if.end5.apci3501_eeprom_get_ao_n_chan.exit_crit_edge, label %if.end5.for.body.i_crit_edge

if.end5.for.body.i_crit_edge:                     ; preds = %if.end5
  br label %for.body.i

if.end5.apci3501_eeprom_get_ao_n_chan.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %apci3501_eeprom_get_ao_n_chan.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %for.cond.i.apci3501_eeprom_get_ao_n_chan.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.apci3501_eeprom_get_ao_n_chan.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %apci3501_eeprom_get_ao_n_chan.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end5.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end5.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 4
  %i.0.tr.i = trunc i32 %i.041.i to i16
  %13 = shl i16 %i.0.tr.i, 2
  %conv7.i = add i16 %13, 12
  %call8.i = tail call fastcc zeroext i16 @apci3501_eeprom_readw(i32 noundef %12, i16 noundef zeroext %conv7.i) #5
  %14 = and i16 %call8.i, 63
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %7, align 4
  %conv15.i = add i16 %13, 14
  %call16.i = tail call fastcc zeroext i16 @apci3501_eeprom_readw(i32 noundef %16, i16 noundef zeroext %conv15.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp18.i = icmp eq i16 %14, 3
  br i1 %cmp18.i, label %cleanup.thread.i, label %for.cond.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %7, align 4
  %add22.i = add i16 %call16.i, 10
  %call24.i = tail call fastcc zeroext i16 @apci3501_eeprom_readw(i32 noundef %18, i16 noundef zeroext %add22.i) #5
  %19 = lshr i16 %call24.i, 4
  %20 = and i16 %19, 1023
  %and26.i = zext i16 %20 to i32
  br label %apci3501_eeprom_get_ao_n_chan.exit

apci3501_eeprom_get_ao_n_chan.exit:               ; preds = %cleanup.thread.i, %for.cond.i.apci3501_eeprom_get_ao_n_chan.exit_crit_edge, %if.end5.apci3501_eeprom_get_ao_n_chan.exit_crit_edge
  %retval.2.i = phi i32 [ %and26.i, %cleanup.thread.i ], [ 0, %if.end5.apci3501_eeprom_get_ao_n_chan.exit_crit_edge ], [ 0, %for.cond.i.apci3501_eeprom_get_ao_n_chan.exit_crit_edge ]
  %call10 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %apci3501_eeprom_get_ao_n_chan.exit.cleanup_crit_edge

apci3501_eeprom_get_ao_n_chan.exit.cleanup_crit_edge: ; preds = %apci3501_eeprom_get_ao_n_chan.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %apci3501_eeprom_get_ao_n_chan.exit
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %21 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %subdevices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %tobool15.not = icmp eq i32 %retval.2.i, 0
  %type21 = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 2
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  %23 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %type21, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 4
  %24 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3276800, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.2.i, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 13
  %26 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16383, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 15
  %27 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @apci3501_ao_range, ptr %range_table, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 19
  %28 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @apci3501_ao_insn_write, ptr %insn_write, align 4
  %call17 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end22_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %type21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16.if.end22_crit_edge
  %30 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %subdevices, align 4
  %type25 = getelementptr %struct.comedi_subdevice, ptr %31, i32 1, i32 2
  %32 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %type25, align 4
  %subdev_flags26 = getelementptr %struct.comedi_subdevice, ptr %31, i32 1, i32 4
  %33 = ptrtoint ptr %subdev_flags26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65536, ptr %subdev_flags26, align 4
  %n_chan27 = getelementptr %struct.comedi_subdevice, ptr %31, i32 1, i32 3
  %34 = ptrtoint ptr %n_chan27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %n_chan27, align 4
  %maxdata28 = getelementptr %struct.comedi_subdevice, ptr %31, i32 1, i32 13
  %35 = ptrtoint ptr %maxdata28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %maxdata28, align 4
  %range_table29 = getelementptr %struct.comedi_subdevice, ptr %31, i32 1, i32 15
  %36 = ptrtoint ptr %range_table29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @range_unipolar5, ptr %range_table29, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %31, i32 1, i32 20
  %37 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @apci3501_di_insn_bits, ptr %insn_bits, align 4
  %38 = load ptr, ptr %subdevices, align 4
  %type32 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 2
  %39 = ptrtoint ptr %type32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %type32, align 4
  %subdev_flags33 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 4
  %40 = ptrtoint ptr %subdev_flags33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 131072, ptr %subdev_flags33, align 4
  %n_chan34 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 3
  %41 = ptrtoint ptr %n_chan34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %n_chan34, align 4
  %maxdata35 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 13
  %42 = ptrtoint ptr %maxdata35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %maxdata35, align 4
  %range_table36 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 15
  %43 = ptrtoint ptr %range_table36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @range_unipolar5, ptr %range_table36, align 4
  %insn_bits37 = getelementptr %struct.comedi_subdevice, ptr %38, i32 2, i32 20
  %44 = ptrtoint ptr %insn_bits37 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @apci3501_do_insn_bits, ptr %insn_bits37, align 4
  %45 = load ptr, ptr %subdevices, align 4
  %type40 = getelementptr %struct.comedi_subdevice, ptr %45, i32 3, i32 2
  %46 = ptrtoint ptr %type40 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %type40, align 4
  %47 = load ptr, ptr %subdevices, align 4
  %type43 = getelementptr %struct.comedi_subdevice, ptr %47, i32 4, i32 2
  %48 = ptrtoint ptr %type43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %type43, align 4
  %subdev_flags44 = getelementptr %struct.comedi_subdevice, ptr %47, i32 4, i32 4
  %49 = ptrtoint ptr %subdev_flags44 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 327680, ptr %subdev_flags44, align 4
  %n_chan45 = getelementptr %struct.comedi_subdevice, ptr %47, i32 4, i32 3
  %50 = ptrtoint ptr %n_chan45 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 256, ptr %n_chan45, align 4
  %maxdata46 = getelementptr %struct.comedi_subdevice, ptr %47, i32 4, i32 13
  %51 = ptrtoint ptr %maxdata46 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 65535, ptr %maxdata46, align 4
  %insn_read = getelementptr %struct.comedi_subdevice, ptr %47, i32 4, i32 18
  %52 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @apci3501_eeprom_insn_read, ptr %insn_read, align 4
  tail call fastcc void @apci3501_reset(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then16.cleanup_crit_edge, %apci3501_eeprom_get_ao_n_chan.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call10, %apci3501_eeprom_get_ao_n_chan.exit.cleanup_crit_edge ], [ %call17, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apci3501_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 64
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 0) #5, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %and7 = and i32 %4, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 16777216) #5, !srcloc !44
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %apci3501_wait_for_dac.exit.do.body.i.preheader_crit_edge, %entry
  %chan.01 = phi i32 [ 0, %entry ], [ %inc, %apci3501_wait_for_dac.exit.do.body.i.preheader_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %and.i = and i32 %7, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %10 = and i32 %9, 65536
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.body.i.do.body.i_crit_edge, label %apci3501_wait_for_dac.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

apci3501_wait_for_dac.exit:                       ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %or = or i32 %chan.01, -2147483648
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add18 = add i32 %13, 4
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %14 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #5, !srcloc !44
  %inc = add nuw nsw i32 %chan.01, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %apci3501_wait_for_dac.exit.do.body.i.preheader_crit_edge

apci3501_wait_for_dac.exit.do.body.i.preheader_crit_edge: ; preds = %apci3501_wait_for_dac.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

for.end:                                          ; preds = %apci3501_wait_for_dac.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3501_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %and3 = and i32 %3, 1048575
  %add4 = or i32 %and3, -18874368
  %4 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 0) #5, !srcloc !44
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %and, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %iobase8 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase8, align 4
  %and10 = and i32 %6, 1048575
  %add11 = or i32 %and10, -18874368
  %7 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 16777216) #5, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %cfg.0 = phi i32 [ %and, %do.body ], [ %or, %if.else ]
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp61.not = icmp eq i32 %9, 0
  br i1 %cmp61.not, label %if.end.cleanup39_crit_edge, label %for.body.lr.ph

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup39

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %cmp13 = icmp eq i32 %and2, 1
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %apci3501_wait_for_dac.exit.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %apci3501_wait_for_dac.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.062
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %11)
  %cmp16 = icmp ugt i32 %11, 8191
  %or.cond = select i1 %cmp13, i1 %cmp16, i1 false
  br i1 %or.cond, label %do.end20, label %for.body.do.body.i_crit_edge

for.body.do.body.i_crit_edge:                     ; preds = %for.body
  br label %do.body.i

do.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7) #8
  br label %cleanup39

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body.do.body.i_crit_edge
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %and.i = and i32 %15, 1048575
  %add1.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add1.i to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %18 = and i32 %17, 65536
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body.i.do.body.i_crit_edge, label %apci3501_wait_for_dac.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

apci3501_wait_for_dac.exit:                       ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %shl30 = shl i32 %11, 8
  %or31 = or i32 %shl30, %cfg.0
  %19 = tail call i32 @llvm.bswap.i32(i32 %or31)
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  %add33 = add i32 %21, 4
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %22 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #5, !srcloc !44
  %23 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %readback, align 4
  %arrayidx37 = getelementptr i32, ptr %24, i32 %and
  %25 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %11, ptr %arrayidx37, align 4
  %inc = add nuw i32 %i.062, 1
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %apci3501_wait_for_dac.exit.for.body_crit_edge, label %apci3501_wait_for_dac.exit.cleanup39_crit_edge

apci3501_wait_for_dac.exit.cleanup39_crit_edge:   ; preds = %apci3501_wait_for_dac.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup39

apci3501_wait_for_dac.exit.for.body_crit_edge:    ; preds = %apci3501_wait_for_dac.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup39:                                        ; preds = %apci3501_wait_for_dac.exit.cleanup39_crit_edge, %do.end20, %if.end.cleanup39_crit_edge
  %retval.2 = phi i32 [ -22, %do.end20 ], [ 0, %if.end.cleanup39_crit_edge ], [ %27, %apci3501_wait_for_dac.exit.cleanup39_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3501_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 80
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #5, !srcloc !46
  %4 = lshr i32 %3, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3501_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 64
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #5, !srcloc !46
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %state, align 4
  %call3 = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add6 = add i32 %10, 64
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %11 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %11, i32 %8) #5, !srcloc !44
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
define internal i32 @apci3501_eeprom_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %.tr = trunc i32 %3 to i16
  %conv2 = shl i16 %.tr, 1
  %call = tail call fastcc zeroext i16 @apci3501_eeprom_readw(i32 noundef %7, i16 noundef zeroext %conv2)
  %conv3 = zext i16 %call to i32
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12.not = icmp eq i32 %9, 0
  br i1 %cmp12.not, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.013
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv3, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.013, 1
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @apci3501_eeprom_readw(i32 noundef %iobase, i16 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i16 %addr, 256
  %add4 = add i32 %iobase, 63
  %and = and i32 %add4, 1048575
  %add5 = or i32 %and, -18874368
  %0 = inttoptr i32 %add5 to ptr
  %conv9 = zext i16 %add to i32
  %add14 = add i32 %iobase, 62
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %1 = inttoptr i32 %add16 to ptr
  br label %do.body

do.body:                                          ; preds = %apci3501_eeprom_wait.exit109.do.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %apci3501_eeprom_wait.exit109.do.body_crit_edge ]
  %val.0111 = phi i16 [ 0, %entry ], [ %val.1, %apci3501_eeprom_wait.exit109.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -128) #5, !srcloc !56
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %tobool.not.i = icmp sgt i8 %2, -1
  br i1 %tobool.not.i, label %apci3501_eeprom_wait.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

apci3501_eeprom_wait.exit:                        ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %add11 = add nuw nsw i32 %indvars.iv, %conv9
  %conv13 = trunc i32 %add11 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %conv13) #5, !srcloc !56
  br label %do.body.i84

do.body.i84:                                      ; preds = %do.body.i84.do.body.i84_crit_edge, %apci3501_eeprom_wait.exit
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %tobool.not.i83 = icmp sgt i8 %3, -1
  br i1 %tobool.not.i83, label %apci3501_eeprom_wait.exit85, label %do.body.i84.do.body.i84_crit_edge

do.body.i84.do.body.i84_crit_edge:                ; preds = %do.body.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i84

apci3501_eeprom_wait.exit85:                      ; preds = %do.body.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -96) #5, !srcloc !56
  br label %do.body.i90

do.body.i90:                                      ; preds = %do.body.i90.do.body.i90_crit_edge, %apci3501_eeprom_wait.exit85
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %tobool.not.i89 = icmp sgt i8 %4, -1
  br i1 %tobool.not.i89, label %apci3501_eeprom_wait.exit91, label %do.body.i90.do.body.i90_crit_edge

do.body.i90.do.body.i90_crit_edge:                ; preds = %do.body.i90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i90

apci3501_eeprom_wait.exit91:                      ; preds = %do.body.i90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %5 = lshr i32 %add11, 8
  %conv32 = trunc i32 %5 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %conv32) #5, !srcloc !56
  br label %do.body.i96

do.body.i96:                                      ; preds = %do.body.i96.do.body.i96_crit_edge, %apci3501_eeprom_wait.exit91
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %tobool.not.i95 = icmp sgt i8 %6, -1
  br i1 %tobool.not.i95, label %apci3501_eeprom_wait.exit97, label %do.body.i96.do.body.i96_crit_edge

do.body.i96.do.body.i96_crit_edge:                ; preds = %do.body.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i96

apci3501_eeprom_wait.exit97:                      ; preds = %do.body.i96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -32) #5, !srcloc !56
  br label %do.body.i102

do.body.i102:                                     ; preds = %do.body.i102.do.body.i102_crit_edge, %apci3501_eeprom_wait.exit97
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %tobool.not.i101 = icmp sgt i8 %7, -1
  br i1 %tobool.not.i101, label %apci3501_eeprom_wait.exit103, label %do.body.i102.do.body.i102_crit_edge

do.body.i102.do.body.i102_crit_edge:              ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i102

apci3501_eeprom_wait.exit103:                     ; preds = %do.body.i102
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  br label %do.body.i108

do.body.i108:                                     ; preds = %do.body.i108.do.body.i108_crit_edge, %apci3501_eeprom_wait.exit103
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %tobool.not.i107 = icmp sgt i8 %9, -1
  br i1 %tobool.not.i107, label %apci3501_eeprom_wait.exit109, label %do.body.i108.do.body.i108_crit_edge

do.body.i108.do.body.i108_crit_edge:              ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i108

apci3501_eeprom_wait.exit109:                     ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.iv)
  %cmp51 = icmp eq i32 %indvars.iv, 0
  %conv53 = zext i8 %8 to i16
  %shl = shl nuw i16 %conv53, 8
  %val.1.v = select i1 %cmp51, i16 %conv53, i16 %shl
  %val.1 = or i16 %val.1.v, %val.0111
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 2
  br i1 %exitcond.not, label %for.end, label %apci3501_eeprom_wait.exit109.do.body_crit_edge

apci3501_eeprom_wait.exit109.do.body_crit_edge:   ; preds = %apci3501_eeprom_wait.exit109
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.end:                                          ; preds = %apci3501_eeprom_wait.exit109
  call void @__sanitizer_cov_trace_pc() #7
  ret i16 %val.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apci3501_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @apci3501_driver, i32 noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_addi_apci_3501__236_413_apci3501_driver_init6, !1, !"__initcall__kmod_addi_apci_3501__236_413_apci3501_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 413, i32 1}
!2 = !{ptr @__exitcall_apci3501_driver_exit, !1, !"__exitcall_apci3501_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 415, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 416, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 417, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 389, i32 17}
!12 = !{ptr @apci3501_driver, !13, !"apci3501_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 388, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 292, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @apci3501_reset._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @apci3501_reset._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @apci3501_ao_range, !23, !"apci3501_ao_range", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 88, i32 35}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 136, i32 5}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @apci3501_ao_insn_write._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @apci3501_ao_insn_write._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @apci3501_pci_driver, !31, !"apci3501_pci_driver", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 407, i32 26}
!32 = !{ptr @apci3501_pci_table, !33, !"apci3501_pci_table", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/addi_apci_3501.c", i32 401, i32 35}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2154546014}
!44 = !{i64 4990000}
!45 = !{i64 2154546602}
!46 = !{i64 4990418}
!47 = !{i64 2154537565}
!48 = !{i64 2154549004}
!49 = !{i64 2154537987}
!50 = !{i64 2154538655}
!51 = !{i64 2154540952}
!52 = !{i64 2154541895}
!53 = !{i64 2154542582}
!54 = !{i64 2154542847}
!55 = !{i64 2154543681}
!56 = !{i64 4989803}
!57 = !{i64 4990198}
!58 = !{i64 2154543408}
!59 = !{i64 2154544073}
!60 = !{i64 2154544469}
!61 = !{i64 2154544868}
!62 = !{i64 2154545264}
!63 = !{i64 2154545722}
