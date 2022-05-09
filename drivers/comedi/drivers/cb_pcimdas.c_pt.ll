; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/cb_pcimdas.c_pt.bc'
source_filename = "../drivers/comedi/drivers/cb_pcimdas.c"
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
%struct.cb_pcimdas_private = type { i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_8254 = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i8], ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_cb_pcimdas__236_470_cb_pcimdas_driver_init6 = internal global ptr @cb_pcimdas_driver_init, section ".initcall6.init", align 4
@cb_pcimdas_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @cb_pcimdas_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cb_pcimdas_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @cb_pcimdas_pci_table, ptr @cb_pcimdas_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cb_pcimdas_driver_exit = internal global ptr @cb_pcimdas_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [48 x i8] c"cb_pcimdas.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [77 x i8] c"cb_pcimdas.description=Comedi driver for PCIM-DAS1602/16 and PCIe-DAS1602/16\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [50 x i8] c"cb_pcimdas.file=drivers/comedi/drivers/cb_pcimdas\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [23 x i8] c"cb_pcimdas.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cb_pcimdas\00", [21 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@cb_pcimdas_ai_uni_range = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@cb_pcimdas_ai_bip_range = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@cb_pcimdas_ao_range = internal constant { { i32, [6 x %struct.comedi_krange] }, [52 x i8] } { { i32, [6 x %struct.comedi_krange] } { i32 6, [6 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 256 }, %struct.comedi_krange { i32 0, i32 1000000, i32 256 }] }, [52 x i8] zeroinitializer }, align 32
@cb_pcimdas_pci_table = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4871, i32 86, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4871, i32 277, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2003, i64 2004]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"cb_pcimdas_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 443, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"cb_pcimdas_pci_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 464, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 444, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant [24 x i8] c"cb_pcimdas_ai_uni_range\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 120, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"cb_pcimdas_ai_bip_range\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 111, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"cb_pcimdas_ao_range\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 133, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"cb_pcimdas_pci_table\00", align 1
@___asan_gen_.24 = private constant [39 x i8] c"../drivers/comedi/drivers/cb_pcimdas.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 457, i32 35 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_cb_pcimdas_driver_exit, ptr @__initcall__kmod_cb_pcimdas__236_470_cb_pcimdas_driver_init6, ptr @cb_pcimdas_driver_exit, ptr @cb_pcimdas_driver, ptr @cb_pcimdas_pci_driver, ptr @.str, ptr @cb_pcimdas_ai_uni_range, ptr @cb_pcimdas_ai_bip_range, ptr @cb_pcimdas_ao_range, ptr @cb_pcimdas_pci_table], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcimdas_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcimdas_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcimdas_ai_uni_range to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcimdas_ai_bip_range to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcimdas_ao_range to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcimdas_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcimdas_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @cb_pcimdas_driver, ptr noundef nonnull @cb_pcimdas_pci_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cb_pcimdas_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @cb_pcimdas_driver, ptr noundef nonnull @cb_pcimdas_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcimdas_auto_attach(ptr noundef %dev, i32 noundef %context_unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #4
  %call1 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 8) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %call1, align 4
  %arrayidx7 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 3
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx7, align 8
  %BADR3 = getelementptr inbounds %struct.cb_pcimdas_private, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %BADR3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %BADR3, align 4
  %arrayidx10 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 4
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx10, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %iobase, align 4
  %9 = load i32, ptr %BADR3, align 4
  %add = add i32 %9, 8
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %BADR3.i = getelementptr inbounds %struct.cb_pcimdas_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %BADR3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %BADR3.i, align 4
  %add.i = add i32 %13, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %16 = and i8 %15, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  %..i = select i1 %tobool.not.i, i32 1000, i32 100
  %call14 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef %..i, i32 noundef 1, i32 noundef 0) #4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call14, ptr %pacer, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end5.cleanup_crit_edge, label %if.end18

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %call19 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %18 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 4
  %21 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65536, ptr %subdev_flags, align 4
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i, align 4
  %BADR3.i135 = getelementptr inbounds %struct.cb_pcimdas_private, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %BADR3.i135 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %BADR3.i135, align 4
  %add.i136 = add i32 %25, 2
  %and.i137 = and i32 %add.i136, 1048575
  %add1.i138 = or i32 %and.i137, -18874368
  %26 = inttoptr i32 %add1.i138 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %28 = and i8 %27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.i.not = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %subdev_flags, align 4
  %. = select i1 %tobool.i.not, i32 4194304, i32 1048576
  %.146 = select i1 %tobool.i.not, i32 8, i32 16
  %or28 = or i32 %30, %.
  store i32 %or28, ptr %subdev_flags, align 4
  %31 = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.146, ptr %31, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 13
  %33 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65535, ptr %maxdata, align 4
  %34 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private.i, align 4
  %BADR3.i140 = getelementptr inbounds %struct.cb_pcimdas_private, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %BADR3.i140 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %BADR3.i140, align 4
  %add.i141 = add i32 %37, 2
  %and.i142 = and i32 %add.i141, 1048575
  %add1.i143 = or i32 %and.i142, -18874368
  %38 = inttoptr i32 %add1.i143 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  %40 = and i8 %39, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.i144.not = icmp eq i8 %40, 0
  %cond = select i1 %tobool.i144.not, ptr @cb_pcimdas_ai_bip_range, ptr @cb_pcimdas_ai_uni_range
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 15
  %41 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cond, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %19, i32 0, i32 18
  %42 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @cb_pcimdas_ai_insn_read, ptr %insn_read, align 4
  %43 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %subdevices, align 4
  %arrayidx33 = getelementptr %struct.comedi_subdevice, ptr %44, i32 1
  %type34 = getelementptr %struct.comedi_subdevice, ptr %44, i32 1, i32 2
  %45 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %type34, align 4
  %subdev_flags35 = getelementptr %struct.comedi_subdevice, ptr %44, i32 1, i32 4
  %46 = ptrtoint ptr %subdev_flags35 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 131072, ptr %subdev_flags35, align 4
  %n_chan36 = getelementptr %struct.comedi_subdevice, ptr %44, i32 1, i32 3
  %47 = ptrtoint ptr %n_chan36 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %n_chan36, align 4
  %maxdata37 = getelementptr %struct.comedi_subdevice, ptr %44, i32 1, i32 13
  %48 = ptrtoint ptr %maxdata37 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4095, ptr %maxdata37, align 4
  %range_table38 = getelementptr %struct.comedi_subdevice, ptr %44, i32 1, i32 15
  %49 = ptrtoint ptr %range_table38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @cb_pcimdas_ao_range, ptr %range_table38, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %44, i32 1, i32 19
  %50 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @cb_pcimdas_ao_insn_write, ptr %insn_write, align 4
  %call39 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %if.end22
  %51 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %subdevices, align 4
  %arrayidx44 = getelementptr %struct.comedi_subdevice, ptr %52, i32 2
  %call45 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx44, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %subdevices, align 4
  %type51 = getelementptr %struct.comedi_subdevice, ptr %54, i32 3, i32 2
  %55 = ptrtoint ptr %type51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %type51, align 4
  %subdev_flags52 = getelementptr %struct.comedi_subdevice, ptr %54, i32 3, i32 4
  %56 = ptrtoint ptr %subdev_flags52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 65536, ptr %subdev_flags52, align 4
  %n_chan53 = getelementptr %struct.comedi_subdevice, ptr %54, i32 3, i32 3
  %57 = ptrtoint ptr %n_chan53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %n_chan53, align 4
  %maxdata54 = getelementptr %struct.comedi_subdevice, ptr %54, i32 3, i32 13
  %58 = ptrtoint ptr %maxdata54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %maxdata54, align 4
  %range_table55 = getelementptr %struct.comedi_subdevice, ptr %54, i32 3, i32 15
  %59 = ptrtoint ptr %range_table55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @range_unipolar5, ptr %range_table55, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %54, i32 3, i32 20
  %60 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @cb_pcimdas_di_insn_bits, ptr %insn_bits, align 4
  %61 = load ptr, ptr %subdevices, align 4
  %type58 = getelementptr %struct.comedi_subdevice, ptr %61, i32 4, i32 2
  %62 = ptrtoint ptr %type58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %type58, align 4
  %subdev_flags59 = getelementptr %struct.comedi_subdevice, ptr %61, i32 4, i32 4
  %63 = ptrtoint ptr %subdev_flags59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 131072, ptr %subdev_flags59, align 4
  %n_chan60 = getelementptr %struct.comedi_subdevice, ptr %61, i32 4, i32 3
  %64 = ptrtoint ptr %n_chan60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %n_chan60, align 4
  %maxdata61 = getelementptr %struct.comedi_subdevice, ptr %61, i32 4, i32 13
  %65 = ptrtoint ptr %maxdata61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %maxdata61, align 4
  %range_table62 = getelementptr %struct.comedi_subdevice, ptr %61, i32 4, i32 15
  %66 = ptrtoint ptr %range_table62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @range_unipolar5, ptr %range_table62, align 4
  %insn_bits63 = getelementptr %struct.comedi_subdevice, ptr %61, i32 4, i32 20
  %67 = ptrtoint ptr %insn_bits63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @cb_pcimdas_do_insn_bits, ptr %insn_bits63, align 4
  %68 = load ptr, ptr %subdevices, align 4
  %arrayidx65 = getelementptr %struct.comedi_subdevice, ptr %68, i32 5
  %69 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_subdevice_init(ptr noundef %arrayidx65, ptr noundef %70) #4
  %71 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pacer, align 4
  %insn_config = getelementptr inbounds %struct.comedi_8254, ptr %72, i32 0, i32 14
  %73 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @cb_pcimdas_counter_insn_config, ptr %insn_config, align 4
  %74 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_set_busy(ptr noundef %74, i32 noundef 1, i1 noundef zeroext true) #4
  %75 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_set_busy(ptr noundef %76, i32 noundef 2, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end42.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call39, %if.end22.cleanup_crit_edge ], [ %call45, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcimdas_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %3, 16
  %BADR3 = getelementptr inbounds %struct.cb_pcimdas_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %BADR3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %BADR3, align 4
  %add = add i32 %5, 5
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %6 = inttoptr i32 %add4 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  %8 = and i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %entry.do.body15_crit_edge, label %if.then

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and8 = and i8 %7, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %BADR3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %BADR3, align 4
  %add11 = add i32 %10, 5
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %11 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %and8) #4, !srcloc !39
  br label %do.body15

