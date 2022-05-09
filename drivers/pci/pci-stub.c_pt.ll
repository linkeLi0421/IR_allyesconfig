; ModuleID = '/llk/IR_all_yes/drivers/pci/pci-stub.c_pt.bc'
source_filename = "../drivers/pci/pci-stub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.71 = type { ptr }

@__param_str_ids = internal constant [13 x i8] c"pci_stub.ids\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_ids = internal constant %struct.kparam_string { i32 1024, ptr @ids }, align 4
@__param_ids = internal constant %struct.kernel_param { ptr @__param_str_ids, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @__param_string_ids } }, section "__param", align 4
@__UNIQUE_ID_idstype236 = internal constant [29 x i8] c"pci_stub.parmtype=ids:string\00", section ".modinfo", align 1
@__UNIQUE_ID_ids237 = internal constant [186 x i8] c"pci_stub.parm=ids:Initial PCI IDs to add to the stub driver, format is \22vendor:device[:subvendor[:subdevice[:class[:class_mask]]]]\22 and multiple comma separated entries can be specified\00", section ".modinfo", align 1
@stub_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @pci_stub_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_pci_stub__238_91_pci_stub_init6 = internal global ptr @pci_stub_init, section ".initcall6.init", align 4
@__exitcall_pci_stub_exit = internal global ptr @pci_stub_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [35 x i8] c"pci_stub.file=drivers/pci/pci-stub\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [21 x i8] c"pci_stub.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [51 x i8] c"pci_stub.author=Chris Wright <chrisw@sous-sol.org>\00", section ".modinfo", align 1
@ids = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-stub\00", [23 x i8] zeroinitializer }, align 32
@pci_stub_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 31, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"claimed by stub\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pci_stub_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pci/pci-stub.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_stub_probe._entry_ptr = internal global ptr @pci_stub_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci_stub\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%x:%x:%x:%x:%x:%x\00", [46 x i8] zeroinitializer }, align 32
@pci_stub_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014pci-stub: invalid ID string \22%s\22\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci_stub_init\00", [18 x i8] zeroinitializer }, align 32
@pci_stub_init._entry_ptr = internal global ptr @pci_stub_init._entry, section ".printk_index", align 4
@pci_stub_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016pci-stub: add %04X:%04X sub=%04X:%04X cls=%08X/%08X\0A\00", [41 x i8] zeroinitializer }, align 32
@pci_stub_init._entry_ptr.13 = internal global ptr @pci_stub_init._entry.11, section ".printk_index", align 4
@pci_stub_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014pci-stub: failed to add dynamic ID (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@pci_stub_init._entry_ptr.16 = internal global ptr @pci_stub_init._entry.14, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"stub_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 35, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 36, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 31, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 46, i32 7 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 56, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 64, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 69, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 73, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [26 x i8] c"../drivers/pci/pci-stub.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 79, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_ids237, ptr @__UNIQUE_ID_idstype236, ptr @__UNIQUE_ID_license240, ptr @__exitcall_pci_stub_exit, ptr @__initcall__kmod_pci_stub__238_91_pci_stub_init6, ptr @__param_ids, ptr @pci_stub_exit, ptr @pci_stub_init._entry, ptr @pci_stub_init._entry.11, ptr @pci_stub_init._entry.14, ptr @pci_stub_init._entry_ptr, ptr @pci_stub_init._entry_ptr.13, ptr @pci_stub_init._entry_ptr.16, ptr @pci_stub_probe._entry, ptr @pci_stub_probe._entry_ptr, ptr @stub_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_stub_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_stub_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_stub_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_stub_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci_stub_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @stub_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_stub_init() #0 section ".init.text" align 64 {
entry:
  %p = alloca ptr, align 4
  %vendor = alloca i32, align 4
  %device = alloca i32, align 4
  %subvendor = alloca i32, align 4
  %subdevice = alloca i32, align 4
  %class = alloca i32, align 4
  %class_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #6
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @stub_driver, ptr noundef null, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup36_crit_edge

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup36

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @ids, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %if.end.cleanup36_crit_edge, label %if.end3

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup36

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ids, ptr %p, align 4
  %call444 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.7) #6
  %tobool5.not45 = icmp eq ptr %call444, null
  br i1 %tobool5.not45, label %if.end3.cleanup36_crit_edge, label %if.end3.while.body_crit_edge

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  br label %while.body

