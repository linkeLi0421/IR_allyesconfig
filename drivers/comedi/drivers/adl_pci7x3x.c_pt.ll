; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/adl_pci7x3x.c_pt.bc'
source_filename = "../drivers/comedi/drivers/adl_pci7x3x.c"
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
%struct.adl_pci7x3x_boardinfo = type { ptr, i32, i32, i32, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.adl_pci7x3x_dev_private_data = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.adl_pci7x3x_sd_private_data = type { %struct.spinlock, i32, i16 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }

@__initcall__kmod_adl_pci7x3x__240_537_adl_pci7x3x_driver_init6 = internal global ptr @adl_pci7x3x_driver_init, section ".initcall6.init", align 4
@adl_pci7x3x_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr null, ptr @adl_pci7x3x_detach, ptr @adl_pci7x3x_auto_attach, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@adl_pci7x3x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @adl_pci7x3x_pci_table, ptr @adl_pci7x3x_pci_probe, ptr @comedi_pci_auto_unconfig, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adl_pci7x3x_driver_exit = internal global ptr @adl_pci7x3x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [73 x i8] c"adl_pci7x3x.description=ADLINK PCI-723x/743x Isolated Digital I/O boards\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [68 x i8] c"adl_pci7x3x.author=H Hartley Sweeten <hsweeten@visionengravers.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [52 x i8] c"adl_pci7x3x.file=drivers/comedi/drivers/adl_pci7x3x\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"adl_pci7x3x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adl_pci7x3x\00", [20 x i8] zeroinitializer }, align 32
@adl_pci7x3x_boards = internal constant { [6 x %struct.adl_pci7x3x_boardinfo], [40 x i8] } { [6 x %struct.adl_pci7x3x_boardinfo] [%struct.adl_pci7x3x_boardinfo { ptr @.str.2, i32 4, i32 16, i32 16, i32 2 }, %struct.adl_pci7x3x_boardinfo { ptr @.str.3, i32 1, i32 32, i32 0, i32 0 }, %struct.adl_pci7x3x_boardinfo { ptr @.str.4, i32 1, i32 0, i32 32, i32 0 }, %struct.adl_pci7x3x_boardinfo { ptr @.str.5, i32 2, i32 32, i32 32, i32 0 }, %struct.adl_pci7x3x_boardinfo { ptr @.str.6, i32 2, i32 64, i32 0, i32 0 }, %struct.adl_pci7x3x_boardinfo { ptr @.str.7, i32 2, i32 0, i32 64, i32 0 }], [40 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@adl_pci7x3x_auto_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&sd_priv->subd_slock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adl_pci7230\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adl_pci7233\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adl_pci7234\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adl_pci7432\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adl_pci7433\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adl_pci7434\00", [20 x i8] zeroinitializer }, align 32
@adl_pci7x3x_pci_table = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 5194, i32 29232, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5194, i32 29235, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 5194, i32 29236, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 5194, i32 29746, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 5194, i32 29747, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 5194, i32 29748, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"adl_pci7x3x_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 506, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"adl_pci7x3x_pci_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 531, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 507, i32 17 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"adl_pci7x3x_boards\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 83, i32 43 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 479, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 85, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 92, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 97, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 102, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 108, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 113, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"adl_pci7x3x_pci_table\00", align 1
@___asan_gen_.46 = private constant [40 x i8] c"../drivers/comedi/drivers/adl_pci7x3x.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 520, i32 35 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_adl_pci7x3x_driver_exit, ptr @__initcall__kmod_adl_pci7x3x__240_537_adl_pci7x3x_driver_init6, ptr @adl_pci7x3x_driver_exit, ptr @adl_pci7x3x_driver, ptr @adl_pci7x3x_pci_driver, ptr @.str, ptr @adl_pci7x3x_boards, ptr @adl_pci7x3x_auto_attach.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @adl_pci7x3x_pci_table], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci7x3x_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci7x3x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci7x3x_boards to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci7x3x_auto_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_pci7x3x_pci_table to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci7x3x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_pci_driver_register(ptr noundef nonnull @adl_pci7x3x_driver, ptr noundef nonnull @adl_pci7x3x_pci_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adl_pci7x3x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_pci_driver_unregister(ptr noundef nonnull @adl_pci7x3x_driver, ptr noundef nonnull @adl_pci7x3x_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_driver_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adl_pci7x3x_detach(ptr noundef %dev) #2 align 64 {
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
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %int_ctrl.i = getelementptr inbounds %struct.adl_pci7x3x_dev_private_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %int_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %int_ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %int_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %int_ctrl.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %add.i = add i32 %9, 76
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #6, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_pci_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci7x3x_auto_attach(ptr noundef %dev, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_to_pci_dev(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %context)
  %cmp = icmp ugt i32 %context, 5
  %arrayidx = getelementptr [6 x %struct.adl_pci7x3x_boardinfo], ptr @adl_pci7x3x_boards, i32 0, i32 %context
  %tobool.not248 = icmp eq ptr %arrayidx, null
  %tobool.not = or i1 %cmp, %tobool.not248
  br i1 %tobool.not, label %entry.cleanup127_crit_edge, label %if.end2

entry.cleanup127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

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
  %call3 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 8) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.cleanup127_crit_edge, label %if.end6

if.end2.cleanup127_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @comedi_pci_enable(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup127_crit_edge

if.end6.cleanup127_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

if.end10:                                         ; preds = %if.end6
  %arrayidx11 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 2
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx11, align 8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %iobase, align 4
  %arrayidx13 = getelementptr %struct.pci_dev, ptr %call, i32 0, i32 47, i32 1
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx13, align 8
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %call3, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %int_ctrl.i = getelementptr inbounds %struct.adl_pci7x3x_dev_private_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %int_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %int_ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %int_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_ctrl.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  %add.i = add i32 %17, 76
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #6, !srcloc !45
  %irq_nchan = getelementptr [6 x %struct.adl_pci7x3x_boardinfo], ptr @adl_pci7x3x_boards, i32 0, i32 %context, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %context)
  %tobool16.not.not = icmp eq i32 %context, 0
  br i1 %tobool16.not.not, label %do.body, label %if.end10.if.end41_crit_edge

if.end10.if.end41_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.body:                                          ; preds = %if.end10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add = add i32 %20, 64
  %and = and i32 %add, 1048575
  %add19 = or i32 %and, -18874368
  %21 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #6, !srcloc !47
  %irq = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 46
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool21.not = icmp eq i32 %23, 0
  br i1 %tobool21.not, label %do.body.if.end41_crit_edge, label %if.then22

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then22:                                        ; preds = %do.body
  %24 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %23, ptr noundef nonnull @adl_pci7x3x_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %25, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26 = icmp eq i32 %call.i, 0
  br i1 %cmp26, label %if.then27, label %if.then22.if.end41_crit_edge

if.then22.if.end41_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 4
  %irq29 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %28 = ptrtoint ptr %irq29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq29, align 4
  %int_ctrl = getelementptr inbounds %struct.adl_pci7x3x_dev_private_data, ptr %call3, i32 0, i32 1
  %29 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 82, ptr %int_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %int_ctrl, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call3, align 4
  %add35 = add i32 %34, 76
  %and36 = and i32 %add35, 1048575
  %add37 = or i32 %and36, -18874368
  %35 = inttoptr i32 %add37 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %35, i32 %32) #6, !srcloc !45
  br label %if.end41

if.end41:                                         ; preds = %if.then27, %if.then22.if.end41_crit_edge, %do.body.if.end41_crit_edge, %if.end10.if.end41_crit_edge
  %nsubdevs = getelementptr [6 x %struct.adl_pci7x3x_boardinfo], ptr @adl_pci7x3x_boards, i32 0, i32 %context, i32 1
  %36 = ptrtoint ptr %nsubdevs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nsubdevs, align 4
  %call42 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup127_crit_edge

if.end41.cleanup127_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

if.end45:                                         ; preds = %if.end41
  %38 = zext i32 %context to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %context, label %if.then47 [
    i32 5, label %if.end45.if.end65_crit_edge
    i32 2, label %if.end45.if.end65_crit_edge254
  ]

if.end45.if.end65_crit_edge254:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.end45.if.end65_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then47:                                        ; preds = %if.end45
  %di_nchan = getelementptr [6 x %struct.adl_pci7x3x_boardinfo], ptr @adl_pci7x3x_boards, i32 0, i32 %context, i32 2
  %39 = ptrtoint ptr %di_nchan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %di_nchan, align 4
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 32)
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %42 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 4
  %45 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65536, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %41, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 13
  %47 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %maxdata, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 20
  %48 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @adl_pci7x3x_di_insn_bits, ptr %insn_bits, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 15
  %49 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %43, i32 0, i32 6
  %50 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %context)
  %tobool52.not.not = icmp eq i32 %context, 4
  br i1 %tobool52.not.not, label %if.then53, label %if.then47.if.end65_crit_edge

