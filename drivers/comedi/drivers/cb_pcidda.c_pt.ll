; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/cb_pcidda.c_pt.bc'
source_filename = "../drivers/comedi/drivers/cb_pcidda.c"
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
%struct.cb_pcidda_board = type { ptr, i32, i32 }
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
%struct.cb_pcidda_private = type { i32, i32, [8 x i32], [128 x i16] }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_cb_pcidda__236_415_cb_pcidda_driver_init6 = internal global ptr @cb_pcidda_driver_init, section ".initcall6.init", align 4
@cb_pcidda_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @comedi_pci_detach, ptr @cb_pcidda_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cb_pcidda_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @cb_pcidda_pci_table, ptr @cb_pcidda_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cb_pcidda_driver_exit = internal global ptr @cb_pcidda_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [47 x i8] c"cb_pcidda.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [46 x i8] c"cb_pcidda.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [48 x i8] c"cb_pcidda.file=drivers/comedi/drivers/cb_pcidda\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [22 x i8] c"cb_pcidda.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cb_pcidda\00", [22 x i8] zeroinitializer }, align 32
@cb_pcidda_boards = internal constant { [6 x %struct.cb_pcidda_board], [56 x i8] } { [6 x %struct.cb_pcidda_board] [%struct.cb_pcidda_board { ptr @.str.1, i32 2, i32 12 }, %struct.cb_pcidda_board { ptr @.str.2, i32 4, i32 12 }, %struct.cb_pcidda_board { ptr @.str.3, i32 8, i32 12 }, %struct.cb_pcidda_board { ptr @.str.4, i32 2, i32 16 }, %struct.cb_pcidda_board { ptr @.str.5, i32 4, i32 16 }, %struct.cb_pcidda_board { ptr @.str.6, i32 8, i32 16 }], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci-dda02/12\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci-dda04/12\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci-dda08/12\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci-dda02/16\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci-dda04/16\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci-dda08/16\00", [19 x i8] zeroinitializer }, align 32
@cb_pcidda_ranges = internal constant { { i32, [6 x %struct.comedi_krange] }, [52 x i8] } { { i32, [6 x %struct.comedi_krange] } { i32 6, [6 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }] }, [52 x i8] zeroinitializer }, align 32
@cb_pcidda_pci_table = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 4871, i32 32, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4871, i32 33, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4871, i32 34, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4871, i32 35, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4871, i32 36, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4871, i32 37, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 4]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"cb_pcidda_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 384, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"cb_pcidda_pci_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 409, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 385, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"cb_pcidda_boards\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 108, i32 37 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 110, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 115, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 120, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 125, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 130, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 135, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"cb_pcidda_ranges\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 82, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"cb_pcidda_pci_table\00", align 1
@___asan_gen_.42 = private constant [38 x i8] c"../drivers/comedi/drivers/cb_pcidda.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 398, i32 35 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_cb_pcidda_driver_exit, ptr @__initcall__kmod_cb_pcidda__236_415_cb_pcidda_driver_init6, ptr @cb_pcidda_driver_exit, ptr @cb_pcidda_driver, ptr @cb_pcidda_pci_driver, ptr @.str, ptr @cb_pcidda_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cb_pcidda_ranges, ptr @cb_pcidda_pci_table], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidda_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidda_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidda_boards to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidda_ranges to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb_pcidda_pci_table to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidda_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @cb_pcidda_driver, ptr noundef nonnull @cb_pcidda_pci_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cb_pcidda_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @cb_pcidda_driver, ptr noundef nonnull @cb_pcidda_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidda_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %context)
  %cmp = icmp ugt i32 %context, 5
  %arrayidx = getelementptr [6 x %struct.cb_pcidda_board], ptr @cb_pcidda_boards, i32 0, i32 %context
  %tobool.not95 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not95
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 296) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iobase, align 4
  %arrayidx13 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 3
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx13, align 8
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call3, align 4
  %call15 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 4
  %13 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 131072, ptr %subdev_flags, align 4
  %ao_chans = getelementptr [6 x %struct.cb_pcidda_board], ptr @cb_pcidda_boards, i32 0, i32 %context, i32 1
  %14 = ptrtoint ptr %ao_chans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ao_chans, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %n_chan, align 4
  %ao_bits = getelementptr [6 x %struct.cb_pcidda_board], ptr @cb_pcidda_boards, i32 0, i32 %context, i32 2
  %17 = ptrtoint ptr %ao_bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ao_bits, align 4
  %notmask = shl nsw i32 -1, %18
  %sub = xor i32 %notmask, -1
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 13
  %19 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 15
  %20 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cb_pcidda_ranges, ptr %range_table, align 4
  %insn_write = getelementptr inbounds %struct.comedi_subdevice, ptr %11, i32 0, i32 19
  %21 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cb_pcidda_ao_insn_write, ptr %insn_write, align 4
  %22 = load ptr, ptr %subdevices, align 4
  %arrayidx22 = getelementptr %struct.comedi_subdevice, ptr %22, i32 1
  %call23 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx22, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.cond.1, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond27.preheader:                             ; preds = %for.cond.1
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  br label %for.body29