if.end3.cleanup36_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup36

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end3.while.body_crit_edge
  %call446 = phi ptr [ %call4, %cleanup.while.body_crit_edge ], [ %call444, %if.end3.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vendor) #6
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %vendor, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device) #6
  %3 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %device, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subvendor) #6
  %4 = ptrtoint ptr %subvendor to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %subvendor, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %subdevice) #6
  %5 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %subdevice, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class) #6
  %6 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %class, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %class_mask) #6
  %7 = ptrtoint ptr %class_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %class_mask, align 4
  %8 = ptrtoint ptr %call446 to i32
  call void @__asan_load1_noabort(i32 %8)
  %char0 = load i8, ptr %call446, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool7.not = icmp eq i8 %char0, 0
  br i1 %tobool7.not, label %while.body.cleanup_crit_edge, label %if.end9

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %call10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %call446, ptr noundef nonnull @.str.8, ptr noundef nonnull %vendor, ptr noundef nonnull %device, ptr noundef nonnull %subvendor, ptr noundef nonnull %subdevice, ptr noundef nonnull %class, ptr noundef nonnull %class_mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 2
  br i1 %cmp11, label %do.end, label %do.end18

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %call446) #9
  br label %cleanup

do.end18:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vendor, align 4
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %device, align 4
  %13 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %subvendor, align 4
  %15 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %subdevice, align 4
  %17 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %class, align 4
  %19 = ptrtoint ptr %class_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %class_mask, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #9
  %21 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vendor, align 4
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %device, align 4
  %25 = ptrtoint ptr %subvendor to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %subvendor, align 4
  %27 = ptrtoint ptr %subdevice to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %subdevice, align 4
  %29 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %class, align 4
  %31 = ptrtoint ptr %class_mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %class_mask, align 4
  %call21 = call i32 @pci_add_dynid(ptr noundef nonnull @stub_driver, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.end18.cleanup_crit_edge, label %do.end26

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end26:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call21) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end18.cleanup_crit_edge, %do.end, %while.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class_mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %class) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subdevice) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %subvendor) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vendor) #6
  %call4 = call ptr @strsep(ptr noundef nonnull %p, ptr noundef nonnull @.str.7) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cleanup.cleanup36_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.cleanup36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup.cleanup36_crit_edge, %if.end3.cleanup36_crit_edge, %if.end.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup36_crit_edge ], [ 0, %if.end.cleanup36_crit_edge ], [ 0, %if.end3.cleanup36_crit_edge ], [ 0, %cleanup.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_stub_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_add_dynid(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__param_ids, !1, !"__param_ids", i1 false, i1 false}
!1 = !{!"../drivers/pci/pci-stub.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_idstype236, !1, !"__UNIQUE_ID_idstype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ids237, !4, !"__UNIQUE_ID_ids237", i1 false, i1 false}
!4 = !{!"../drivers/pci/pci-stub.c", i32 25, i32 1}
!5 = !{ptr @__initcall__kmod_pci_stub__238_91_pci_stub_init6, !6, !"__initcall__kmod_pci_stub__238_91_pci_stub_init6", i1 false, i1 false}
!6 = !{!"../drivers/pci/pci-stub.c", i32 91, i32 1}
!7 = !{ptr @__exitcall_pci_stub_exit, !8, !"__exitcall_pci_stub_exit", i1 false, i1 false}
!8 = !{!"../drivers/pci/pci-stub.c", i32 92, i32 1}
!9 = !{ptr @__UNIQUE_ID_file239, !10, !"__UNIQUE_ID_file239", i1 false, i1 false}
!10 = !{!"../drivers/pci/pci-stub.c", i32 94, i32 1}
!11 = !{ptr @__UNIQUE_ID_license240, !10, !"__UNIQUE_ID_license240", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author241, !13, !"__UNIQUE_ID_author241", i1 false, i1 false}
!13 = !{!"../drivers/pci/pci-stub.c", i32 95, i32 1}
!14 = !{ptr @__param_str_ids, !1, !"__param_str_ids", i1 false, i1 false}
!15 = !{ptr @__param_string_ids, !1, !"__param_string_ids", i1 false, i1 false}
!16 = !{ptr @ids, !17, !"ids", i1 false, i1 false}
!17 = !{!"../drivers/pci/pci-stub.c", i32 22, i32 13}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/pci-stub.c", i32 36, i32 11}
!20 = !{ptr @stub_driver, !21, !"stub_driver", i1 false, i1 false}
!21 = !{!"../drivers/pci/pci-stub.c", i32 35, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/pci-stub.c", i32 31, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pci_stub_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @pci_stub_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/pci-stub.c", i32 46, i32 7}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/pci-stub.c", i32 56, i32 26}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/pci-stub.c", i32 64, i32 23}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/pci-stub.c", i32 69, i32 4}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pci_stub_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @pci_stub_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pci/pci-stub.c", i32 73, i32 3}
!43 = !{ptr @pci_stub_init._entry.11, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pci_stub_init._entry_ptr.13, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/pci-stub.c", i32 79, i32 4}
!47 = !{ptr @pci_stub_init._entry.14, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pci_stub_init._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