if.then47.if.end65_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then53:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %40, %41
  %51 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %subdevices, align 4
  %type56 = getelementptr %struct.comedi_subdevice, ptr %52, i32 1, i32 2
  %53 = ptrtoint ptr %type56 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %type56, align 4
  %subdev_flags57 = getelementptr %struct.comedi_subdevice, ptr %52, i32 1, i32 4
  %54 = ptrtoint ptr %subdev_flags57 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 65536, ptr %subdev_flags57, align 4
  %n_chan58 = getelementptr %struct.comedi_subdevice, ptr %52, i32 1, i32 3
  %55 = ptrtoint ptr %n_chan58 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub, ptr %n_chan58, align 4
  %maxdata59 = getelementptr %struct.comedi_subdevice, ptr %52, i32 1, i32 13
  %56 = ptrtoint ptr %maxdata59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %maxdata59, align 4
  %insn_bits60 = getelementptr %struct.comedi_subdevice, ptr %52, i32 1, i32 20
  %57 = ptrtoint ptr %insn_bits60 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @adl_pci7x3x_di_insn_bits, ptr %insn_bits60, align 4
  %range_table61 = getelementptr %struct.comedi_subdevice, ptr %52, i32 1, i32 15
  %58 = ptrtoint ptr %range_table61 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @range_unipolar5, ptr %range_table61, align 4
  %private62 = getelementptr %struct.comedi_subdevice, ptr %52, i32 1, i32 6
  %59 = ptrtoint ptr %private62 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 4 to ptr), ptr %private62, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then53, %if.then47.if.end65_crit_edge, %if.end45.if.end65_crit_edge, %if.end45.if.end65_crit_edge254
  %subdev.0 = phi i32 [ 2, %if.then53 ], [ 1, %if.then47.if.end65_crit_edge ], [ 0, %if.end45.if.end65_crit_edge ], [ 0, %if.end45.if.end65_crit_edge254 ]
  %60 = zext i32 %context to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %context, label %if.then67 [
    i32 4, label %if.end65.if.end100_crit_edge
    i32 1, label %if.end65.if.end100_crit_edge255
  ]

