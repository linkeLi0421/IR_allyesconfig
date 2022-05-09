; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/adv_pci1760.c_pt.bc'
source_filename = "../drivers/comedi/drivers/adv_pci1760.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_adv_pci1760__236_419_pci1760_driver_init6 = internal global ptr @pci1760_driver_init, section ".initcall6.init", align 4
@pci1760_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @pci1760_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pci1760_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pci1760_pci_table, ptr @pci1760_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pci1760_driver_exit = internal global ptr @pci1760_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [49 x i8] c"adv_pci1760.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [61 x i8] c"adv_pci1760.description=Comedi driver for Advantech PCI-1760\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [52 x i8] c"adv_pci1760.file=drivers/comedi/drivers/adv_pci1760\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"adv_pci1760.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adv_pci1760\00", [20 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pci1760_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5118, i32 5984, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 29, i64 30, i64 31, i64 32, i64 5002]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 65536, i64 131072]
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"pci1760_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 394, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"pci1760_pci_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 413, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 395, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"pci1760_pci_table\00", align 1
@___asan_gen_.13 = private constant [40 x i8] c"../drivers/comedi/drivers/adv_pci1760.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 407, i32 35 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_pci1760_driver_exit, ptr @__initcall__kmod_adv_pci1760__236_419_pci1760_driver_init6, ptr @pci1760_driver_exit, ptr @pci1760_driver, ptr @pci1760_pci_driver, ptr @.str, ptr @pci1760_pci_table], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1760_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1760_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci1760_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1760_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @pci1760_driver, ptr noundef nonnull @pci1760_pci_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci1760_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @pci1760_driver, ptr noundef nonnull @pci1760_pci_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1760_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #3
  %call1 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %resource = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 47
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resource, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %iobase, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add.i = add i32 %4, 56
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add6.i = add i32 %7, 57
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %8 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add14.i = add i32 %10, 59
  %and15.i = and i32 %add14.i, 1048575
  %add16.i = or i32 %and15.i, -18874368
  %11 = inttoptr i32 %add16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #3, !srcloc !28
  %call18.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 40, i16 noundef zeroext 0) #3
  %call19.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 42, i16 noundef zeroext 0) #3
  %call20.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 43, i16 noundef zeroext 0) #3
  %call22.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 72, i16 noundef zeroext -32768) #3
  %call25.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 64, i16 noundef zeroext 0) #3
  %call22.1.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 73, i16 noundef zeroext -32768) #3
  %call25.1.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 65, i16 noundef zeroext 0) #3
  %call22.2.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 74, i16 noundef zeroext -32768) #3
  %call25.2.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 66, i16 noundef zeroext 0) #3
  %call22.3.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 75, i16 noundef zeroext -32768) #3
  %call25.3.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 67, i16 noundef zeroext 0) #3
  %call22.4.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 76, i16 noundef zeroext -32768) #3
  %call25.4.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 68, i16 noundef zeroext 0) #3
  %call22.5.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 77, i16 noundef zeroext -32768) #3
  %call25.5.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 69, i16 noundef zeroext 0) #3
  %call22.6.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 78, i16 noundef zeroext -32768) #3
  %call25.6.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 70, i16 noundef zeroext 0) #3
  %call22.7.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 79, i16 noundef zeroext -32768) #3
  %call25.7.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 71, i16 noundef zeroext 0) #3
  %call26.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 41, i16 noundef zeroext 255) #3
  %call27.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 44, i16 noundef zeroext 0) #3
  %call28.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 32, i16 noundef zeroext 0) #3
  %call29.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 33, i16 noundef zeroext 0) #3
  %call30.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 34, i16 noundef zeroext 0) #3
  %call2 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %12 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 4
  %15 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65536, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 13
  %17 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 15
  %18 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %13, i32 0, i32 20
  %19 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pci1760_di_insn_bits, ptr %insn_bits, align 4
  %20 = load ptr, ptr %subdevices, align 4
  %type9 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 2
  %21 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %type9, align 4
  %subdev_flags10 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 4
  %22 = ptrtoint ptr %subdev_flags10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 131072, ptr %subdev_flags10, align 4
  %n_chan11 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 3
  %23 = ptrtoint ptr %n_chan11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8, ptr %n_chan11, align 4
  %maxdata12 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 13
  %24 = ptrtoint ptr %maxdata12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %maxdata12, align 4
  %range_table13 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 15
  %25 = ptrtoint ptr %range_table13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @range_unipolar5, ptr %range_table13, align 4
  %insn_bits14 = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 20
  %26 = ptrtoint ptr %insn_bits14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pci1760_do_insn_bits, ptr %insn_bits14, align 4
  %call15 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 2, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end17

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %state = getelementptr %struct.comedi_subdevice, ptr %20, i32 1, i32 29
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call15, ptr %state, align 4
  %28 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %subdevices, align 4
  %type20 = getelementptr %struct.comedi_subdevice, ptr %29, i32 2, i32 2
  %30 = ptrtoint ptr %type20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 12, ptr %type20, align 4
  %subdev_flags21 = getelementptr %struct.comedi_subdevice, ptr %29, i32 2, i32 4
  %31 = ptrtoint ptr %subdev_flags21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 128, ptr %subdev_flags21, align 4
  %n_chan22 = getelementptr %struct.comedi_subdevice, ptr %29, i32 2, i32 3
  %32 = ptrtoint ptr %n_chan22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %n_chan22, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %29, i32 2, i32 21
  %33 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @pci1760_pwm_insn_config, ptr %insn_config, align 4
  %34 = load ptr, ptr %subdevices, align 4
  %type25 = getelementptr %struct.comedi_subdevice, ptr %34, i32 3, i32 2
  %35 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %type25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call15, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1760_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 31
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %conv = zext i8 %3 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1760_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i16
  %call1 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %state5 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %2 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state5, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %5 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end4 ], [ %call1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci1760_cmd(ptr nocapture noundef readonly %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 30
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %cmd)
  %cmp = icmp eq i8 %3, %cmd
  br i1 %cmp, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then:                                          ; preds = %entry
  %call5 = tail call fastcc i32 @pci1760_send_cmd(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then8:                                         ; preds = %if.then
  %call9 = tail call fastcc i32 @pci1760_send_cmd(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %call17 = tail call fastcc i32 @pci1760_send_cmd(ptr noundef %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17)
  %cmp18 = icmp sgt i32 %call17, -1
  br i1 %cmp18, label %if.end14.cleanup_crit_edge, label %for.cond

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond:                                         ; preds = %if.end14
  %call17.1 = tail call fastcc i32 @pci1760_send_cmd(ptr noundef %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17.1)
  %cmp18.1 = icmp sgt i32 %call17.1, -1
  br i1 %cmp18.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  %call17.2 = tail call fastcc i32 @pci1760_send_cmd(ptr noundef %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call17.2)
  %cmp18.2 = icmp sgt i32 %call17.2, -1
  %spec.select = select i1 %cmp18.2, i32 %call17.2, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.cond.1, %for.cond.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then8.cleanup_crit_edge ], [ %call17, %if.end14.cleanup_crit_edge ], [ %call17.1, %for.cond.cleanup_crit_edge ], [ %spec.select, %for.cond.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1760_pwm_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 31, label %sw.bb
    i32 32, label %sw.bb17
    i32 29, label %sw.bb23
    i32 30, label %sw.bb73
    i32 5002, label %sw.bb93
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %pci1760_pwm_enable.exit

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

pci1760_pwm_enable.exit:                          ; preds = %sw.bb
  %shl.i = shl nuw i32 1, %and
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %call.i, %neg.i
  %conv.i = trunc i32 %and.i to i16
  %call4.i = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 31, i16 noundef zeroext %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp = icmp slt i32 %call4.i, 0
  br i1 %cmp, label %pci1760_pwm_enable.exit.cleanup_crit_edge, label %if.end

pci1760_pwm_enable.exit.cleanup_crit_edge:        ; preds = %pci1760_pwm_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %pci1760_pwm_enable.exit
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %6)
  %cmp2 = icmp ugt i32 %6, 65535
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = trunc i32 %1 to i8
  %conv = add i8 %7, 20
  %conv6 = trunc i32 %6 to i16
  %call7 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext %conv, i16 noundef zeroext %conv6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call.i163 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %cmp.i164 = icmp slt i32 %call.i163, 0
  br i1 %cmp.i164, label %if.end11.cleanup_crit_edge, label %pci1760_pwm_enable.exit173

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

pci1760_pwm_enable.exit173:                       ; preds = %if.end11
  %or.i166 = or i32 %call.i163, %shl.i
  %conv.i169 = trunc i32 %or.i166 to i16
  %call4.i170 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 31, i16 noundef zeroext %conv.i169) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i170)
  %cmp13 = icmp slt i32 %call4.i170, 0
  br i1 %cmp13, label %pci1760_pwm_enable.exit173.cleanup_crit_edge, label %pci1760_pwm_enable.exit173.sw.epilog_crit_edge