for.cond.1:                                       ; preds = %if.end18
  %23 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subdevices, align 4
  %arrayidx22.1 = getelementptr %struct.comedi_subdevice, ptr %24, i32 2
  %call23.1 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx22.1, ptr noundef null, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.1)
  %tobool24.not.1 = icmp eq i32 %call23.1, 0
  br i1 %tobool24.not.1, label %for.cond27.preheader, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body39.lr.ph:                                 ; preds = %cb_pcidda_read_eeprom.exit
  %25 = ptrtoint ptr %ao_chans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ao_chans, align 4
  %smax = call i32 @llvm.smax.i32(i32 %26, i32 1)
  br label %for.body39

for.body29:                                       ; preds = %cb_pcidda_read_eeprom.exit.for.body29_crit_edge, %for.cond27.preheader
  %i.197 = phi i32 [ 0, %for.cond27.preheader ], [ %inc33, %cb_pcidda_read_eeprom.exit.for.body29_crit_edge ]
  %27 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add.i = add i32 %30, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %31 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %31, i16 32512) #4, !srcloc !44
  %32 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private.i, align 4
  %dac_cal1_bits.i.i = getelementptr inbounds %struct.cb_pcidda_private, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dac_cal1_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dac_cal1_bits.i.i, align 4
  %storemerge.i.i = or i32 %35, 1
  store i32 %storemerge.i.i, ptr %dac_cal1_bits.i.i, align 4
  %conv.i.i = trunc i32 %storemerge.i.i to i16
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %33, align 4
  %add.i13.i = add i32 %37, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #4
  %and.i.i.i = and i32 %add.i13.i, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %39 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %39, i16 %38) #4, !srcloc !44
  %40 = ptrtoint ptr %dac_cal1_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dac_cal1_bits.i.i, align 4
  %storemerge.i.1.i = or i32 %41, 1
  store i32 %storemerge.i.1.i, ptr %dac_cal1_bits.i.i, align 4
  %conv.i.1.i = trunc i32 %storemerge.i.1.i to i16
  %42 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %33, align 4
  %add.i13.1.i = add i32 %43, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv.i.1.i) #4
  %and.i.i.1.i = and i32 %add.i13.1.i, 1048575
  %add.i.i.1.i = or i32 %and.i.i.1.i, -18874368
  %45 = inttoptr i32 %add.i.i.1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %44) #4, !srcloc !44
  %46 = ptrtoint ptr %dac_cal1_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dac_cal1_bits.i.i, align 4
  %and2.i.2.i = and i32 %47, -2
  store i32 %and2.i.2.i, ptr %dac_cal1_bits.i.i, align 4
  %conv.i.2.i = trunc i32 %and2.i.2.i to i16
  %48 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %33, align 4
  %add.i13.2.i = add i32 %49, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv.i.2.i) #4
  %and.i.i.2.i = and i32 %add.i13.2.i, 1048575
  %add.i.i.2.i = or i32 %and.i.i.2.i, -18874368
  %51 = inttoptr i32 %add.i.i.2.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %50) #4, !srcloc !44
  %52 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %private.i, align 4
  %dac_cal1_bits.i15.i = getelementptr inbounds %struct.cb_pcidda_private, ptr %53, i32 0, i32 1
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.body.i26.i.for.body.i26.i_crit_edge, %for.body29
  %i.011.i16.i = phi i32 [ 1, %for.body29 ], [ %inc.i24.i, %for.body.i26.i.for.body.i26.i_crit_edge ]
  %sub.i17.i = sub nuw nsw i32 8, %i.011.i16.i
  %54 = ptrtoint ptr %dac_cal1_bits.i15.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dac_cal1_bits.i15.i, align 4
  %and2.i18.i = and i32 %55, -2
  %56 = lshr i32 %i.197, %sub.i17.i
  %57 = and i32 %56, 1
  %storemerge.i19.i = or i32 %57, %and2.i18.i
  store i32 %storemerge.i19.i, ptr %dac_cal1_bits.i15.i, align 4
  %conv.i20.i = trunc i32 %storemerge.i19.i to i16
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %53, align 4
  %add.i21.i = add i32 %59, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %60 = tail call i16 @llvm.bswap.i16(i16 %conv.i20.i) #4
  %and.i.i22.i = and i32 %add.i21.i, 1048575
  %add.i.i23.i = or i32 %and.i.i22.i, -18874368
  %61 = inttoptr i32 %add.i.i23.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %61, i16 %60) #4, !srcloc !44
  %inc.i24.i = add nuw nsw i32 %i.011.i16.i, 1
  %exitcond.i = icmp eq i32 %inc.i24.i, 9
  br i1 %exitcond.i, label %cb_pcidda_serial_out.exit27.i, label %for.body.i26.i.for.body.i26.i_crit_edge