if.end65.if.end100_crit_edge255:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.end65.if.end100_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then67:                                        ; preds = %if.end65
  %do_nchan = getelementptr [6 x %struct.adl_pci7x3x_boardinfo], ptr @adl_pci7x3x_boards, i32 0, i32 %context, i32 3
  %61 = ptrtoint ptr %do_nchan to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %do_nchan, align 4
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 32)
  %subdevices75 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %64 = ptrtoint ptr %subdevices75 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %subdevices75, align 4
  %type77 = getelementptr %struct.comedi_subdevice, ptr %65, i32 %subdev.0, i32 2
  %66 = ptrtoint ptr %type77 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 4, ptr %type77, align 4
  %subdev_flags78 = getelementptr %struct.comedi_subdevice, ptr %65, i32 %subdev.0, i32 4
  %67 = ptrtoint ptr %subdev_flags78 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 131072, ptr %subdev_flags78, align 4
  %n_chan79 = getelementptr %struct.comedi_subdevice, ptr %65, i32 %subdev.0, i32 3
  %68 = ptrtoint ptr %n_chan79 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %63, ptr %n_chan79, align 4
  %maxdata80 = getelementptr %struct.comedi_subdevice, ptr %65, i32 %subdev.0, i32 13
  %69 = ptrtoint ptr %maxdata80 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %maxdata80, align 4
  %insn_bits81 = getelementptr %struct.comedi_subdevice, ptr %65, i32 %subdev.0, i32 20
  %70 = ptrtoint ptr %insn_bits81 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @adl_pci7x3x_do_insn_bits, ptr %insn_bits81, align 4
  %range_table82 = getelementptr %struct.comedi_subdevice, ptr %65, i32 %subdev.0, i32 15
  %71 = ptrtoint ptr %range_table82 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @range_unipolar5, ptr %range_table82, align 4
  %private83 = getelementptr %struct.comedi_subdevice, ptr %65, i32 %subdev.0, i32 6
  %72 = ptrtoint ptr %private83 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %private83, align 4
  %inc84 = add nuw nsw i32 %subdev.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %context)
  %tobool87.not.not = icmp eq i32 %context, 5
  br i1 %tobool87.not.not, label %if.then88, label %if.then67.if.end100_crit_edge

