; ModuleID = '/llk/IR_all_yes/drivers/soc/tegra/powergate-bpmp.c_pt.bc'
source_filename = "../drivers/soc/tegra/powergate-bpmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_bpmp = type { ptr, ptr, ptr, %struct.anon.45, %struct.spinlock, ptr, ptr, ptr, %struct.anon.46, %struct.list_head, %struct.spinlock, ptr, i32, %struct.reset_controller_dev, %struct.genpd_onecell_data, ptr }
%struct.anon.45 = type { %struct.mbox_client, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.anon.46 = type { ptr, ptr, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
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
%struct.tegra_powergate_info = type { i32, ptr }
%struct.mrq_pg_response = type { %union.anon.50 }
%union.anon.50 = type { %struct.cmd_pg_get_state_response, [36 x i8] }
%struct.cmd_pg_get_state_response = type { i32 }
%struct.mrq_pg_request = type { i32, i32, %union.anon.51 }
%union.anon.51 = type { %struct.cmd_pg_query_abi_request }
%struct.cmd_pg_query_abi_request = type { i32 }
%struct.tegra_bpmp_message = type { i32, %struct.anon.52, %struct.anon.53 }
%struct.anon.52 = type { ptr, i32 }
%struct.anon.53 = type { ptr, i32, i32 }
%struct.tegra_powergate = type { %struct.generic_pm_domain, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.47 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.47 = type { %struct.mutex }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@tegra_bpmp_init_powergates.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powergate_bpmp\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_bpmp_init_powergates\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/soc/tegra/powergate-bpmp.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%u power domains probed\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_bpmp_init_powergates._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to add power domain provider: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_bpmp_init_powergates._entry_ptr = internal global ptr @tegra_bpmp_init_powergates._entry, section ".printk_index", align 4
@tegra_bpmp_probe_powergates.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_bpmp_probe_powergates\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"maximum powergate ID: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_bpmp_probe_powergates.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"holes: %u\0A\00", [21 x i8] zeroinitializer }, align 32
@tegra_bpmp_add_powergates.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_bpmp_add_powergates\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"added power domain %s\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_powergate_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to remove power domain %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_powergate_remove\00", [41 x i8] zeroinitializer }, align 32
@tegra_powergate_remove._entry_ptr = internal global ptr @tegra_powergate_remove._entry, section ".printk_index", align 4
@tegra_bpmp_remove_powergates.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra_bpmp_remove_powergates\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"removing power domain %s\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 341, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 351, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 226, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 245, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 273, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 205, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [38 x i8] c"../drivers/soc/tegra/powergate-bpmp.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 300, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @tegra_bpmp_init_powergates._entry, ptr @tegra_bpmp_init_powergates._entry_ptr, ptr @tegra_powergate_remove._entry, ptr @tegra_powergate_remove._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_init_powergates._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_powergate_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_bpmp_init_powergates(ptr noundef %bpmp) local_unnamed_addr #0 align 64 {
entry:
  %powergates = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %powergates) #7
  %4 = ptrtoint ptr %powergates to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %powergates, align 4, !annotation !41
  %call = call fastcc i32 @tegra_bpmp_probe_powergates(ptr noundef %bpmp, ptr noundef nonnull %powergates)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_init_powergates.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_bpmp_init_powergates, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !42

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_init_powergates.__UNIQUE_ID_ddebug187, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %5 = ptrtoint ptr %powergates to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %powergates, align 4
  %call8 = tail call fastcc i32 @tegra_bpmp_add_powergates(ptr noundef %bpmp, ptr noundef %6, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end.free_crit_edge, label %if.end11

do.end.free_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end11:                                         ; preds = %do.end
  %genpd = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 14
  %xlate = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %xlate to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tegra_powergate_xlate, ptr %xlate, align 4
  %call13 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %3, ptr noundef %genpd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end18, label %if.end11.free_crit_edge

if.end11.free_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %call13) #10
  tail call fastcc void @tegra_bpmp_remove_powergates(ptr noundef %bpmp)
  br label %free

free:                                             ; preds = %do.end18, %if.end11.free_crit_edge, %do.end.free_crit_edge
  %err.0 = phi i32 [ %call8, %do.end.free_crit_edge ], [ %call13, %do.end18 ], [ %call13, %if.end11.free_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2044.not = icmp eq i32 %call, 0
  br i1 %cmp2044.not, label %free.for.end_crit_edge, label %free.for.body_crit_edge

free.for.body_crit_edge:                          ; preds = %free
  br label %for.body

free.for.end_crit_edge:                           ; preds = %free
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %free.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %free.for.body_crit_edge ]
  %name = getelementptr %struct.tegra_powergate_info, ptr %6, i32 %i.045, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %9) #7
  %inc = add nuw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %free.for.end_crit_edge
  tail call void @kfree(ptr noundef %6) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %powergates) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_bpmp_probe_powergates(ptr noundef %bpmp, ptr nocapture noundef writeonly %powergatesp) unnamed_addr #0 align 64 {