pci1760_pwm_enable.exit173.sw.epilog_crit_edge:   ; preds = %pci1760_pwm_enable.exit173
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

pci1760_pwm_enable.exit173.cleanup_crit_edge:     ; preds = %pci1760_pwm_enable.exit173
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %call.i174 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %cmp.i175 = icmp slt i32 %call.i174, 0
  br i1 %cmp.i175, label %sw.bb17.cleanup_crit_edge, label %pci1760_pwm_enable.exit184

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

pci1760_pwm_enable.exit184:                       ; preds = %sw.bb17
  %shl.i176 = shl nuw i32 1, %and
  %neg.i178 = xor i32 %shl.i176, -1
  %and.i179 = and i32 %call.i174, %neg.i178
  %conv.i180 = trunc i32 %and.i179 to i16
  %call4.i181 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 31, i16 noundef zeroext %conv.i180) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i181)
  %cmp19 = icmp slt i32 %call4.i181, 0
  br i1 %cmp19, label %pci1760_pwm_enable.exit184.cleanup_crit_edge, label %pci1760_pwm_enable.exit184.sw.epilog_crit_edge

pci1760_pwm_enable.exit184.sw.epilog_crit_edge:   ; preds = %pci1760_pwm_enable.exit184
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

pci1760_pwm_enable.exit184.cleanup_crit_edge:     ; preds = %pci1760_pwm_enable.exit184
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %call.i185 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 31) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp.i186 = icmp slt i32 %call.i185, 0
  br i1 %cmp.i186, label %sw.bb23.cleanup_crit_edge, label %pci1760_pwm_enable.exit195

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