if.then67.if.end100_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then88:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %sub86 = sub i32 %62, %63
  %73 = ptrtoint ptr %subdevices75 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %subdevices75, align 4
  %type91 = getelementptr %struct.comedi_subdevice, ptr %74, i32 %inc84, i32 2
  %75 = ptrtoint ptr %type91 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %type91, align 4
  %subdev_flags92 = getelementptr %struct.comedi_subdevice, ptr %74, i32 %inc84, i32 4
  %76 = ptrtoint ptr %subdev_flags92 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 131072, ptr %subdev_flags92, align 4
  %n_chan93 = getelementptr %struct.comedi_subdevice, ptr %74, i32 %inc84, i32 3
  %77 = ptrtoint ptr %n_chan93 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub86, ptr %n_chan93, align 4
  %maxdata94 = getelementptr %struct.comedi_subdevice, ptr %74, i32 %inc84, i32 13
  %78 = ptrtoint ptr %maxdata94 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %maxdata94, align 4
  %insn_bits95 = getelementptr %struct.comedi_subdevice, ptr %74, i32 %inc84, i32 20
  %79 = ptrtoint ptr %insn_bits95 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @adl_pci7x3x_do_insn_bits, ptr %insn_bits95, align 4
  %range_table96 = getelementptr %struct.comedi_subdevice, ptr %74, i32 %inc84, i32 15
  %80 = ptrtoint ptr %range_table96 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @range_unipolar5, ptr %range_table96, align 4
  %private97 = getelementptr %struct.comedi_subdevice, ptr %74, i32 %inc84, i32 6
  %81 = ptrtoint ptr %private97 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 4 to ptr), ptr %private97, align 4
  %inc98 = add nuw nsw i32 %subdev.0, 2
  br label %if.end100

if.end100:                                        ; preds = %if.then88, %if.then67.if.end100_crit_edge, %if.end65.if.end100_crit_edge, %if.end65.if.end100_crit_edge255
  %subdev.1 = phi i32 [ %inc98, %if.then88 ], [ %inc84, %if.then67.if.end100_crit_edge ], [ %subdev.0, %if.end65.if.end100_crit_edge ], [ %subdev.0, %if.end65.if.end100_crit_edge255 ]
  %subdevices103 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  br i1 %tobool16.not.not, label %for.body.lr.ph, label %if.end100.cleanup127_crit_edge

if.end100.cleanup127_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

for.body.lr.ph:                                   ; preds = %if.end100
  %82 = ptrtoint ptr %irq_nchan to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq_nchan, align 4
  %irq119 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %smax = call i32 @llvm.smax.i32(i32 %83, i32 1)
  %84 = add nuw i32 %subdev.1, %smax
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %subdev.2250 = phi i32 [ %subdev.1, %for.body.lr.ph ], [ %inc125, %for.inc.for.body_crit_edge ]
  %85 = ptrtoint ptr %subdevices103 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %subdevices103, align 4
  %arrayidx104 = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250
  %type105 = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 2
  %87 = ptrtoint ptr %type105 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 3, ptr %type105, align 4
  %subdev_flags106 = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 4
  %88 = ptrtoint ptr %subdev_flags106 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 65536, ptr %subdev_flags106, align 4
  %n_chan107 = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 3
  %89 = ptrtoint ptr %n_chan107 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %n_chan107, align 4
  %maxdata108 = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 13
  %90 = ptrtoint ptr %maxdata108 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %maxdata108, align 4
  %insn_bits109 = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 20
  %91 = ptrtoint ptr %insn_bits109 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @adl_pci7x3x_dirq_insn_bits, ptr %insn_bits109, align 4
  %range_table110 = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 15
  %92 = ptrtoint ptr %range_table110 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @range_unipolar5, ptr %range_table110, align 4
  %call111 = tail call ptr @comedi_alloc_spriv(ptr noundef %arrayidx104, i32 noundef 52) #6
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %for.body.cleanup127_crit_edge, label %do.body115

