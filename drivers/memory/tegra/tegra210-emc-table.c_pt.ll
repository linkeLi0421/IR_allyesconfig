; ModuleID = '/llk/IR_all_yes/drivers/memory/tegra/tegra210-emc-table.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra210-emc-table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.reserved_mem_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.tegra210_emc_timing = type { i32, [60 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [221 x i32], [8 x i32], [221 x i32], [221 x i32], [221 x i32], [138 x i32], [10 x i32], [4 x i32], [5 x i32], [20 x i32], [12 x i32], [33 x i32], [24 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra210_emc = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.spinlock, ptr, [2 x ptr], i32, i32, i32, ptr, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.atomic_t, i64, i32, i32, %struct.anon.44, %struct.tegra210_clk_emc_provider }
%struct.anon.44 = type { ptr, i32, i32, i32 }
%struct.tegra210_clk_emc_provider = type { ptr, ptr, ptr, i32, ptr }

@__of_table_tegra210_emc_table = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-emc-table\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_emc_table_init }, section "__reservedmem_of_table", align 4
@tegra210_emc_table_init.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra210_emc_table\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra210_emc_table_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/memory/tegra/tegra210-emc-table.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Tegra210 EMC table at %pa, size %lu bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra210_emc_table_ops = internal constant { %struct.reserved_mem_ops, [24 x i8] } { %struct.reserved_mem_ops { ptr @tegra210_emc_table_device_init, ptr @tegra210_emc_table_device_release }, [24 x i8] zeroinitializer }, align 32
@tegra210_emc_table_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 21, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map EMC table\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra210_emc_table_device_init\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_table_device_init._entry_ptr = internal global ptr @tegra210_emc_table_device_init._entry, section ".printk_index", align 4
@tegra210_emc_table_device_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 36, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"excess EMC table '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra210_emc_table_device_init._entry_ptr.11 = internal global ptr @tegra210_emc_table_device_init._entry.8, section ".printk_index", align 4
@tegra210_emc_table_device_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 43, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%u derated vs. %u nominal entries\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra210_emc_table_device_init._entry_ptr.14 = internal global ptr @tegra210_emc_table_device_init._entry.12, section ".printk_index", align 4
@tegra210_emc_table_device_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 70, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"trying to release unassigned EMC table '%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tegra210_emc_table_device_release\00", [62 x i8] zeroinitializer }, align 32
@tegra210_emc_table_device_release._entry_ptr = internal global ptr @tegra210_emc_table_device_release._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 82, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"tegra210_emc_table_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 75, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 21, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 36, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 42, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [45 x i8] c"../drivers/memory/tegra/tegra210-emc-table.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 69, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__of_table_tegra210_emc_table, ptr @tegra210_emc_table_device_init._entry, ptr @tegra210_emc_table_device_init._entry.12, ptr @tegra210_emc_table_device_init._entry.8, ptr @tegra210_emc_table_device_init._entry_ptr, ptr @tegra210_emc_table_device_init._entry_ptr.11, ptr @tegra210_emc_table_device_init._entry_ptr.14, ptr @tegra210_emc_table_device_release._entry, ptr @tegra210_emc_table_device_release._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tegra210_emc_table_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_table_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_table_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_table_device_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_table_device_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_table_device_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_table_init(ptr noundef %rmem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_table_init.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_table_init, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !40

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %base = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tegra210_emc_table_init.__UNIQUE_ID_ddebug170, ptr noundef nonnull @.str.3, ptr noundef %base, i32 noundef %1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ops = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tegra210_emc_table_ops, ptr %ops, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_table_device_init(ptr nocapture noundef %rmem, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %call1 = tail call ptr @memremap(i32 noundef %3, i32 noundef %5, i32 noundef 1) #3
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %for.body.preheader.for.end_crit_edge, label %if.end4

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end4:                                          ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.1 = icmp eq i32 %9, 0
  br i1 %cmp2.1, label %if.end4.for.end_crit_edge, label %if.end4.1

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.1:                                        ; preds = %if.end4
  %arrayidx.2 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.2 = icmp eq i32 %11, 0
  br i1 %cmp2.2, label %if.end4.1.for.end_crit_edge, label %if.end4.2

if.end4.1.for.end_crit_edge:                      ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.2:                                        ; preds = %if.end4.1
  %arrayidx.3 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2.3 = icmp eq i32 %13, 0
  br i1 %cmp2.3, label %if.end4.2.for.end_crit_edge, label %if.end4.3

if.end4.2.for.end_crit_edge:                      ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.3:                                        ; preds = %if.end4.2
  %arrayidx.4 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp2.4 = icmp eq i32 %15, 0
  br i1 %cmp2.4, label %if.end4.3.for.end_crit_edge, label %if.end4.4

if.end4.3.for.end_crit_edge:                      ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.4:                                        ; preds = %if.end4.3
  %arrayidx.5 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 5
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2.5 = icmp eq i32 %17, 0
  br i1 %cmp2.5, label %if.end4.4.for.end_crit_edge, label %if.end4.5

if.end4.4.for.end_crit_edge:                      ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.5:                                        ; preds = %if.end4.4
  %arrayidx.6 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2.6 = icmp eq i32 %19, 0
  br i1 %cmp2.6, label %if.end4.5.for.end_crit_edge, label %if.end4.6

if.end4.5.for.end_crit_edge:                      ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.6:                                        ; preds = %if.end4.5
  %arrayidx.7 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 7
  %20 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2.7 = icmp eq i32 %21, 0
  br i1 %cmp2.7, label %if.end4.6.for.end_crit_edge, label %if.end4.7

if.end4.6.for.end_crit_edge:                      ; preds = %if.end4.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.7:                                        ; preds = %if.end4.6
  %arrayidx.8 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 8
  %22 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.8 = icmp eq i32 %23, 0
  br i1 %cmp2.8, label %if.end4.7.for.end_crit_edge, label %if.end4.8

if.end4.7.for.end_crit_edge:                      ; preds = %if.end4.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.8:                                        ; preds = %if.end4.7
  %arrayidx.9 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 9
  %24 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2.9 = icmp eq i32 %25, 0
  br i1 %cmp2.9, label %if.end4.8.for.end_crit_edge, label %if.end4.9

if.end4.8.for.end_crit_edge:                      ; preds = %if.end4.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.9:                                        ; preds = %if.end4.8
  %arrayidx.10 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 10
  %26 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2.10 = icmp eq i32 %27, 0
  br i1 %cmp2.10, label %if.end4.9.for.end_crit_edge, label %if.end4.10

if.end4.9.for.end_crit_edge:                      ; preds = %if.end4.9
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.10:                                       ; preds = %if.end4.9
  %arrayidx.11 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 11
  %28 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.11 = icmp eq i32 %29, 0
  br i1 %cmp2.11, label %if.end4.10.for.end_crit_edge, label %if.end4.11

if.end4.10.for.end_crit_edge:                     ; preds = %if.end4.10
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.11:                                       ; preds = %if.end4.10
  %arrayidx.12 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 12
  %30 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2.12 = icmp eq i32 %31, 0
  br i1 %cmp2.12, label %if.end4.11.for.end_crit_edge, label %if.end4.12

if.end4.11.for.end_crit_edge:                     ; preds = %if.end4.11
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.12:                                       ; preds = %if.end4.11
  %arrayidx.13 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 13
  %32 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp2.13 = icmp eq i32 %33, 0
  br i1 %cmp2.13, label %if.end4.12.for.end_crit_edge, label %if.end4.13

if.end4.12.for.end_crit_edge:                     ; preds = %if.end4.12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.13:                                       ; preds = %if.end4.12
  %arrayidx.14 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 14
  %34 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp2.14 = icmp eq i32 %35, 0
  br i1 %cmp2.14, label %if.end4.13.for.end_crit_edge, label %if.end4.14

if.end4.13.for.end_crit_edge:                     ; preds = %if.end4.13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

if.end4.14:                                       ; preds = %if.end4.13
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.15 = getelementptr %struct.tegra210_emc_timing, ptr %call1, i32 15
  %36 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2.15 = icmp eq i32 %37, 0
  %spec.select = select i1 %cmp2.15, i32 15, i32 16
  br label %for.end

for.end:                                          ; preds = %if.end4.14, %if.end4.13.for.end_crit_edge, %if.end4.12.for.end_crit_edge, %if.end4.11.for.end_crit_edge, %if.end4.10.for.end_crit_edge, %if.end4.9.for.end_crit_edge, %if.end4.8.for.end_crit_edge, %if.end4.7.for.end_crit_edge, %if.end4.6.for.end_crit_edge, %if.end4.5.for.end_crit_edge, %if.end4.4.for.end_crit_edge, %if.end4.3.for.end_crit_edge, %if.end4.2.for.end_crit_edge, %if.end4.1.for.end_crit_edge, %if.end4.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %for.body.preheader.for.end_crit_edge ], [ 1, %if.end4.for.end_crit_edge ], [ 2, %if.end4.1.for.end_crit_edge ], [ 3, %if.end4.2.for.end_crit_edge ], [ 4, %if.end4.3.for.end_crit_edge ], [ 5, %if.end4.4.for.end_crit_edge ], [ 6, %if.end4.5.for.end_crit_edge ], [ 7, %if.end4.6.for.end_crit_edge ], [ 8, %if.end4.7.for.end_crit_edge ], [ 9, %if.end4.8.for.end_crit_edge ], [ 10, %if.end4.9.for.end_crit_edge ], [ 11, %if.end4.10.for.end_crit_edge ], [ 12, %if.end4.11.for.end_crit_edge ], [ 13, %if.end4.12.for.end_crit_edge ], [ 14, %if.end4.13.for.end_crit_edge ], [ %spec.select, %if.end4.14 ]
  %derated = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %derated to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %derated, align 8
  %tobool6.not = icmp eq ptr %39, null
  br i1 %tobool6.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmem, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %41) #6
  br label %out