pci1760_pwm_enable.exit195:                       ; preds = %sw.bb23
  %shl.i187 = shl nuw i32 1, %and
  %neg.i189 = xor i32 %shl.i187, -1
  %and.i190 = and i32 %call.i185, %neg.i189
  %conv.i191 = trunc i32 %and.i190 to i16
  %call4.i192 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 31, i16 noundef zeroext %conv.i191) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i192)
  %cmp25 = icmp slt i32 %call4.i192, 0
  br i1 %cmp25, label %pci1760_pwm_enable.exit195.cleanup_crit_edge, label %if.end28

pci1760_pwm_enable.exit195.cleanup_crit_edge:     ; preds = %pci1760_pwm_enable.exit195
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end28:                                         ; preds = %pci1760_pwm_enable.exit195
  %arrayidx29 = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx29, align 4
  %arrayidx30 = getelementptr i32, ptr %data, i32 2
  %10 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx30, align 4
  %12 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %9, label %if.end28.pci1760_pwm_ns_to_div.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 131072, label %sw.bb2.i
    i32 65536, label %if.end28.sw.epilog.i_crit_edge
  ]

if.end28.sw.epilog.i_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

if.end28.pci1760_pwm_ns_to_div.exit_crit_edge:    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %pci1760_pwm_ns_to_div.exit