for.body.cleanup127_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

do.body115:                                       ; preds = %for.body
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call111, ptr noundef nonnull @.str.1, ptr noundef nonnull @adl_pci7x3x_auto_attach.__key, i16 noundef signext 3) #6
  %port_offset = getelementptr inbounds %struct.adl_pci7x3x_sd_private_data, ptr %call111, i32 0, i32 1
  %93 = ptrtoint ptr %port_offset to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %port_offset, align 4
  %cmd_running = getelementptr inbounds %struct.adl_pci7x3x_sd_private_data, ptr %call111, i32 0, i32 2
  %94 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %cmd_running, align 4
  %95 = ptrtoint ptr %irq119 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool120.not = icmp eq i32 %96, 0
  br i1 %tobool120.not, label %do.body115.for.inc_crit_edge, label %if.then121

do.body115.for.inc_crit_edge:                     ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then121:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %arrayidx104, ptr %read_subdev, align 4
  %98 = ptrtoint ptr %type105 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 3, ptr %type105, align 4
  %99 = ptrtoint ptr %subdev_flags106 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 98304, ptr %subdev_flags106, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 5
  %100 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 23
  %101 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @adl_pci7x3x_asy_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 22
  %102 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @adl_pci7x3x_asy_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %86, i32 %subdev.2250, i32 25
  %103 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @adl_pci7x3x_asy_cancel, ptr %cancel, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then121, %do.body115.for.inc_crit_edge
  %inc125 = add nuw i32 %subdev.2250, 1
  %exitcond.not = icmp eq i32 %inc125, %84
  br i1 %exitcond.not, label %for.inc.cleanup127_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup127_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup127

cleanup127:                                       ; preds = %for.inc.cleanup127_crit_edge, %for.body.cleanup127_crit_edge, %if.end100.cleanup127_crit_edge, %if.end41.cleanup127_crit_edge, %if.end6.cleanup127_crit_edge, %if.end2.cleanup127_crit_edge, %entry.cleanup127_crit_edge
  %retval.2 = phi i32 [ -19, %entry.cleanup127_crit_edge ], [ -12, %if.end2.cleanup127_crit_edge ], [ %call7, %if.end6.cleanup127_crit_edge ], [ %call42, %if.end41.cleanup127_crit_edge ], [ 0, %if.end100.cleanup127_crit_edge ], [ 0, %for.inc.cleanup127_crit_edge ], [ -12, %for.body.cleanup127_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_to_pci_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci7x3x_interrupt(i32 noundef %irq, ptr noundef %p_device) #2 align 64 {
entry:
  %val.i60 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %attached = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 10
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 3
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %add = add i32 %4, 76
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %5 = inttoptr i32 %add5 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !49
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %and9 = and i32 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and9)
  %cmp10 = icmp eq i32 %and9, 5
  %and12 = and i32 %7, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 40
  %brmerge = or i1 %cmp10, %cmp13
  br i1 %brmerge, label %do.body21, label %do.body1.if.end28_crit_edge

do.body1.if.end28_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.body21:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 18
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add24 = add i32 %9, 64
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %10 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #6, !srcloc !47
  br label %if.end28