entry:
  %response.i68 = alloca %struct.mrq_pg_response, align 1
  %request.i69 = alloca %struct.mrq_pg_request, align 4
  %msg.i70 = alloca %struct.tegra_bpmp_message, align 4
  %response.i = alloca %struct.mrq_pg_response, align 4
  %request.i = alloca %struct.mrq_pg_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %response.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request.i) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %0 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %3 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %4 = getelementptr inbounds i8, ptr %request.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 4
  %6 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %request.i, align 4
  %7 = call ptr @memset(ptr %response.i, i32 0, i32 40)
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 66, ptr %msg.i, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %request.i, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 12, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %response.i, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 40, ptr %3, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %bpmp, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tegra_bpmp_powergate_get_max_id.exit.thread_crit_edge, label %if.else.i

entry.tegra_bpmp_powergate_get_max_id.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_bpmp_powergate_get_max_id.exit.thread

if.else.i:                                        ; preds = %entry
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6.i = icmp slt i32 %16, 0
  br i1 %cmp6.i, label %if.else.i.tegra_bpmp_powergate_get_max_id.exit.thread_crit_edge, label %tegra_bpmp_powergate_get_max_id.exit

if.else.i.tegra_bpmp_powergate_get_max_id.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_bpmp_powergate_get_max_id.exit.thread

tegra_bpmp_powergate_get_max_id.exit.thread:      ; preds = %if.else.i.tegra_bpmp_powergate_get_max_id.exit.thread_crit_edge, %entry.tegra_bpmp_powergate_get_max_id.exit.thread_crit_edge
  %retval.0.i67.ph = phi i32 [ -22, %if.else.i.tegra_bpmp_powergate_get_max_id.exit.thread_crit_edge ], [ %call.i, %entry.tegra_bpmp_powergate_get_max_id.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %response.i) #7
  br label %cleanup40

tegra_bpmp_powergate_get_max_id.exit:             ; preds = %if.else.i
  %17 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %response.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %response.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %tegra_bpmp_powergate_get_max_id.exit.cleanup40_crit_edge, label %if.end

tegra_bpmp_powergate_get_max_id.exit.cleanup40_crit_edge: ; preds = %tegra_bpmp_powergate_get_max_id.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

if.end:                                           ; preds = %tegra_bpmp_powergate_get_max_id.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_probe_powergates.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_bpmp_probe_powergates, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !42

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_probe_powergates.__UNIQUE_ID_ddebug183, ptr noundef %20, ptr noundef nonnull @.str.8, i32 noundef %18) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %add = add nuw i32 %18, 1
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #7
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %do.end.cleanup40_crit_edge, label %if.end7.i.i, !prof !43

do.end.cleanup40_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

if.end7.i.i:                                      ; preds = %do.end
  %23 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #11
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup40_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup40_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