if.end11:                                         ; preds = %for.end
  %nominal = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %nominal to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nominal, align 4
  %tobool12.not = icmp eq ptr %43, null
  %num_timings22 = getelementptr inbounds %struct.tegra210_emc, ptr %1, i32 0, i32 6
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  %44 = ptrtoint ptr %num_timings22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_timings22, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa, i32 %45)
  %cmp14.not = icmp eq i32 %count.0.lcssa, %45
  br i1 %cmp14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %count.0.lcssa, i32 noundef %45) #6
  tail call void @memunmap(ptr noundef nonnull %call1) #3
  br label %cleanup

if.end20:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  %46 = ptrtoint ptr %derated to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call1, ptr %derated, align 8
  br label %out

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %num_timings22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %count.0.lcssa, ptr %num_timings22, align 8
  %48 = ptrtoint ptr %nominal to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call1, ptr %nominal, align 4
  br label %out

out:                                              ; preds = %if.else, %if.end20, %do.end10
  %priv = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 6
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call1, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end18, %do.end
  %retval.0 = phi i32 [ 0, %out ], [ -22, %do.end18 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_emc_table_device_release(ptr nocapture noundef readonly %rmem, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.reserved_mem, ptr %rmem, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %nominal = getelementptr inbounds %struct.tegra210_emc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %nominal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nominal, align 4
  %tobool.not = icmp eq ptr %5, null
  %cmp.not = icmp eq ptr %1, %5
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true2:                                   ; preds = %entry
  %derated = getelementptr inbounds %struct.tegra210_emc, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %derated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %derated, align 8
  %tobool3.not = icmp eq ptr %7, null
  %cmp6.not = icmp eq ptr %1, %7
  %or.cond16 = select i1 %tobool3.not, i1 true, i1 %cmp6.not
  br i1 %or.cond16, label %land.lhs.true2.if.end_crit_edge, label %do.end

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %rmem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmem, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true2.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @memunmap(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__of_table_tegra210_emc_table, !1, !"__of_table_tegra210_emc_table", i1 false, i1 false}
!1 = !{!"../drivers/memory/tegra/tegra210-emc-table.c", i32 89, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/memory/tegra/tegra210-emc-table.c", i32 82, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @tegra210_emc_table_init.__UNIQUE_ID_ddebug170, !3, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!8 = !{ptr @tegra210_emc_table_ops, !9, !"tegra210_emc_table_ops", i1 false, i1 false}
!9 = !{!"../drivers/memory/tegra/tegra210-emc-table.c", i32 75, i32 38}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/tegra/tegra210-emc-table.c", i32 21, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tegra210_emc_table_device_init._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @tegra210_emc_table_device_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/memory/tegra/tegra210-emc-table.c", i32 36, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tegra210_emc_table_device_init._entry.8, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @tegra210_emc_table_device_init._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/tegra/tegra210-emc-table.c", i32 42, i32 4}
!24 = !{ptr @tegra210_emc_table_device_init._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra210_emc_table_device_init._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/tegra/tegra210-emc-table.c", i32 69, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tegra210_emc_table_device_release._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra210_emc_table_device_release._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148279946, i64 2148279951, i64 2148279964, i64 2148280008, i64 2148280042, i64 2148280063}