if.end28:                                         ; preds = %do.body21, %do.body1.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #6
  br i1 %cmp10, label %if.then31, label %if.end28.if.end33_crit_edge

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then31:                                        ; preds = %if.end28
  %subdevices.i = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 16
  %11 = ptrtoint ptr %subdevices.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %subdevices.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_subdevice, ptr %12, i32 2
  %private.i = getelementptr %struct.comedi_subdevice, ptr %12, i32 2, i32 6
  %13 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private.i, align 4
  %async.i = getelementptr %struct.comedi_subdevice, ptr %12, i32 2, i32 7
  %15 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %async.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then31.if.end33_crit_edge, label %if.then.i

if.then31.if.end33_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then.i:                                        ; preds = %if.then31
  %port_offset.i = getelementptr inbounds %struct.adl_pci7x3x_sd_private_data, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_offset.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 18
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %20, %18
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %21 = inttoptr i32 %add1.i to ptr
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %21) #6, !srcloc !52
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %val.i, align 2
  tail call void @_raw_spin_lock(ptr noundef %14) #6
  %cmd_running.i = getelementptr inbounds %struct.adl_pci7x3x_sd_private_data, ptr %14, i32 0, i32 2
  %25 = ptrtoint ptr %cmd_running.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cmd_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool3.not.i = icmp eq i16 %26, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = call i32 @comedi_buf_write_samples(ptr noundef %arrayidx.i, ptr noundef nonnull %val.i, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %14) #6
  %call7.i = call i32 @comedi_handle_events(ptr noundef %p_device, ptr noundef %arrayidx.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %if.end33

if.end33:                                         ; preds = %if.end.i, %if.then31.if.end33_crit_edge, %if.end28.if.end33_crit_edge
  br i1 %cmp13, label %if.then35, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %if.end33
  %subdevices.i61 = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 16
  %27 = ptrtoint ptr %subdevices.i61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %subdevices.i61, align 4
  %arrayidx.i62 = getelementptr %struct.comedi_subdevice, ptr %28, i32 3
  %private.i63 = getelementptr %struct.comedi_subdevice, ptr %28, i32 3, i32 6
  %29 = ptrtoint ptr %private.i63 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private.i63, align 4
  %async.i64 = getelementptr %struct.comedi_subdevice, ptr %28, i32 3, i32 7
  %31 = ptrtoint ptr %async.i64 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %async.i64, align 4
  %tobool.not.i65 = icmp eq ptr %32, null
  br i1 %tobool.not.i65, label %if.then35.if.end37_crit_edge, label %if.then.i73

if.then35.if.end37_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then.i73:                                      ; preds = %if.then35
  %port_offset.i66 = getelementptr inbounds %struct.adl_pci7x3x_sd_private_data, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %port_offset.i66 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port_offset.i66, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i60) #6
  %iobase.i67 = getelementptr inbounds %struct.comedi_device, ptr %p_device, i32 0, i32 18
  %35 = ptrtoint ptr %iobase.i67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i67, align 4
  %add.i68 = add i32 %36, %34
  %and.i69 = and i32 %add.i68, 1048575
  %add1.i70 = or i32 %and.i69, -18874368
  %37 = inttoptr i32 %add1.i70 to ptr
  %38 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %37) #6, !srcloc !52
  %39 = call i16 @llvm.bswap.i16(i16 %38) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %40 = ptrtoint ptr %val.i60 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %val.i60, align 2
  call void @_raw_spin_lock(ptr noundef %30) #6
  %cmd_running.i71 = getelementptr inbounds %struct.adl_pci7x3x_sd_private_data, ptr %30, i32 0, i32 2
  %41 = ptrtoint ptr %cmd_running.i71 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %cmd_running.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool3.not.i72 = icmp eq i16 %42, 0
  br i1 %tobool3.not.i72, label %if.then.i73.if.end.i77_crit_edge, label %if.then4.i75

if.then.i73.if.end.i77_crit_edge:                 ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i77

if.then4.i75:                                     ; preds = %if.then.i73
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i74 = call i32 @comedi_buf_write_samples(ptr noundef %arrayidx.i62, ptr noundef nonnull %val.i60, i32 noundef 1) #6
  br label %if.end.i77

if.end.i77:                                       ; preds = %if.then4.i75, %if.then.i73.if.end.i77_crit_edge
  call void @_raw_spin_unlock(ptr noundef %30) #6
  %call7.i76 = call i32 @comedi_handle_events(ptr noundef %p_device, ptr noundef %arrayidx.i62) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i60) #6
  br label %if.end37