for.cond.preheader:                               ; preds = %if.end7.i.i
  %24 = getelementptr inbounds %struct.mrq_pg_request, ptr %request.i69, i32 0, i32 1
  %25 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i70, i32 0, i32 1
  %26 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i70, i32 0, i32 1, i32 1
  %27 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i70, i32 0, i32 2
  %28 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i70, i32 0, i32 2, i32 1
  %29 = getelementptr inbounds i8, ptr %request.i69, i32 8
  %30 = getelementptr inbounds i8, ptr %msg.i70, i32 20
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %id.089 = phi i32 [ 0, %for.cond.preheader ], [ %inc22, %cleanup.for.body_crit_edge ]
  %num_holes.086 = phi i32 [ 0, %for.cond.preheader ], [ %num_holes.1, %cleanup.for.body_crit_edge ]
  %count.084 = phi i32 [ 0, %for.cond.preheader ], [ %count.1, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tegra_powergate_info, ptr %call8.i.i, i32 %count.084
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %response.i68) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request.i69) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i70) #7
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %29, align 4
  %32 = ptrtoint ptr %request.i69 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %request.i69, align 4
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %id.089, ptr %24, align 4
  %34 = call ptr @memset(ptr %response.i68, i32 0, i32 40)
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %30, align 4
  %36 = ptrtoint ptr %msg.i70 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 66, ptr %msg.i70, align 4
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %request.i69, ptr %25, align 4
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 12, ptr %26, align 4
  %39 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %response.i68, ptr %27, align 4
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 40, ptr %28, align 4
  %call.i71 = call i32 @tegra_bpmp_transfer(ptr noundef %bpmp, ptr noundef nonnull %msg.i70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp slt i32 %call.i71, 0
  br i1 %cmp.i72, label %for.body.tegra_bpmp_powergate_get_name.exit.thread_crit_edge, label %lor.lhs.false.i

for.body.tegra_bpmp_powergate_get_name.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_bpmp_powergate_get_name.exit.thread

lor.lhs.false.i:                                  ; preds = %for.body
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp7.i = icmp slt i32 %42, 0
  br i1 %cmp7.i, label %lor.lhs.false.i.tegra_bpmp_powergate_get_name.exit.thread_crit_edge, label %tegra_bpmp_powergate_get_name.exit

lor.lhs.false.i.tegra_bpmp_powergate_get_name.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_bpmp_powergate_get_name.exit.thread

tegra_bpmp_powergate_get_name.exit.thread:        ; preds = %lor.lhs.false.i.tegra_bpmp_powergate_get_name.exit.thread_crit_edge, %for.body.tegra_bpmp_powergate_get_name.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i70) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request.i69) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %response.i68) #7
  %name81 = getelementptr %struct.tegra_powergate_info, ptr %call8.i.i, i32 %count.084, i32 1
  %43 = ptrtoint ptr %name81 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %name81, align 4
  br label %if.then18

tegra_bpmp_powergate_get_name.exit:               ; preds = %lor.lhs.false.i
  %call8.i = call noalias ptr @kstrdup(ptr noundef nonnull %response.i68, i32 noundef 3264) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i70) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request.i69) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %response.i68) #7
  %name = getelementptr %struct.tegra_powergate_info, ptr %call8.i.i, i32 %count.084, i32 1
  %44 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i, ptr %name, align 4
  %tobool13.not = icmp eq ptr %call8.i, null
  br i1 %tobool13.not, label %tegra_bpmp_powergate_get_name.exit.if.then18_crit_edge, label %lor.lhs.false

tegra_bpmp_powergate_get_name.exit.if.then18_crit_edge: ; preds = %tegra_bpmp_powergate_get_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false:                                    ; preds = %tegra_bpmp_powergate_get_name.exit
  %45 = ptrtoint ptr %call8.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %call8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp16 = icmp eq i8 %46, 0
  br i1 %cmp16, label %lor.lhs.false.if.then18_crit_edge, label %if.end19

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %tegra_bpmp_powergate_get_name.exit.if.then18_crit_edge, %tegra_bpmp_powergate_get_name.exit.thread
  %inc = add i32 %num_holes.086, 1
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %id.089, ptr %arrayidx, align 8
  %inc21 = add i32 %count.084, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then18
  %count.1 = phi i32 [ %count.084, %if.then18 ], [ %inc21, %if.end19 ]
  %num_holes.1 = phi i32 [ %inc, %if.then18 ], [ %num_holes.086, %if.end19 ]
  %inc22 = add i32 %id.089, 1
  %cmp10.not = icmp ugt i32 %inc22, %18
  br i1 %cmp10.not, label %do.body23, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body23:                                        ; preds = %cleanup
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_probe_powergates.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_bpmp_probe_powergates, %if.then35)) #7
          to label %do.end39 [label %if.then35], !srcloc !42

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  %48 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev36, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_probe_powergates.__UNIQUE_ID_ddebug184, ptr noundef %49, ptr noundef nonnull @.str.9, i32 noundef %num_holes.1) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %50 = ptrtoint ptr %powergatesp to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call8.i.i, ptr %powergatesp, align 4
  br label %cleanup40