do.body15:                                        ; preds = %if.then, %entry.do.body15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %BADR3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %BADR3, align 4
  %add19 = add i32 %13, 6
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %14 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %conv26 = trunc i32 %shr to i8
  %15 = ptrtoint ptr %BADR3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %BADR3, align 4
  %add28 = add i32 %16, 7
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %17 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv26) #4, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %and = shl i32 %3, 4
  %or35 = or i32 %and, %3
  %conv36 = trunc i32 %or35 to i8
  %18 = ptrtoint ptr %BADR3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %BADR3, align 4
  %and39 = and i32 %19, 1048575
  %add40 = or i32 %and39, -18874368
  %20 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv36) #4, !srcloc !39
  %n42 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %21 = ptrtoint ptr %n42 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4387.not = icmp eq i32 %22, 0
  br i1 %cmp4387.not, label %do.body15.cleanup_crit_edge, label %do.body15.do.body45_crit_edge

do.body15.do.body45_crit_edge:                    ; preds = %do.body15
  br label %do.body45

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body45:                                        ; preds = %if.end54.do.body45_crit_edge, %do.body15.do.body45_crit_edge
  %n.088 = phi i32 [ %inc, %if.end54.do.body45_crit_edge ], [ 0, %do.body15.do.body45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %and49 = and i32 %24, 1048575
  %add50 = or i32 %and49, -18874368
  %25 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %25, i16 0) #4, !srcloc !44
  %call52 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @cb_pcimdas_ai_eoc, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool.not = icmp eq i32 %call52, 0
  br i1 %tobool.not, label %if.end54, label %do.body45.cleanup_crit_edge