sw.bb.i:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %add.i = add i32 %11, 50000
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i = add i32 %11, 99999
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i, %if.end28.sw.epilog.i_crit_edge
  %divisor.0.in.i = phi i32 [ %sub.i, %sw.bb2.i ], [ %add.i, %sw.bb.i ], [ %11, %if.end28.sw.epilog.i_crit_edge ]
  %divisor.0.i = udiv i32 %divisor.0.in.i, 100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %divisor.0.in.i)
  %13 = icmp ult i32 %divisor.0.in.i, 100000
  %spec.store.select.i = select i1 %13, i32 1, i32 %divisor.0.i
  br label %pci1760_pwm_ns_to_div.exit

pci1760_pwm_ns_to_div.exit:                       ; preds = %sw.epilog.i, %if.end28.pci1760_pwm_ns_to_div.exit_crit_edge
  %retval.0.i196 = phi i32 [ %spec.store.select.i, %sw.epilog.i ], [ -22, %if.end28.pci1760_pwm_ns_to_div.exit_crit_edge ]
  %arrayidx32 = getelementptr i32, ptr %data, i32 3
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr i32, ptr %data, i32 4
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx33, align 4
  %18 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %15, label %pci1760_pwm_ns_to_div.exit.cleanup_crit_edge [
    i32 0, label %sw.bb.i198
    i32 131072, label %sw.bb2.i200
    i32 65536, label %pci1760_pwm_ns_to_div.exit.pci1760_pwm_ns_to_div.exit206_crit_edge
  ]

pci1760_pwm_ns_to_div.exit.pci1760_pwm_ns_to_div.exit206_crit_edge: ; preds = %pci1760_pwm_ns_to_div.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %pci1760_pwm_ns_to_div.exit206

pci1760_pwm_ns_to_div.exit.cleanup_crit_edge:     ; preds = %pci1760_pwm_ns_to_div.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb.i198:                                       ; preds = %pci1760_pwm_ns_to_div.exit
  call void @__sanitizer_cov_trace_pc() #5
  %add.i197 = add i32 %17, 50000
  br label %pci1760_pwm_ns_to_div.exit206

sw.bb2.i200:                                      ; preds = %pci1760_pwm_ns_to_div.exit
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i199 = add i32 %17, 99999
  br label %pci1760_pwm_ns_to_div.exit206

pci1760_pwm_ns_to_div.exit206:                    ; preds = %sw.bb2.i200, %sw.bb.i198, %pci1760_pwm_ns_to_div.exit.pci1760_pwm_ns_to_div.exit206_crit_edge
  %divisor.0.in.i201 = phi i32 [ %sub.i199, %sw.bb2.i200 ], [ %add.i197, %sw.bb.i198 ], [ %17, %pci1760_pwm_ns_to_div.exit.pci1760_pwm_ns_to_div.exit206_crit_edge ]
  %divisor.0.i202 = udiv i32 %divisor.0.in.i201, 100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %divisor.0.in.i201)
  %19 = icmp ult i32 %divisor.0.in.i201, 100000
  %spec.store.select.i203 = select i1 %19, i32 1, i32 %divisor.0.i202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i196)
  %cmp35 = icmp slt i32 %retval.0.i196, 0
  br i1 %cmp35, label %pci1760_pwm_ns_to_div.exit206.cleanup_crit_edge, label %if.end40

