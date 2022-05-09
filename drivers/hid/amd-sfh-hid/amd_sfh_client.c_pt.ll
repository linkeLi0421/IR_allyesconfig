; ModuleID = '/llk/IR_all_yes/drivers/hid/amd-sfh-hid/amd_sfh_client.c_pt.bc'
source_filename = "../drivers/hid/amd-sfh-hid/amd_sfh_client.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.request_list = type { ptr, %struct.list_head, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_hid_data = type { i32, ptr, %struct.wait_queue_head }
%struct.amdtp_cl_data = type { i8, i32, i32, i32, ptr, [5 x ptr], [5 x i32], [5 x ptr], [5 x ptr], [5 x i32], i32, [5 x i32], [5 x i32], [5 x i32], [5 x i8], [5 x i8], [5 x i8], [5 x ptr], [5 x i8], ptr, %struct.delayed_work, %struct.delayed_work }
%struct.amd_mp2_dev = type { ptr, ptr, ptr, ptr, %struct.amd_input_data, i32 }
%struct.amd_input_data = type { [5 x ptr], [5 x ptr] }
%struct.amd_mp2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }

@req_list = internal global { %struct.request_list, [16 x i8] } zeroinitializer, align 32
@amd_sfh_hid_client_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&cl_data->work)->work)\00", [53 x i8] zeroinitializer }, align 32
@amd_sfh_hid_client_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&cl_data->work)->timer\00", [39 x i8] zeroinitializer }, align 32
@amd_sfh_hid_client_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&cl_data->work_buffer)->work)\00", [46 x i8] zeroinitializer }, align 32
@amd_sfh_hid_client_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&cl_data->work_buffer)->timer\00", [32 x i8] zeroinitializer }, align 32
@amd_sfh_hid_client_init.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"amd_sfh\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amd_sfh_hid_client_init\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/hid/amd-sfh-hid/amd_sfh_client.c\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sid 0x%x status 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@amd_sfh_hid_client_init.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@amd_sfh_hid_client_deinit.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.11, ptr @.str.9, ptr @.str.12, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"amd_sfh_hid_client_deinit\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"stopping sid 0x%x status 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@amd_sfh_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013AMDSFH: Invalid report size\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"amd_sfh_work\00", [19 x i8] zeroinitializer }, align 32
@amd_sfh_work._entry_ptr = internal global ptr @amd_sfh_work._entry, section ".printk_index", align 4
@amd_sfh_work._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.9, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amd_sfh_work._entry_ptr.16 = internal global ptr @amd_sfh_work._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"req_list\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 31, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 159, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 160, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 222, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 260, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 102, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private constant [44 x i8] c"../drivers/hid/amd-sfh-hid/amd_sfh_client.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 111, i32 4 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @amd_sfh_work._entry, ptr @amd_sfh_work._entry.15, ptr @amd_sfh_work._entry_ptr, ptr @amd_sfh_work._entry_ptr.16, ptr @req_list, ptr @amd_sfh_hid_client_init.__key, ptr @.str, ptr @amd_sfh_hid_client_init.__key.1, ptr @.str.2, ptr @amd_sfh_hid_client_init.__key.3, ptr @.str.4, ptr @amd_sfh_hid_client_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @req_list to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sfh_hid_client_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sfh_hid_client_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sfh_hid_client_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sfh_hid_client_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sfh_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sfh_work._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amd_sfh_set_report(ptr noundef %hid, i32 noundef %report_id, i32 noundef %report_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %cli_data1 = getelementptr inbounds %struct.amdtp_hid_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cli_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cli_data1, align 4
  %num_hid_devices = getelementptr inbounds %struct.amdtp_cl_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_hid_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 7, i32 %i.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %7, %hid
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %cur_hid_dev = getelementptr inbounds %struct.amdtp_cl_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %cur_hid_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.012, ptr %cur_hid_dev, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  tail call void @amdtp_hid_wakeup(ptr noundef %hid) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_hid_wakeup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amd_sfh_get_report(ptr noundef %hid, i32 noundef %report_id, i32 noundef %report_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 42
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 8
  %cli_data1 = getelementptr inbounds %struct.amdtp_hid_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cli_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cli_data1, align 4
  %num_hid_devices = getelementptr inbounds %struct.amdtp_cl_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_hid_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp42.not = icmp eq i32 %5, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 7, i32 %i.043
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %7, %hid
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then.cleanup17_crit_edge, label %if.end

if.then.cleanup17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup17

if.end:                                           ; preds = %if.then
  %conv = trunc i32 %i.043 to i8
  %current_index = getelementptr inbounds %struct.request_list, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %current_index to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %current_index, align 1
  %arrayidx4 = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 16, i32 %i.043
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  %sensor_idx5 = getelementptr inbounds %struct.request_list, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %sensor_idx5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %sensor_idx5, align 1
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hid, ptr %call7.i.i, align 8
  %conv7 = trunc i32 %report_type to i8
  %report_type8 = getelementptr inbounds %struct.request_list, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %report_type8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %report_type8, align 2
  %conv9 = trunc i32 %report_id to i8
  %report_id10 = getelementptr inbounds %struct.request_list, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %report_id10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %report_id10, align 4
  %arrayidx13 = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 15, i32 %i.043
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr %struct.amdtp_cl_data, ptr %3, i32 0, i32 18, i32 %i.043
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx14, align 1
  %list = getelementptr inbounds %struct.request_list, ptr %call7.i.i, i32 0, i32 1
  %18 = load ptr, ptr getelementptr inbounds (%struct.request_list, ptr @req_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef getelementptr inbounds (%struct.request_list, ptr @req_list, i32 0, i32 1), ptr noundef %18) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.request_list, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr getelementptr inbounds (%struct.request_list, ptr @req_list, i32 0, i32 1), ptr %prev3.i.i, align 8
  store volatile ptr %list, ptr getelementptr inbounds (%struct.request_list, ptr @req_list, i32 0, i32 1), align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.i.i, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %work = getelementptr inbounds %struct.amdtp_cl_data, ptr %3, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i40 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef 0) #4
  br label %cleanup17

cleanup17:                                        ; preds = %for.end, %if.then.cleanup17_crit_edge
  %retval.1 = phi i32 [ 0, %for.end ], [ -12, %if.then.cleanup17_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amd_sfh_wait_for_response(ptr noundef %mp2, i8 noundef zeroext %sid, i32 noundef %sensor_sts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mp2_ops = getelementptr inbounds %struct.amd_mp2_dev, ptr %mp2, i32 0, i32 3
  %0 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp2_ops, align 4
  %response = getelementptr inbounds %struct.amd_mp2_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %response, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %3(ptr noundef %mp2, i8 noundef zeroext %sid, i32 noundef %sensor_sts) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sensor_sts.addr.0 = phi i32 [ %call, %if.then ], [ %sensor_sts, %entry.if.end_crit_edge ]
  ret i32 %sensor_sts.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amd_sfh_hid_client_init(ptr noundef %privdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %in_data1 = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 4
  %cl_data2 = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 1
  %0 = ptrtoint ptr %cl_data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_data2, align 4
  %2 = ptrtoint ptr %privdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %sensor_idx = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 16
  %call = tail call i32 @amd_mp2_get_sensor_num(ptr noundef %privdata, ptr noundef %sensor_idx) #4
  %num_hid_devices = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %num_hid_devices, align 4
  %work = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 20
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #4
  %5 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 20, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @amd_sfh_hid_client_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry12 = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 20, i32 0, i32 1
  %6 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 20, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 20, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @amd_sfh_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 20, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @amd_sfh_hid_client_init.__key.1) #4
  %work_buffer = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 21
  tail call void @__init_work(ptr noundef %work_buffer, i32 noundef 0) #4
  %9 = ptrtoint ptr %work_buffer to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work_buffer, align 4
  %lockdep_map31 = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 21, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map31, ptr noundef nonnull @.str.4, ptr noundef nonnull @amd_sfh_hid_client_init.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry34 = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 21, i32 0, i32 1
  %10 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i320 = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 21, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i320 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry34, ptr %prev.i320, align 4
  %func37 = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 21, i32 0, i32 2
  %12 = ptrtoint ptr %func37 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @amd_sfh_work_buffer, ptr %func37, align 4
  %timer42 = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 21, i32 1
  tail call void @init_timer_key(ptr noundef %timer42, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @amd_sfh_hid_client_init.__key.5) #4
  store volatile ptr getelementptr inbounds (%struct.request_list, ptr @req_list, i32 0, i32 1), ptr getelementptr inbounds (%struct.request_list, ptr @req_list, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.request_list, ptr @req_list, i32 0, i32 1), ptr getelementptr inbounds (%struct.request_list, ptr @req_list, i32 0, i32 1, i32 1), align 4
  %in_data47 = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %in_data47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %in_data1, ptr %in_data47, align 4
  %14 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_hid_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp347.not = icmp eq i32 %15, 0
  br i1 %cmp347.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cur_hid_dev = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 1
  %mp2_ops = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0348 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx49 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 11, i32 %i.0348
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev3, i32 noundef 32, ptr noundef %arrayidx49, i32 noundef 3264, i32 noundef 0) #4
  %arrayidx51 = getelementptr [5 x ptr], ptr %in_data1, i32 0, i32 %i.0348
  %16 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %arrayidx51, align 4
  %arrayidx52 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 12, i32 %i.0348
  %17 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %arrayidx52, align 4
  %arrayidx53 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 13, i32 %i.0348
  %18 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx53, align 4
  %19 = ptrtoint ptr %cur_hid_dev to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.0348, ptr %cur_hid_dev, align 4
  %arrayidx55 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 16, i32 %i.0348
  %20 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx55, align 1
  %conv = zext i8 %21 to i32
  %call56 = tail call i32 @get_descr_sz(i32 noundef %conv, i32 noundef 1) #4
  %arrayidx57 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 6, i32 %i.0348
  %22 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call56, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool.not = icmp eq i32 %call56, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call61 = tail call i32 @get_descr_sz(i32 noundef %conv, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end.cleanup_crit_edge, label %if.end64

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end64:                                         ; preds = %if.end
  %call66 = tail call i32 @get_descr_sz(i32 noundef %conv, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end64.cleanup_crit_edge, label %if.end69

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end69:                                         ; preds = %if.end64
  %call.i321 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef %call61, i32 noundef 3520) #4
  %arrayidx71 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 17, i32 %i.0348
  %23 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i321, ptr %arrayidx71, align 4
  %tobool74.not = icmp eq ptr %call.i321, null
  br i1 %tobool74.not, label %if.end69.cleanup_crit_edge, label %if.end76

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end76:                                         ; preds = %if.end69
  %call.i322 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef %call66, i32 noundef 3520) #4
  %arrayidx78 = getelementptr %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 4, i32 1, i32 %i.0348
  %24 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i322, ptr %arrayidx78, align 4
  %tobool81.not = icmp eq ptr %call.i322, null
  br i1 %tobool81.not, label %if.end76.cleanup_crit_edge, label %if.end83

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end83:                                         ; preds = %if.end76
  %25 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx49, align 4
  %27 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx57, align 4
  %call.i323 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef %28, i32 noundef 3520) #4
  %arrayidx90 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 5, i32 %i.0348
  %29 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i323, ptr %arrayidx90, align 4
  %tobool93.not = icmp eq ptr %call.i323, null
  br i1 %tobool93.not, label %if.end83.cleanup_crit_edge, label %if.end95

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end95:                                         ; preds = %if.end83
  %call99 = tail call i32 @get_report_descriptor(i32 noundef %conv, ptr noundef nonnull %call.i323) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end95.cleanup193_crit_edge

if.end95.cleanup193_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup193

if.end102:                                        ; preds = %if.end95
  %30 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mp2_ops, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %info.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %conv, 24
  %info.sroa.0.sroa.0.0.insert.insert = or i32 %info.sroa.0.sroa.0.0.insert.shift, 16777215
  %.fca.0.insert = insertvalue [3 x i32] poison, i32 %info.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue [3 x i32] %.fca.0.insert, i32 200, 1
  %.fca.2.insert = insertvalue [3 x i32] %.fca.1.insert, i32 %26, 2
  tail call void %33(ptr noundef %privdata, [3 x i32] %.fca.2.insert) #4
  %34 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mp2_ops, align 4
  %response.i = getelementptr inbounds %struct.amd_mp2_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %response.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end102.if.then108_crit_edge, label %amd_sfh_wait_for_response.exit

if.end102.if.then108_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then108

amd_sfh_wait_for_response.exit:                   ; preds = %if.end102
  %38 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx55, align 1
  %call.i324 = tail call i32 %37(ptr noundef %privdata, i8 noundef zeroext %39, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i324)
  %cmp106 = icmp eq i32 %call.i324, 4
  br i1 %cmp106, label %amd_sfh_wait_for_response.exit.if.then108_crit_edge, label %amd_sfh_wait_for_response.exit.do.body144_crit_edge

amd_sfh_wait_for_response.exit.do.body144_crit_edge: ; preds = %amd_sfh_wait_for_response.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body144

amd_sfh_wait_for_response.exit.if.then108_crit_edge: ; preds = %amd_sfh_wait_for_response.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then108

if.then108:                                       ; preds = %amd_sfh_wait_for_response.exit.if.then108_crit_edge, %if.end102.if.then108_crit_edge
  %40 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %arrayidx52, align 4
  %41 = ptrtoint ptr %cur_hid_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cur_hid_dev, align 4
  %call112 = tail call i32 @amdtp_hid_probe(i32 noundef %42, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.then108.do.body144_crit_edge, label %if.then114

if.then108.do.body144_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body144

if.then114:                                       ; preds = %if.then108
  %43 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mp2_ops, align 4
  %stop = getelementptr inbounds %struct.amd_mp2_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stop, align 4
  %47 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx55, align 1
  %conv118 = zext i8 %48 to i16
  tail call void %46(ptr noundef %privdata, i16 noundef zeroext %conv118) #4
  %49 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mp2_ops, align 4
  %response.i326 = getelementptr inbounds %struct.amd_mp2_ops, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %response.i326 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %response.i326, align 4
  %tobool.not.i327 = icmp eq ptr %52, null
  br i1 %tobool.not.i327, label %if.then114.if.then124_crit_edge, label %amd_sfh_wait_for_response.exit331

if.then114.if.then124_crit_edge:                  ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then124

amd_sfh_wait_for_response.exit331:                ; preds = %if.then114
  %53 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx55, align 1
  %call.i328 = tail call i32 %52(ptr noundef %privdata, i8 noundef zeroext %54, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i328)
  %cmp122.not = icmp eq i32 %call.i328, 4
  br i1 %cmp122.not, label %amd_sfh_wait_for_response.exit331.do.body128_crit_edge, label %amd_sfh_wait_for_response.exit331.if.then124_crit_edge

amd_sfh_wait_for_response.exit331.if.then124_crit_edge: ; preds = %amd_sfh_wait_for_response.exit331
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then124

amd_sfh_wait_for_response.exit331.do.body128_crit_edge: ; preds = %amd_sfh_wait_for_response.exit331
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body128

if.then124:                                       ; preds = %amd_sfh_wait_for_response.exit331.if.then124_crit_edge, %if.then114.if.then124_crit_edge
  %55 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 5, ptr %arrayidx52, align 4
  br label %do.body128

do.body128:                                       ; preds = %if.then124, %amd_sfh_wait_for_response.exit331.do.body128_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd_sfh_hid_client_init.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amd_sfh_hid_client_init, %if.then133)) #4
          to label %cleanup [label %if.then133], !srcloc !41