do.body45.cleanup_crit_edge:                      ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end54:                                         ; preds = %do.body45
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  %and58 = and i32 %27, 1048575
  %add59 = or i32 %and58, -18874368
  %28 = inttoptr i32 %add59 to ptr
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #4, !srcloc !45
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %conv63 = zext i16 %30 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %n.088
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv63, ptr %arrayidx, align 4
  %inc = add nuw i32 %n.088, 1
  %32 = ptrtoint ptr %n42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n42, align 4
  %cmp43 = icmp ult i32 %inc, %33
  br i1 %cmp43, label %if.end54.do.body45_crit_edge, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end54.do.body45_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body45

cleanup:                                          ; preds = %if.end54.cleanup_crit_edge, %do.body45.cleanup_crit_edge, %do.body15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body15.cleanup_crit_edge ], [ %inc, %if.end54.cleanup_crit_edge ], [ %call52, %do.body45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcimdas_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %4 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16.not = icmp eq i32 %9, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl nuw nsw i32 %and, 1
  %add = add nuw nsw i32 %mul, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.017
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %11 to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %add2 = add i32 %add, %14
  %and3 = and i32 %add2, 1048575
  %add4 = or i32 %and3, -18874368
  %15 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %12) #4, !srcloc !44
  %inc = add nuw i32 %i.017, 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %7, %entry.for.end_crit_edge ], [ %11, %for.body.for.end_crit_edge ]
  %18 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %readback, align 4
  %arrayidx6 = getelementptr i32, ptr %19, i32 %and
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %val.0.lcssa, ptr %arrayidx6, align 4
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcimdas_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %BADR3 = getelementptr inbounds %struct.cb_pcimdas_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %BADR3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %BADR3, align 4
  %add = add i32 %3, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  %6 = and i8 %5, 15
  %and3 = zext i8 %6 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcimdas_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %conv = trunc i32 %3 to i8
  %BADR3 = getelementptr inbounds %struct.cb_pcimdas_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %BADR3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %BADR3, align 4
  %add = add i32 %5, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #4, !srcloc !39
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %7 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state3, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_subdevice_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcimdas_counter_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2003, label %sw.bb
    i32 2004, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.do.body_crit_edge
    i32 1, label %sw.bb3
  ]

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %sw.bb3, %sw.bb.do.body_crit_edge
  %ctrl.0 = phi i8 [ 0, %sw.bb3 ], [ 1, %sw.bb.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %BADR3 = getelementptr inbounds %struct.cb_pcimdas_private, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %BADR3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %BADR3, align 4
  %add = add i32 %9, 12
  %and = and i32 %add, 1048575
  %add4 = or i32 %and, -18874368
  %10 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %ctrl.0) #4, !srcloc !39
  br label %sw.epilog19