for.body.i26.i.for.body.i26.i_crit_edge:          ; preds = %for.body.i26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i26.i

cb_pcidda_serial_out.exit27.i:                    ; preds = %for.body.i26.i
  %62 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %private.i, align 4
  br label %for.body.i34.i

for.body.i34.i:                                   ; preds = %for.body.i34.i.for.body.i34.i_crit_edge, %cb_pcidda_serial_out.exit27.i
  %i.06.i.i = phi i32 [ 1, %cb_pcidda_serial_out.exit27.i ], [ %inc.i33.i, %for.body.i34.i.for.body.i34.i_crit_edge ]
  %value.05.i.i = phi i32 [ 0, %cb_pcidda_serial_out.exit27.i ], [ %value.1.i.i, %for.body.i34.i.for.body.i34.i_crit_edge ]
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add.i29.i = add i32 %65, 4
  %and.i.i30.i = and i32 %add.i29.i, 1048575
  %add.i.i31.i = or i32 %and.i.i30.i, -18874368
  %66 = inttoptr i32 %add.i.i31.i to ptr
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %66) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %sub.i32.i = sub nuw nsw i32 16, %i.06.i.i
  %shl.i.i = shl nuw nsw i32 1, %sub.i32.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not4.i.i = icmp slt i16 %67, 0
  %or.i.i = select i1 %tobool.not4.i.i, i32 %shl.i.i, i32 0
  %value.1.i.i = or i32 %or.i.i, %value.05.i.i
  %inc.i33.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i33.i, 17
  br i1 %exitcond.not.i.i, label %cb_pcidda_read_eeprom.exit, label %for.body.i34.i.for.body.i34.i_crit_edge

for.body.i34.i.for.body.i34.i_crit_edge:          ; preds = %for.body.i34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i34.i

cb_pcidda_read_eeprom.exit:                       ; preds = %for.body.i34.i
  %68 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %28, align 4
  %add3.i = add i32 %69, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %and.i35.i = and i32 %add3.i, 1048575
  %add.i36.i = or i32 %and.i35.i, -18874368
  %70 = inttoptr i32 %add.i36.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %70, i16 32256) #4, !srcloc !44
  %conv = trunc i32 %value.1.i.i to i16
  %arrayidx31 = getelementptr %struct.cb_pcidda_private, ptr %call3, i32 0, i32 3, i32 %i.197
  %71 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv, ptr %arrayidx31, align 2
  %inc33 = add nuw nsw i32 %i.197, 1
  %exitcond.not = icmp eq i32 %inc33, 128
  br i1 %exitcond.not, label %for.body39.lr.ph, label %cb_pcidda_read_eeprom.exit.for.body29_crit_edge