pci1760_pwm_ns_to_div.exit206.cleanup_crit_edge:  ; preds = %pci1760_pwm_ns_to_div.exit206
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end40:                                         ; preds = %pci1760_pwm_ns_to_div.exit206
  %mul = mul nuw i32 %retval.0.i196, 100000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %11)
  %cmp42.not = icmp eq i32 %mul, %11
  %mul45 = mul nuw i32 %spec.store.select.i203, 100000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul45, i32 %17)
  %cmp47.not = icmp eq i32 %mul45, %17
  %or.cond219 = select i1 %cmp42.not, i1 %cmp47.not, i1 false
  br i1 %or.cond219, label %if.end54, label %if.then49

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %arrayidx30, align 4
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul45, ptr %arrayidx33, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.end40
  %and.tr220 = trunc i32 %1 to i8
  %22 = shl i8 %and.tr220, 1
  %conv57 = add i8 %22, 16
  %conv58 = trunc i32 %retval.0.i196 to i16
  %call59 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext %conv57, i16 noundef zeroext %conv58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end54.cleanup_crit_edge, label %if.end63

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end63:                                         ; preds = %if.end54
  %conv66 = add i8 %22, 17
  %conv67 = trunc i32 %spec.store.select.i203 to i16
  %call68 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext %conv66, i16 noundef zeroext %conv67)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end63.cleanup_crit_edge, label %if.end63.sw.epilog_crit_edge

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb73:                                          ; preds = %entry
  %and.tr = trunc i32 %1 to i16
  %23 = shl i16 %and.tr, 1
  %conv76 = add i16 %23, 16
  %call77 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv76)
  %conv80 = add i16 %23, 17
  %call81 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp82 = icmp slt i32 %call77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp85 = icmp slt i32 %call81, 0
  %or.cond162 = select i1 %cmp82, i1 true, i1 %cmp85
  br i1 %or.cond162, label %sw.bb73.cleanup_crit_edge, label %if.end88

sw.bb73.cleanup_crit_edge:                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end88:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #5
  %mul89 = mul i32 %call77, 100000
  %arrayidx90 = getelementptr i32, ptr %data, i32 1
  %24 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul89, ptr %arrayidx90, align 4
  %mul91 = mul i32 %call81, 100000
  br label %sw.epilog.sink.split

sw.bb93:                                          ; preds = %entry
  %call94 = tail call fastcc i32 @pci1760_cmd(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %sw.bb93.cleanup_crit_edge, label %if.end98

sw.bb93.cleanup_crit_edge:                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end98:                                         ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #5
  %25 = lshr i32 %call94, %and
  %26 = and i32 %25, 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end98, %if.end88
  %.sink221 = phi i32 [ 1, %if.end98 ], [ 2, %if.end88 ]
  %.sink = phi i32 [ %26, %if.end98 ], [ %mul91, %if.end88 ]
  %arrayidx100 = getelementptr i32, ptr %data, i32 %.sink221
  %27 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %arrayidx100, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end63.sw.epilog_crit_edge, %pci1760_pwm_enable.exit184.sw.epilog_crit_edge, %pci1760_pwm_enable.exit173.sw.epilog_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %28 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb93.cleanup_crit_edge, %sw.bb73.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.then49, %pci1760_pwm_ns_to_div.exit206.cleanup_crit_edge, %pci1760_pwm_ns_to_div.exit.cleanup_crit_edge, %pci1760_pwm_enable.exit195.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %pci1760_pwm_enable.exit184.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %pci1760_pwm_enable.exit173.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pci1760_pwm_enable.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %sw.epilog ], [ -11, %if.then49 ], [ %call4.i, %pci1760_pwm_enable.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call7, %if.end4.cleanup_crit_edge ], [ %call4.i170, %pci1760_pwm_enable.exit173.cleanup_crit_edge ], [ %call4.i181, %pci1760_pwm_enable.exit184.cleanup_crit_edge ], [ %call4.i192, %pci1760_pwm_enable.exit195.cleanup_crit_edge ], [ -22, %pci1760_pwm_ns_to_div.exit206.cleanup_crit_edge ], [ %call59, %if.end54.cleanup_crit_edge ], [ %call68, %if.end63.cleanup_crit_edge ], [ -110, %sw.bb73.cleanup_crit_edge ], [ %call94, %sw.bb93.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i163, %if.end11.cleanup_crit_edge ], [ %call.i174, %sw.bb17.cleanup_crit_edge ], [ %call.i185, %sw.bb23.cleanup_crit_edge ], [ -22, %pci1760_pwm_ns_to_div.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci1760_send_cmd(ptr nocapture noundef readonly %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %conv1 = trunc i16 %val to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 12
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %2 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv1) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %3 = lshr i16 %val, 8
  %conv9 = trunc i16 %3 to i8
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add11 = add i32 %5, 13
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %6 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv9) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add19 = add i32 %8, 14
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %9 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %cmd) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  tail call void @arm_heavy_mb() #3
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add27 = add i32 %11, 15
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %12 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #3, !srcloc !28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 250
  %spec.select.i.neg82 = select i1 %cmp.i, i32 -1073741822, i32 -1
  %add32.neg = sub i32 %spec.select.i.neg82, %13
  br label %do.body33