cleanup40:                                        ; preds = %do.end39, %if.end7.i.i.cleanup40_crit_edge, %do.end.cleanup40_crit_edge, %tegra_bpmp_powergate_get_max_id.exit.cleanup40_crit_edge, %tegra_bpmp_powergate_get_max_id.exit.thread
  %retval.0 = phi i32 [ %count.1, %do.end39 ], [ %18, %tegra_bpmp_powergate_get_max_id.exit.cleanup40_crit_edge ], [ -12, %if.end7.i.i.cleanup40_crit_edge ], [ %retval.0.i67.ph, %tegra_bpmp_powergate_get_max_id.exit.thread ], [ -12, %do.end.cleanup40_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_bpmp_add_powergates(ptr noundef %bpmp, ptr nocapture noundef readonly %powergates, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %response.i.i.i = alloca %struct.mrq_pg_response, align 4
  %request.i.i.i = alloca %struct.mrq_pg_request, align 4
  %msg.i.i.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %genpd1 = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 14
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count, i32 4) #7
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !43

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp57.not = icmp eq i32 %count, 0
  br i1 %cmp57.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = getelementptr inbounds %struct.mrq_pg_request, ptr %request.i.i.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i.i, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i.i, i32 0, i32 2, i32 1
  %8 = getelementptr inbounds i8, ptr %request.i.i.i, i32 8
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 20
  %dev.i = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tegra_powergate_info, ptr %powergates, i32 %i.058
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %response.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request.i.i.i) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #7
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %8, align 4
  %13 = ptrtoint ptr %request.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %request.i.i.i, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %3, align 4
  %15 = call ptr @memset(ptr %response.i.i.i, i32 0, i32 40)
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %9, align 4
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 66, ptr %msg.i.i.i, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %request.i.i.i, ptr %4, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12, ptr %5, align 4
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %response.i.i.i, ptr %6, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 40, ptr %7, align 4
  %call.i.i.i = call i32 @tegra_bpmp_transfer(ptr noundef %bpmp, ptr noundef nonnull %msg.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i43 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i43, label %for.body.tegra_bpmp_powergate_is_powered.exit.i_crit_edge, label %if.else.i.i.i

for.body.tegra_bpmp_powergate_is_powered.exit.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_bpmp_powergate_is_powered.exit.i

if.else.i.i.i:                                    ; preds = %for.body
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp7.i.i.i = icmp slt i32 %23, 0
  br i1 %cmp7.i.i.i, label %if.else.i.i.i.tegra_bpmp_powergate_is_powered.exit.i_crit_edge, label %if.end9.i.i.i

if.else.i.i.i.tegra_bpmp_powergate_is_powered.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_bpmp_powergate_is_powered.exit.i

if.end9.i.i.i:                                    ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %response.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %response.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %phi.cmp.i.i = icmp eq i32 %25, 0
  br label %tegra_bpmp_powergate_is_powered.exit.i

tegra_bpmp_powergate_is_powered.exit.i:           ; preds = %if.end9.i.i.i, %if.else.i.i.i.tegra_bpmp_powergate_is_powered.exit.i_crit_edge, %for.body.tegra_bpmp_powergate_is_powered.exit.i_crit_edge
  %retval.0.i.i.i = phi i1 [ %phi.cmp.i.i, %if.end9.i.i.i ], [ true, %for.body.tegra_bpmp_powergate_is_powered.exit.i_crit_edge ], [ false, %if.else.i.i.i.tegra_bpmp_powergate_is_powered.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %response.i.i.i) #7
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %27, i32 noundef 1360, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %tegra_bpmp_powergate_is_powered.exit.i.if.then4_crit_edge, label %if.end.i

tegra_bpmp_powergate_is_powered.exit.i.if.then4_crit_edge: ; preds = %tegra_bpmp_powergate_is_powered.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i:                                         ; preds = %tegra_bpmp_powergate_is_powered.exit.i
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  %id4.i = getelementptr inbounds %struct.tegra_powergate, ptr %call.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %id4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %id4.i, align 4
  %bpmp5.i = getelementptr inbounds %struct.tegra_powergate, ptr %call.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %bpmp5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %bpmp, ptr %bpmp5.i, align 8
  %name.i = getelementptr %struct.tegra_powergate_info, ptr %powergates, i32 %i.058, i32 1
  %32 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name.i, align 4
  %call6.i = call noalias ptr @kstrdup(ptr noundef %33, i32 noundef 3264) #7
  %name7.i = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %name7.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call6.i, ptr %name7.i, align 8
  %power_on.i = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i.i, i32 0, i32 19
  %35 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @tegra_powergate_power_on, ptr %power_on.i, align 4
  %power_off.i = getelementptr inbounds %struct.generic_pm_domain, ptr %call.i.i, i32 0, i32 18
  %36 = ptrtoint ptr %power_off.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @tegra_powergate_power_off, ptr %power_off.i, align 8
  %call12.i = call i32 @pm_genpd_init(ptr noundef nonnull %call.i.i, ptr noundef null, i1 noundef zeroext %retval.0.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 0
  br i1 %cmp.i, label %if.then13.i, label %if.end.i.tegra_powergate_add.exit_crit_edge

if.end.i.tegra_powergate_add.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_powergate_add.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %name7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name7.i, align 8
  call void @kfree(ptr noundef %38) #7
  %39 = inttoptr i32 %call12.i to ptr
  br label %tegra_powergate_add.exit

tegra_powergate_add.exit:                         ; preds = %if.then13.i, %if.end.i.tegra_powergate_add.exit_crit_edge
  %retval.0.i44 = phi ptr [ %39, %if.then13.i ], [ %call.i.i, %if.end.i.tegra_powergate_add.exit_crit_edge ]
  %cmp.i45 = icmp ugt ptr %retval.0.i44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %tegra_powergate_add.exit.if.then4_crit_edge, label %do.body

tegra_powergate_add.exit.if.then4_crit_edge:      ; preds = %tegra_powergate_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %tegra_powergate_add.exit.if.then4_crit_edge, %tegra_bpmp_powergate_is_powered.exit.i.if.then4_crit_edge
  %retval.0.i4454 = phi ptr [ %retval.0.i44, %tegra_powergate_add.exit.if.then4_crit_edge ], [ inttoptr (i32 -12 to ptr), %tegra_bpmp_powergate_is_powered.exit.i.if.then4_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i4454 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.058)
  %tobool17.not59 = icmp eq i32 %i.058, 0
  br i1 %tobool17.not59, label %if.then4.while.end_crit_edge, label %if.then4.while.body_crit_edge

if.then4.while.body_crit_edge:                    ; preds = %if.then4
  br label %while.body

if.then4.while.end_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body:                                          ; preds = %tegra_powergate_add.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_add_powergates.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_bpmp_add_powergates, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !42

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %retval.0.i44, i32 0, i32 10
  %43 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_add_powergates.__UNIQUE_ID_ddebug185, ptr noundef %42, ptr noundef nonnull @.str.11, ptr noundef %44) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %arrayidx15 = getelementptr ptr, ptr %call8.i.i, i32 %i.058
  %45 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %retval.0.i44, ptr %arrayidx15, align 4
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_domains = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 14, i32 1
  %46 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %count, ptr %num_domains, align 4
  %47 = ptrtoint ptr %genpd1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i, ptr %genpd1, align 4
  br label %cleanup

while.body:                                       ; preds = %tegra_powergate_remove.exit.while.body_crit_edge, %if.then4.while.body_crit_edge
  %i.160 = phi i32 [ %dec, %tegra_powergate_remove.exit.while.body_crit_edge ], [ %i.058, %if.then4.while.body_crit_edge ]
  %dec = add i32 %i.160, -1
  %arrayidx18 = getelementptr ptr, ptr %call8.i.i, i32 %dec
  %48 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx18, align 4
  %bpmp2.i = getelementptr inbounds %struct.tegra_powergate, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %bpmp2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bpmp2.i, align 8
  %call.i = call i32 @pm_genpd_remove(ptr noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i46 = icmp slt i32 %call.i, 0
  br i1 %cmp.i46, label %do.end.i, label %while.body.tegra_powergate_remove.exit_crit_edge

while.body.tegra_powergate_remove.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_powergate_remove.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i47 = getelementptr inbounds %struct.tegra_bpmp, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i47, align 4
  %name.i48 = getelementptr inbounds %struct.generic_pm_domain, ptr %49, i32 0, i32 10
  %54 = ptrtoint ptr %name.i48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name.i48, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.12, ptr noundef %55, i32 noundef %call.i) #10
  br label %tegra_powergate_remove.exit

tegra_powergate_remove.exit:                      ; preds = %do.end.i, %while.body.tegra_powergate_remove.exit_crit_edge
  %name3.i = getelementptr inbounds %struct.generic_pm_domain, ptr %49, i32 0, i32 10
  %56 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name3.i, align 8
  call void @kfree(ptr noundef %57) #7
  %tobool17.not = icmp eq i32 %dec, 0
  br i1 %tobool17.not, label %tegra_powergate_remove.exit.while.end_crit_edge, label %tegra_powergate_remove.exit.while.body_crit_edge

tegra_powergate_remove.exit.while.body_crit_edge: ; preds = %tegra_powergate_remove.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

tegra_powergate_remove.exit.while.end_crit_edge:  ; preds = %tegra_powergate_remove.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %tegra_powergate_remove.exit.while.end_crit_edge, %if.then4.while.end_crit_edge
  %58 = ptrtoint ptr %genpd1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %genpd1, align 4
  call void @kfree(ptr noundef %59) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.end, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %40, %while.end ], [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_powergate_xlate(ptr nocapture noundef readonly %spec, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_domains = getelementptr inbounds %struct.genpd_onecell_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12.not = icmp eq i32 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.013
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.tegra_powergate, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp3 = icmp eq i32 %9, %5
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %domain.2 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.for.end_crit_edge ], [ %7, %for.body.for.end_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.cond.for.end_crit_edge ]
  ret ptr %domain.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_bpmp_remove_powergates(ptr nocapture noundef readonly %bpmp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %genpd1 = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 14
  %num_domains = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %num_domains to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_domains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not15 = icmp eq i32 %1, 0
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %do.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %tegra_powergate_remove.exit.do.body_crit_edge, %do.body.lr.ph
  %dec16.in = phi i32 [ %1, %do.body.lr.ph ], [ %dec16, %tegra_powergate_remove.exit.do.body_crit_edge ]
  %dec16 = add i32 %dec16.in, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_remove_powergates.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_bpmp_remove_powergates, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !42

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %genpd1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %genpd1, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %dec16
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_remove_powergates.__UNIQUE_ID_ddebug186, ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %10 = ptrtoint ptr %genpd1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %genpd1, align 4
  %arrayidx6 = getelementptr ptr, ptr %11, i32 %dec16
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %bpmp2.i = getelementptr inbounds %struct.tegra_powergate, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bpmp2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bpmp2.i, align 8
  %call.i = tail call i32 @pm_genpd_remove(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.end.tegra_powergate_remove.exit_crit_edge

do.end.tegra_powergate_remove.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_powergate_remove.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.tegra_bpmp, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr inbounds %struct.generic_pm_domain, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef %19, i32 noundef %call.i) #10
  br label %tegra_powergate_remove.exit

tegra_powergate_remove.exit:                      ; preds = %do.end.i, %do.end.tegra_powergate_remove.exit_crit_edge
  %name3.i = getelementptr inbounds %struct.generic_pm_domain, ptr %13, i32 0, i32 10
  %20 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name3.i, align 8
  tail call void @kfree(ptr noundef %21) #7
  %tobool.not = icmp eq i32 %dec16, 0
  br i1 %tobool.not, label %tegra_powergate_remove.exit.while.end_crit_edge, label %tegra_powergate_remove.exit.do.body_crit_edge

tegra_powergate_remove.exit.do.body_crit_edge:    ; preds = %tegra_powergate_remove.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

tegra_powergate_remove.exit.while.end_crit_edge:  ; preds = %tegra_powergate_remove.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %tegra_powergate_remove.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_powergate_power_on(ptr nocapture noundef readonly %domain) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_pg_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bpmp1 = getelementptr inbounds %struct.tegra_powergate, ptr %domain, i32 0, i32 1
  %0 = ptrtoint ptr %bpmp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpmp1, align 8
  %id = getelementptr inbounds %struct.tegra_powergate, ptr %domain, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request.i) #7
  %4 = getelementptr inbounds %struct.mrq_pg_request, ptr %request.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.mrq_pg_request, ptr %request.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %request.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %4, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %5, align 4
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 12
  %12 = call ptr @memset(ptr %11, i32 0, i32 12)
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 66, ptr %msg.i, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %request.i, ptr %6, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %7, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %1, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tegra_bpmp_powergate_set_state.exit_crit_edge, label %if.else.i

entry.tegra_bpmp_powergate_set_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_bpmp_powergate_set_state.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.i = icmp slt i32 %18, 0
  %..i = select i1 %cmp4.i, i32 -22, i32 0
  br label %tegra_bpmp_powergate_set_state.exit

tegra_bpmp_powergate_set_state.exit:              ; preds = %if.else.i, %entry.tegra_bpmp_powergate_set_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.tegra_bpmp_powergate_set_state.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_powergate_power_off(ptr nocapture noundef readonly %domain) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_pg_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bpmp1 = getelementptr inbounds %struct.tegra_powergate, ptr %domain, i32 0, i32 1
  %0 = ptrtoint ptr %bpmp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpmp1, align 8
  %id = getelementptr inbounds %struct.tegra_powergate, ptr %domain, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %request.i) #7
  %4 = getelementptr inbounds %struct.mrq_pg_request, ptr %request.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.mrq_pg_request, ptr %request.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %request.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %4, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %5, align 4
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 12
  %12 = call ptr @memset(ptr %11, i32 0, i32 12)
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 66, ptr %msg.i, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %request.i, ptr %6, align 4
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %7, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %1, ptr noundef nonnull %msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tegra_bpmp_powergate_set_state.exit_crit_edge, label %if.else.i