if.then133:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx55, align 1
  %conv136 = zext i8 %57 to i32
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx52, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd_sfh_hid_client_init.__UNIQUE_ID_ddebug236, ptr noundef %dev3, ptr noundef nonnull @.str.10, i32 noundef %conv136, i32 noundef %59) #4
  br label %cleanup

do.body144:                                       ; preds = %if.then108.do.body144_crit_edge, %amd_sfh_wait_for_response.exit.do.body144_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd_sfh_hid_client_init.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amd_sfh_hid_client_init, %if.then156)) #4
          to label %for.inc [label %if.then156], !srcloc !41

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx55, align 1
  %conv159 = zext i8 %61 to i32
  %62 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx52, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd_sfh_hid_client_init.__UNIQUE_ID_ddebug237, ptr noundef %dev3, ptr noundef nonnull @.str.10, i32 noundef %conv159, i32 noundef %63) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then156, %do.body144
  %inc = add nuw i32 %i.0348, 1
  %64 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_hid_devices, align 4
  %cmp = icmp ult i32 %inc, %65
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %66 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %work_buffer, i32 noundef 20) #4
  br label %cleanup193

cleanup:                                          ; preds = %if.then133, %do.body128, %if.end83.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %rc.0 = phi i32 [ %call112, %if.then133 ], [ %call112, %do.body128 ], [ -12, %if.end83.cleanup_crit_edge ], [ -12, %if.end76.cleanup_crit_edge ], [ -12, %if.end69.cleanup_crit_edge ], [ -22, %if.end64.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  %67 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_hid_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp170349.not = icmp eq i32 %68, 0
  br i1 %cmp170349.not, label %cleanup.cleanup193_crit_edge, label %cleanup.for.body172_crit_edge

cleanup.for.body172_crit_edge:                    ; preds = %cleanup
  br label %for.body172

cleanup.cleanup193_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup193

for.body172:                                      ; preds = %if.end183.for.body172_crit_edge, %cleanup.for.body172_crit_edge
  %i.1350 = phi i32 [ %inc191, %if.end183.for.body172_crit_edge ], [ 0, %cleanup.for.body172_crit_edge ]
  %arrayidx174 = getelementptr [5 x ptr], ptr %in_data1, i32 0, i32 %i.1350
  %69 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx174, align 4
  %tobool175.not = icmp eq ptr %70, null
  br i1 %tobool175.not, label %for.body172.if.end183_crit_edge, label %if.then176

for.body172.if.end183_crit_edge:                  ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

if.then176:                                       ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %privdata to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %privdata, align 4
  %dev178 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %arrayidx182 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 11, i32 %i.1350
  %73 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx182, align 4
  tail call void @dma_free_attrs(ptr noundef %dev178, i32 noundef 32, ptr noundef nonnull %70, i32 noundef %74, i32 noundef 0) #4
  br label %if.end183

if.end183:                                        ; preds = %if.then176, %for.body172.if.end183_crit_edge
  %arrayidx185 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 17, i32 %i.1350
  %75 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx185, align 4
  tail call void @devm_kfree(ptr noundef %dev3, ptr noundef %76) #4
  %arrayidx187 = getelementptr %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 4, i32 1, i32 %i.1350
  %77 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx187, align 4
  tail call void @devm_kfree(ptr noundef %dev3, ptr noundef %78) #4
  %arrayidx189 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 5, i32 %i.1350
  %79 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx189, align 4
  tail call void @devm_kfree(ptr noundef %dev3, ptr noundef %80) #4
  %inc191 = add nuw i32 %i.1350, 1
  %81 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_hid_devices, align 4
  %cmp170 = icmp ult i32 %inc191, %82
  br i1 %cmp170, label %if.end183.for.body172_crit_edge, label %if.end183.cleanup193_crit_edge

if.end183.cleanup193_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup193

if.end183.for.body172_crit_edge:                  ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body172

cleanup193:                                       ; preds = %if.end183.cleanup193_crit_edge, %cleanup.cleanup193_crit_edge, %for.end, %if.end95.cleanup193_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %rc.0, %cleanup.cleanup193_crit_edge ], [ %rc.0, %if.end183.cleanup193_crit_edge ], [ %call99, %if.end95.cleanup193_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amd_mp2_get_sensor_num(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_sfh_work(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %in_data1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %in_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_data1, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.request_list, ptr @req_list, i32 0, i32 1, i32 1), align 4
  %add.ptr4 = getelementptr i8, ptr %2, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %current_index5 = getelementptr i8, ptr %2, i32 11
  %11 = ptrtoint ptr %current_index5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %current_index5, align 1
  %sensor_idx = getelementptr i8, ptr %2, i32 9
  %13 = ptrtoint ptr %sensor_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sensor_idx, align 1
  %report_id6 = getelementptr i8, ptr %2, i32 8
  %15 = ptrtoint ptr %report_id6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %report_id6, align 4
  %report_type = getelementptr i8, ptr %2, i32 10
  %17 = ptrtoint ptr %report_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %report_type, align 2
  tail call void @kfree(ptr noundef %add.ptr4) #4
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %list_del.exit.if.end53_crit_edge [
    i8 2, label %if.then
    i8 0, label %if.then28
  ]

list_del.exit.if.end53_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then:                                          ; preds = %list_del.exit
  %conv8 = zext i8 %14 to i32
  %conv9 = zext i8 %16 to i32
  %feature_report = getelementptr i8, ptr %work, i32 -32
  %idxprom = zext i8 %12 to i32
  %arrayidx = getelementptr [5 x ptr], ptr %feature_report, i32 0, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call = tail call zeroext i8 @get_feature_report(i32 noundef %conv8, i32 noundef %conv9, ptr noundef %21) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %do.end, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %hid_sensor_hubs = getelementptr i8, ptr %work, i32 -172
  %arrayidx12 = getelementptr [5 x ptr], ptr %hid_sensor_hubs, i32 0, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12, align 4
  %report_type13 = getelementptr i8, ptr %work, i32 -48
  %arrayidx15 = getelementptr [5 x i8], ptr %report_type13, i32 0, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %25 to i32
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %conv20 = zext i8 %call to i32
  %call21 = tail call i32 @hid_input_report(ptr noundef %23, i32 noundef %conv16, ptr noundef %27, i32 noundef %conv20, i32 noundef 0) #4
  br label %if.end53

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.end53

if.then28:                                        ; preds = %list_del.exit
  %conv29 = zext i8 %14 to i32
  %conv30 = zext i8 %16 to i32
  %call31 = tail call zeroext i8 @get_input_report(i8 noundef zeroext %12, i32 noundef %conv29, i32 noundef %conv30, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call31)
  %tobool32.not = icmp eq i8 %call31, 0
  br i1 %tobool32.not, label %do.end48, label %if.then33

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %hid_sensor_hubs34 = getelementptr i8, ptr %work, i32 -172
  %idxprom35 = zext i8 %12 to i32
  %arrayidx36 = getelementptr [5 x ptr], ptr %hid_sensor_hubs34, i32 0, i32 %idxprom35
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx36, align 4
  %report_type37 = getelementptr i8, ptr %work, i32 -48
  %arrayidx39 = getelementptr [5 x i8], ptr %report_type37, i32 0, i32 %idxprom35
  %30 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %31 to i32
  %arrayidx42 = getelementptr %struct.amd_input_data, ptr %1, i32 0, i32 1, i32 %idxprom35
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx42, align 4
  %conv43 = zext i8 %call31 to i32
  %call44 = tail call i32 @hid_input_report(ptr noundef %29, i32 noundef %conv40, ptr noundef %33, i32 noundef %conv43, i32 noundef 0) #4
  br label %if.end53

do.end48:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.end53

if.end53:                                         ; preds = %do.end48, %if.then33, %do.end, %if.then10, %list_del.exit.if.end53_crit_edge
  %conv54 = zext i8 %12 to i32
  %cur_hid_dev = getelementptr i8, ptr %work, i32 -228
  %34 = ptrtoint ptr %cur_hid_dev to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv54, ptr %cur_hid_dev, align 4
  %sensor_requested_cnt = getelementptr i8, ptr %work, i32 -68
  %arrayidx56 = getelementptr [5 x i32], ptr %sensor_requested_cnt, i32 0, i32 %conv54
  %35 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx56, align 4
  %hid_sensor_hubs57 = getelementptr i8, ptr %work, i32 -172
  %arrayidx59 = getelementptr [5 x ptr], ptr %hid_sensor_hubs57, i32 0, i32 %conv54
  %36 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx59, align 4
  tail call void @amdtp_hid_wakeup(ptr noundef %37) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd_sfh_work_buffer(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %in_data1 = getelementptr i8, ptr %work, i32 -104
  %0 = ptrtoint ptr %in_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_data1, align 4
  %num_hid_devices = getelementptr i8, ptr %work, i32 -320
  %2 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_hid_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27.not = icmp eq i32 %3, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sensor_sts = getelementptr i8, ptr %work, i32 -188
  %sensor_idx = getelementptr i8, ptr %work, i32 -138
  %report_id = getelementptr i8, ptr %work, i32 -143
  %hid_sensor_hubs = getelementptr i8, ptr %work, i32 -272
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [5 x i32], ptr %sensor_sts, i32 0, i32 %i.028
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp2 = icmp eq i32 %5, 4
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %i.028 to i8
  %arrayidx3 = getelementptr [5 x i8], ptr %sensor_idx, i32 0, i32 %i.028
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %arrayidx5 = getelementptr [5 x i8], ptr %report_id, i32 0, i32 %i.028
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %call = tail call zeroext i8 @get_input_report(i8 noundef zeroext %conv, i32 noundef %conv4, i32 noundef %conv6, ptr noundef %1) #4
  %arrayidx7 = getelementptr [5 x ptr], ptr %hid_sensor_hubs, i32 0, i32 %i.028
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr %struct.amd_input_data, ptr %1, i32 0, i32 1, i32 %i.028
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  %conv9 = zext i8 %call to i32
  %call10 = tail call i32 @hid_input_report(ptr noundef %11, i32 noundef 0, ptr noundef %13, i32 noundef %conv9, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.028, 1
  %14 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_hid_devices, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef 20) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_descr_sz(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_report_descriptor(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_hid_probe(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amd_sfh_hid_client_deinit(ptr noundef %privdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_data1 = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 1
  %0 = ptrtoint ptr %cl_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_data1, align 4
  %in_data2 = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %in_data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_data2, align 4
  %num_hid_devices = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_hid_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp75.not = icmp eq i32 %5, 0
  br i1 %cmp75.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mp2_ops = getelementptr inbounds %struct.amd_mp2_dev, ptr %privdata, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 12, i32 %i.076
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp3 = icmp eq i32 %7, 4
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  %8 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mp2_ops, align 4
  %stop = getelementptr inbounds %struct.amd_mp2_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop, align 4
  %arrayidx4 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 16, i32 %i.076
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %13 to i16
  tail call void %11(ptr noundef %privdata, i16 noundef zeroext %conv) #4
  %14 = ptrtoint ptr %mp2_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mp2_ops, align 4
  %response.i = getelementptr inbounds %struct.amd_mp2_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %response.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.then.if.then9_crit_edge, label %amd_sfh_wait_for_response.exit

if.then.if.then9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

amd_sfh_wait_for_response.exit:                   ; preds = %if.then
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4, align 1
  %call.i = tail call i32 %17(ptr noundef %privdata, i8 noundef zeroext %19, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp7.not = icmp eq i32 %call.i, 4
  br i1 %cmp7.not, label %amd_sfh_wait_for_response.exit.do.body_crit_edge, label %amd_sfh_wait_for_response.exit.if.then9_crit_edge

amd_sfh_wait_for_response.exit.if.then9_crit_edge: ; preds = %amd_sfh_wait_for_response.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

amd_sfh_wait_for_response.exit.do.body_crit_edge: ; preds = %amd_sfh_wait_for_response.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then9:                                         ; preds = %amd_sfh_wait_for_response.exit.if.then9_crit_edge, %if.then.if.then9_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %arrayidx, align 4
  br label %do.body

do.body:                                          ; preds = %if.then9, %amd_sfh_wait_for_response.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amd_sfh_hid_client_deinit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@amd_sfh_hid_client_deinit, %if.then15)) #4
          to label %for.inc [label %if.then15], !srcloc !41

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %privdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %privdata, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4, align 1
  %conv18 = zext i8 %24 to i32
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amd_sfh_hid_client_deinit.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv18, i32 noundef %26) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %do.body, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.076, 1
  %27 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_hid_devices, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %work = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 20
  %call23 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #4
  %work_buffer = getelementptr inbounds %struct.amdtp_cl_data, ptr %1, i32 0, i32 21
  %call24 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work_buffer) #4
  tail call void @amdtp_hid_remove(ptr noundef %1) #4
  %29 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_hid_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2778.not = icmp eq i32 %30, 0
  br i1 %cmp2778.not, label %for.end.for.end41_crit_edge, label %for.end.for.body29_crit_edge

for.end.for.body29_crit_edge:                     ; preds = %for.end
  br label %for.body29

for.end.for.end41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end41

for.body29:                                       ; preds = %for.inc39.for.body29_crit_edge, %for.end.for.body29_crit_edge
  %i.179 = phi i32 [ %inc40, %for.inc39.for.body29_crit_edge ], [ 0, %for.end.for.body29_crit_edge ]
  %arrayidx30 = getelementptr [5 x ptr], ptr %3, i32 0, i32 %i.179
  %31 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %32, null
  br i1 %tobool31.not, label %for.body29.for.inc39_crit_edge, label %if.then32

for.body29.for.inc39_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc39

if.then32:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %privdata to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %privdata, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %arrayidx37 = getelementptr %struct.amdtp_cl_data, ptr %1, i32 0, i32 11, i32 %i.179
  %35 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx37, align 4
  tail call void @dma_free_attrs(ptr noundef %dev34, i32 noundef 32, ptr noundef nonnull %32, i32 noundef %36, i32 noundef 0) #4
  br label %for.inc39

for.inc39:                                        ; preds = %if.then32, %for.body29.for.inc39_crit_edge
  %inc40 = add nuw i32 %i.179, 1
  %37 = ptrtoint ptr %num_hid_devices to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_hid_devices, align 4
  %cmp27 = icmp ult i32 %inc40, %38
  br i1 %cmp27, label %for.inc39.for.body29_crit_edge, label %for.inc39.for.end41_crit_edge

for.inc39.for.end41_crit_edge:                    ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end41

for.inc39.for.body29_crit_edge:                   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29

for.end41:                                        ; preds = %for.inc39.for.end41_crit_edge, %for.end.for.end41_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_hid_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @get_feature_report(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_input_report(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @get_input_report(i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @amd_sfh_hid_client_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_client.c", i32 159, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @amd_sfh_hid_client_init.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @amd_sfh_hid_client_init.__key.3, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_client.c", i32 160, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @amd_sfh_hid_client_init.__key.5, !6, !"__key", i1 false, i1 false}
!9 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_client.c", i32 222, i32 5}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.10, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @amd_sfh_hid_client_init.__UNIQUE_ID_ddebug236, !11, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!16 = !{ptr @amd_sfh_hid_client_init.__UNIQUE_ID_ddebug237, !17, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!17 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_client.c", i32 227, i32 3}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_client.c", i32 260, i32 4}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @amd_sfh_hid_client_deinit.__UNIQUE_ID_ddebug238, !19, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!22 = !{ptr @req_list, !23, !"req_list", i1 false, i1 false}
!23 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_client.c", i32 31, i32 28}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_client.c", i32 102, i32 4}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @amd_sfh_work._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @amd_sfh_work._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @amd_sfh_work._entry.15, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/hid/amd-sfh-hid/amd_sfh_client.c", i32 111, i32 4}
!31 = !{ptr @amd_sfh_work._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148328150, i64 2148328155, i64 2148328168, i64 2148328212, i64 2148328246, i64 2148328267}