cb_pcidda_read_eeprom.exit.for.body29_crit_edge:  ; preds = %cb_pcidda_read_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.body39.lr.ph
  %i.299 = phi i32 [ 0, %for.body39.lr.ph ], [ %inc42, %for.body39.for.body39_crit_edge ]
  %arrayidx40 = getelementptr %struct.cb_pcidda_private, ptr %call3, i32 0, i32 2, i32 %i.299
  %72 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx40, align 4
  %74 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %private.i, align 4
  %div36.i = lshr i32 %i.299, 1
  %rem.i = shl i32 %i.299, 2
  %mul.i = and i32 %rem.i, 4
  %mul1.i = shl i32 %73, 1
  %mul2.i = mul i32 %i.299, 12
  %add.i93 = add i32 %mul1.i, %mul2.i
  %arrayidx.i = getelementptr %struct.cb_pcidda_private, ptr %75, i32 0, i32 2, i32 %i.299
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %73, ptr %arrayidx.i, align 4
  %add3.i94 = add i32 %add.i93, 7
  %arrayidx4.i = getelementptr %struct.cb_pcidda_private, ptr %75, i32 0, i32 3, i32 %add3.i94
  %77 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx4.i, align 2
  %conv.i = zext i16 %78 to i32
  %add6.i = add i32 %add.i93, 8
  %arrayidx7.i = getelementptr %struct.cb_pcidda_private, ptr %75, i32 0, i32 3, i32 %add6.i
  %79 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = zext i16 %80 to i32
  %add9.i = or i32 %mul.i, 2
  %shr.i = lshr i32 %conv.i, 8
  tail call fastcc void @cb_pcidda_write_caldac(ptr noundef %dev, i32 noundef %div36.i, i32 noundef %add9.i, i32 noundef %shr.i) #4
  %add10.i = or i32 %mul.i, 3
  %and11.i = and i32 %conv.i, 255
  tail call fastcc void @cb_pcidda_write_caldac(ptr noundef %dev, i32 noundef %div36.i, i32 noundef %add10.i, i32 noundef %and11.i) #4
  %add12.i = or i32 %mul.i, 1
  %shr13.i = lshr i32 %conv8.i, 8
  tail call fastcc void @cb_pcidda_write_caldac(ptr noundef %dev, i32 noundef %div36.i, i32 noundef %add12.i, i32 noundef %shr13.i) #4
  %and16.i = and i32 %conv8.i, 255
  tail call fastcc void @cb_pcidda_write_caldac(ptr noundef %dev, i32 noundef %div36.i, i32 noundef %mul.i, i32 noundef %and16.i) #4
  %inc42 = add nuw nsw i32 %i.299, 1
  %exitcond101.not = icmp eq i32 %inc42, %smax
  br i1 %exitcond101.not, label %for.body39.cleanup_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body39

for.body39.cleanup_crit_edge:                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body39.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call15, %if.end10.cleanup_crit_edge ], [ %call23, %if.end18.cleanup_crit_edge ], [ %call23.1, %for.cond.1.cleanup_crit_edge ], [ 0, %for.body39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidda_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
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
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %arrayidx = getelementptr %struct.cb_pcidda_private, ptr %1, i32 0, i32 2, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %5)
  %cmp.not = icmp eq i32 %and2, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = shl nuw nsw i32 %and, 2
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %div36.i = lshr i32 %and, 1
  %rem.i = shl nuw nsw i32 %and, 2
  %mul.i = and i32 %rem.i, 4
  %mul1.i = shl nuw nsw i32 %and2, 1
  %mul2.i = mul nuw nsw i32 %and, 12
  %add.i = add nuw nsw i32 %mul1.i, %mul2.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and2, ptr %arrayidx, align 4
  %add3.i = add nuw nsw i32 %add.i, 7
  %arrayidx4.i = getelementptr %struct.cb_pcidda_private, ptr %1, i32 0, i32 3, i32 %add3.i
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx4.i, align 2
  %conv.i = zext i16 %8 to i32
  %add6.i = add nuw nsw i32 %add.i, 8
  %arrayidx7.i = getelementptr %struct.cb_pcidda_private, ptr %1, i32 0, i32 3, i32 %add6.i
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = zext i16 %10 to i32
  %add9.i = or i32 %mul.i, 2
  %shr.i = lshr i32 %conv.i, 8
  tail call fastcc void @cb_pcidda_write_caldac(ptr noundef %dev, i32 noundef %div36.i, i32 noundef %add9.i, i32 noundef %shr.i) #4
  %add10.i = or i32 %mul.i, 3
  %and11.i = and i32 %conv.i, 255
  tail call fastcc void @cb_pcidda_write_caldac(ptr noundef %dev, i32 noundef %div36.i, i32 noundef %add10.i, i32 noundef %and11.i) #4
  %add12.i = or i32 %mul.i, 1
  %shr13.i = lshr i32 %conv8.i, 8
  tail call fastcc void @cb_pcidda_write_caldac(ptr noundef %dev, i32 noundef %div36.i, i32 noundef %add12.i, i32 noundef %shr13.i) #4
  %and16.i = and i32 %conv8.i, 255
  tail call fastcc void @cb_pcidda_write_caldac(ptr noundef %dev, i32 noundef %div36.i, i32 noundef %mul.i, i32 noundef %and16.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %shl.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %rem.i, %if.then ]
  %or = or i32 %shl.pre-phi, 2
  %trunc = trunc i32 %shr to i8
  %11 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end.sw.epilog_crit_edge [
    i8 0, label %if.end.sw.bb_crit_edge
    i8 3, label %if.end.sw.bb_crit_edge53
    i8 1, label %if.end.sw.bb4_crit_edge
    i8 4, label %if.end.sw.bb4_crit_edge54
  ]