entry.tegra_bpmp_powergate_set_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_bpmp_powergate_set_state.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.i = icmp slt i32 %18, 0
  %..i = select i1 %cmp4.i, i32 -22, i32 0
  br label %tegra_bpmp_powergate_set_state.exit

tegra_bpmp_powergate_set_state.exit:              ; preds = %if.else.i, %entry.tegra_bpmp_powergate_set_state.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.tegra_bpmp_powergate_set_state.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %request.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/tegra/powergate-bpmp.c", i32 341, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tegra_bpmp_init_powergates.__UNIQUE_ID_ddebug187, !1, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/soc/tegra/powergate-bpmp.c", i32 351, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @tegra_bpmp_init_powergates._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @tegra_bpmp_init_powergates._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/tegra/powergate-bpmp.c", i32 226, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tegra_bpmp_probe_powergates.__UNIQUE_ID_ddebug183, !13, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/tegra/powergate-bpmp.c", i32 245, i32 2}
!18 = !{ptr @tegra_bpmp_probe_powergates.__UNIQUE_ID_ddebug184, !17, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/soc/tegra/powergate-bpmp.c", i32 273, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_bpmp_add_powergates.__UNIQUE_ID_ddebug185, !20, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/tegra/powergate-bpmp.c", i32 205, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tegra_powergate_remove._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra_powergate_remove._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/tegra/powergate-bpmp.c", i32 300, i32 3}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tegra_bpmp_remove_powergates.__UNIQUE_ID_ddebug186, !29, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i64 2148864277, i64 2148864282, i64 2148864295, i64 2148864339, i64 2148864373, i64 2148864394}
!43 = !{!"branch_weights", i32 1, i32 2000}