sw.bb5:                                           ; preds = %entry
  %BADR36 = getelementptr inbounds %struct.cb_pcimdas_private, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %BADR36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %BADR36, align 4
  %add7 = add i32 %12, 12
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %13 = inttoptr i32 %add9 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %arrayidx16 = getelementptr i32, ptr %data, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx16, align 4
  %arrayidx15 = getelementptr i32, ptr %data, i32 2
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10000, ptr %arrayidx15, align 4
  br label %sw.epilog19

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr i32, ptr %data, i32 2
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx17, align 4
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %if.else, %if.then, %do.body
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog19, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %sw.epilog19 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_set_busy(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcimdas_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %BADR3 = getelementptr inbounds %struct.cb_pcimdas_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %BADR3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %BADR3, align 4
  %add = add i32 %3, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp sgt i8 %5, -1
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcimdas_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @cb_pcimdas_driver, i32 noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_cb_pcimdas__236_470_cb_pcimdas_driver_init6, !1, !"__initcall__kmod_cb_pcimdas__236_470_cb_pcimdas_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 470, i32 1}
!2 = !{ptr @__exitcall_cb_pcimdas_driver_exit, !1, !"__exitcall_cb_pcimdas_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 472, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 473, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 474, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 444, i32 17}
!12 = !{ptr @cb_pcimdas_driver, !13, !"cb_pcimdas_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 443, i32 29}
!14 = !{ptr @cb_pcimdas_ai_uni_range, !15, !"cb_pcimdas_ai_uni_range", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 120, i32 35}
!16 = !{ptr @cb_pcimdas_ai_bip_range, !17, !"cb_pcimdas_ai_bip_range", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 111, i32 35}
!18 = !{ptr @cb_pcimdas_ao_range, !19, !"cb_pcimdas_ao_range", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 133, i32 35}
!20 = !{ptr @cb_pcimdas_pci_driver, !21, !"cb_pcimdas_pci_driver", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 464, i32 26}
!22 = !{ptr @cb_pcimdas_pci_table, !23, !"cb_pcimdas_pci_table", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/cb_pcimdas.c", i32 457, i32 35}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 4626978}
!34 = !{i64 2154548245}
!35 = !{i64 2154548644}
!36 = !{i64 2154549034}
!37 = !{i64 2154542991}
!38 = !{i64 2154543302}
!39 = !{i64 4626583}
!40 = !{i64 2154543765}
!41 = !{i64 2154544124}
!42 = !{i64 2154544539}
!43 = !{i64 2154544930}
!44 = !{i64 4626160}
!45 = !{i64 4626360}
!46 = !{i64 2154545850}
!47 = !{i64 2154546181}
!48 = !{i64 2154546733}
!49 = !{i64 2154546965}
!50 = !{i64 2154547408}
!51 = !{i64 2154547846}
!52 = !{i64 2154542532}