if.end.sw.bb4_crit_edge54:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

if.end.sw.bb_crit_edge53:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge53
  %or3 = or i32 %shl.pre-phi, 194
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge54
  %or5 = or i32 %shl.pre-phi, 130
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  %ctrl.0 = phi i32 [ %or5, %sw.bb4 ], [ %or3, %sw.bb ], [ %or, %if.end.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2)
  %cmp8 = icmp ugt i32 %and2, 2
  %or10 = or i32 %ctrl.0, 256
  %spec.select = select i1 %cmp8, i32 %or10, i32 %ctrl.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %spec.select to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %and12 = and i32 %14, 1048575
  %add13 = or i32 %and12, -18874368
  %15 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %12) #4, !srcloc !44
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1446.not = icmp eq i32 %17, 0
  br i1 %cmp1446.not, label %sw.epilog.for.end_crit_edge, label %do.body16.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body16.lr.ph:                                  ; preds = %sw.epilog
  %mul = shl nuw nsw i32 %and, 1
  %add22 = add nuw nsw i32 %mul, 8
  br label %do.body16

do.body16:                                        ; preds = %do.body16.do.body16_crit_edge, %do.body16.lr.ph
  %i.047 = phi i32 [ 0, %do.body16.lr.ph ], [ %inc, %do.body16.do.body16_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %arrayidx19 = getelementptr i32, ptr %data, i32 %i.047
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx19, align 4
  %conv20 = trunc i32 %19 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %add23 = add i32 %add22, %22
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %23 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %23, i16 %20) #4, !srcloc !44
  %inc = add nuw i32 %i.047, 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  %cmp14 = icmp ult i32 %inc, %25
  br i1 %cmp14, label %do.body16.do.body16_crit_edge, label %do.body16.for.end_crit_edge

do.body16.for.end_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

do.body16.do.body16_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body16