if.end37:                                         ; preds = %if.end.i77, %if.then35.if.end37_crit_edge, %if.end33.if.end37_crit_edge
  %spec.select = zext i1 %brmerge to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end37 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci7x3x_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, %2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !49
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci7x3x_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %5 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp = icmp eq i32 %6, 16
  %shl = shl i32 %4, 16
  %or = select i1 %cmp, i32 %shl, i32 0
  %val.0 = or i32 %or, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add = add i32 %9, %2
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %10 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #6, !srcloc !45
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %state5 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %11 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state5, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci7x3x_dirq_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %port_offset = getelementptr inbounds %struct.adl_pci7x3x_sd_private_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_offset, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, %3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #6, !srcloc !49
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
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
declare dso_local ptr @comedi_alloc_spriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adl_pci7x3x_asy_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #5 align 64 {
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
define internal i32 @adl_pci7x3x_asy_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  %. = select i1 %cmp, i32 1, i32 8
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %int_ctrl = getelementptr inbounds %struct.adl_pci7x3x_dev_private_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_ctrl, align 4
  %or = or i32 %7, %.
  store i32 %or, ptr %int_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %int_ctrl, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %add = add i32 %12, 76
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %13 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #6, !srcloc !45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #6
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %cmd_running = getelementptr inbounds %struct.adl_pci7x3x_sd_private_data, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %cmd_running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call22) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci7x3x_asy_cancel(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %private1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %2 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %cmd_running = getelementptr inbounds %struct.adl_pci7x3x_sd_private_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %cmd_running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call3) #6
  %index = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp7 = icmp eq i32 %6, 2
  %. = select i1 %cmp7, i32 -2, i32 -9
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %int_ctrl = getelementptr inbounds %struct.adl_pci7x3x_dev_private_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_ctrl, align 4
  %and = and i32 %8, %.
  store i32 %and, ptr %int_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %int_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %int_ctrl, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %add = add i32 %13, 76
  %and26 = and i32 %add, 1048575
  %add27 = or i32 %and26, -18874368
  %14 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #6, !srcloc !45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call17) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adl_pci7x3x_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %call = tail call i32 @comedi_pci_auto_config(ptr noundef %dev, ptr noundef nonnull @adl_pci7x3x_driver, i32 noundef %1) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_pci_auto_unconfig(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_pci_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_adl_pci7x3x__240_537_adl_pci7x3x_driver_init6, !1, !"__initcall__kmod_adl_pci7x3x__240_537_adl_pci7x3x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 537, i32 1}
!2 = !{ptr @__exitcall_adl_pci7x3x_driver_exit, !1, !"__exitcall_adl_pci7x3x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 539, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 540, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 541, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 507, i32 17}
!12 = !{ptr @adl_pci7x3x_driver, !13, !"adl_pci7x3x_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 506, i32 29}
!14 = !{ptr @adl_pci7x3x_auto_attach.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 479, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 85, i32 12}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 92, i32 12}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 97, i32 12}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 102, i32 12}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 108, i32 12}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 113, i32 12}
!29 = !{ptr @adl_pci7x3x_boards, !30, !"adl_pci7x3x_boards", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 83, i32 43}
!31 = !{ptr @adl_pci7x3x_pci_driver, !32, !"adl_pci7x3x_pci_driver", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 531, i32 26}
!33 = !{ptr @adl_pci7x3x_pci_table, !34, !"adl_pci7x3x_pci_table", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/adl_pci7x3x.c", i32 520, i32 35}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2154546254}
!45 = !{i64 4994457}
!46 = !{i64 2154547292}
!47 = !{i64 4994260}
!48 = !{i64 2154548042}
!49 = !{i64 4994875}
!50 = !{i64 2154539833}
!51 = !{i64 2154540918}
!52 = !{i64 4994037}
!53 = !{i64 2154538718}
!54 = !{i64 2154545963}
!55 = !{i64 2154545064}
!56 = !{i64 2154544810}
!57 = !{i64 2154541983}
!58 = !{i64 2154543861}