do.body33:                                        ; preds = %do.end65.do.body33_crit_edge, %entry
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add35 = add i32 %15, 30
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %16 = inttoptr i32 %add37 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %cmd)
  %cmp = icmp eq i8 %17, %cmd
  br i1 %cmp, label %if.then, label %do.end65

if.then:                                          ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add45 = add i32 %19, 28
  %and46 = and i32 %add45, 1048575
  %add47 = or i32 %and46, -18874368
  %20 = inttoptr i32 %add47 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  %conv51 = zext i8 %21 to i32
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add54 = add i32 %23, 29
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %24 = inttoptr i32 %add56 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #3, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  %conv60 = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv60, 8
  %or = or i32 %shl, %conv51
  br label %cleanup

do.end65:                                         ; preds = %do.body33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add32.neg, %26
  %cmp71 = icmp slt i32 %sub, 0
  br i1 %cmp71, label %do.end65.do.body33_crit_edge, label %do.end65.cleanup_crit_edge

do.end65.cleanup_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end65.do.body33_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body33

cleanup:                                          ; preds = %do.end65.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %or, %if.then ], [ -16, %do.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci1760_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @pci1760_driver, i32 noundef %1) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__initcall__kmod_adv_pci1760__236_419_pci1760_driver_init6, !1, !"__initcall__kmod_adv_pci1760__236_419_pci1760_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/adv_pci1760.c", i32 419, i32 1}
!2 = !{ptr @__exitcall_pci1760_driver_exit, !1, !"__exitcall_pci1760_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/adv_pci1760.c", i32 421, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/adv_pci1760.c", i32 422, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/adv_pci1760.c", i32 423, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/adv_pci1760.c", i32 395, i32 17}
!12 = !{ptr @pci1760_driver, !13, !"pci1760_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/adv_pci1760.c", i32 394, i32 29}
!14 = !{ptr @pci1760_pci_driver, !15, !"pci1760_pci_driver", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/adv_pci1760.c", i32 413, i32 26}
!16 = !{ptr @pci1760_pci_table, !17, !"pci1760_pci_table", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/adv_pci1760.c", i32 407, i32 35}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2154537033}
!28 = !{i64 4991631}
!29 = !{i64 2154537412}
!30 = !{i64 2154537791}
!31 = !{i64 4992026}
!32 = !{i64 2154535907}
!33 = !{i64 2154535555}
!34 = !{i64 2154532275}
!35 = !{i64 2154532670}
!36 = !{i64 2154533051}
!37 = !{i64 2154533430}
!38 = !{i64 2154533903}
!39 = !{i64 2154534235}
!40 = !{i64 2154534567}
!41 = !{i64 2154534842}
!42 = !{i64 2154534684}