for.end:                                          ; preds = %do.body16.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %sw.epilog.for.end_crit_edge ], [ %25, %do.body16.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb_pcidda_write_caldac(ptr nocapture noundef readonly %dev, i32 noundef %caldac, i32 noundef %channel, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %dac_cal1_bits.i = getelementptr inbounds %struct.cb_pcidda_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dac_cal1_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dac_cal1_bits.i, align 4
  %and2.i = and i32 %3, -2
  %4 = lshr i32 %channel, 2
  %5 = and i32 %4, 1
  %storemerge.i = or i32 %5, %and2.i
  store i32 %storemerge.i, ptr %dac_cal1_bits.i, align 4
  %conv.i = trunc i32 %storemerge.i to i16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %add.i = add i32 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %8) #4, !srcloc !44
  %10 = ptrtoint ptr %dac_cal1_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dac_cal1_bits.i, align 4
  %and2.i.1 = and i32 %11, -2
  %12 = lshr i32 %channel, 1
  %13 = and i32 %12, 1
  %storemerge.i.1 = or i32 %13, %and2.i.1
  store i32 %storemerge.i.1, ptr %dac_cal1_bits.i, align 4
  %conv.i.1 = trunc i32 %storemerge.i.1 to i16
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %add.i.1 = add i32 %15, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv.i.1) #4
  %and.i.i.1 = and i32 %add.i.1, 1048575
  %add.i.i.1 = or i32 %and.i.i.1, -18874368
  %17 = inttoptr i32 %add.i.i.1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %16) #4, !srcloc !44
  %18 = ptrtoint ptr %dac_cal1_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dac_cal1_bits.i, align 4
  %and2.i.2 = and i32 %19, -2
  %20 = and i32 %channel, 1
  %storemerge.i.2 = or i32 %20, %and2.i.2
  store i32 %storemerge.i.2, ptr %dac_cal1_bits.i, align 4
  %conv.i.2 = trunc i32 %storemerge.i.2 to i16
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %add.i.2 = add i32 %22, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv.i.2) #4
  %and.i.i.2 = and i32 %add.i.2, 1048575
  %add.i.i.2 = or i32 %and.i.i.2, -18874368
  %24 = inttoptr i32 %add.i.i.2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %23) #4, !srcloc !44
  %25 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private, align 4
  %dac_cal1_bits.i18 = getelementptr inbounds %struct.cb_pcidda_private, ptr %26, i32 0, i32 1
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %entry
  %i.011.i19 = phi i32 [ 1, %entry ], [ %inc.i27, %for.body.i29.for.body.i29_crit_edge ]
  %sub.i20 = sub nuw nsw i32 8, %i.011.i19
  %27 = ptrtoint ptr %dac_cal1_bits.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dac_cal1_bits.i18, align 4
  %and2.i21 = and i32 %28, -2
  %29 = lshr i32 %value, %sub.i20
  %30 = and i32 %29, 1
  %storemerge.i22 = or i32 %30, %and2.i21
  store i32 %storemerge.i22, ptr %dac_cal1_bits.i18, align 4
  %conv.i23 = trunc i32 %storemerge.i22 to i16
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %26, align 4
  %add.i24 = add i32 %32, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv.i23) #4
  %and.i.i25 = and i32 %add.i24, 1048575
  %add.i.i26 = or i32 %and.i.i25, -18874368
  %34 = inttoptr i32 %add.i.i26 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %33) #4, !srcloc !44
  %inc.i27 = add nuw nsw i32 %i.011.i19, 1
  %exitcond = icmp eq i32 %inc.i27, 9
  br i1 %exitcond, label %for.body.preheader, label %for.body.i29.for.body.i29_crit_edge

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i29

for.body.preheader:                               ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #6
  %shl1 = shl i32 4, %caldac
  %35 = trunc i32 %shl1 to i16
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %add = add i32 %37, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %38 = shl i16 %35, 8
  %conv = and i16 %38, 31744
  %39 = xor i16 %conv, 32256
  %and.i = and i32 %add, 1048575
  %add.i31 = or i32 %and.i, -18874368
  %40 = inttoptr i32 %add.i31 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %40, i16 %39) #4, !srcloc !44
  %41 = trunc i32 %shl1 to i16
  %conv4 = or i16 %41, 126
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 4
  %add6 = add i32 %43, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv4) #4
  %and.i32 = and i32 %add6, 1048575
  %add.i33 = or i32 %and.i32, -18874368
  %45 = inttoptr i32 %add.i33 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %44) #4, !srcloc !44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb_pcidda_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @cb_pcidda_driver, i32 noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_cb_pcidda__236_415_cb_pcidda_driver_init6, !1, !"__initcall__kmod_cb_pcidda__236_415_cb_pcidda_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 415, i32 1}
!2 = !{ptr @__exitcall_cb_pcidda_driver_exit, !1, !"__exitcall_cb_pcidda_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 417, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 418, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 419, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 385, i32 17}
!12 = !{ptr @cb_pcidda_driver, !13, !"cb_pcidda_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 384, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 110, i32 12}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 115, i32 12}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 120, i32 12}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 125, i32 12}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 130, i32 12}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 135, i32 12}
!26 = !{ptr @cb_pcidda_boards, !27, !"cb_pcidda_boards", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 108, i32 37}
!28 = !{ptr @cb_pcidda_ranges, !29, !"cb_pcidda_ranges", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 82, i32 35}
!30 = !{ptr @cb_pcidda_pci_driver, !31, !"cb_pcidda_pci_driver", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 409, i32 26}
!32 = !{ptr @cb_pcidda_pci_table, !33, !"cb_pcidda_pci_table", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/cb_pcidda.c", i32 398, i32 35}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2152528349}
!44 = !{i64 4991338}
!45 = !{i64 4991538}
!46 = !{i64 2152526633}
!47 = !{i64 2154534230}
!48 = !{i64 2154534768}
