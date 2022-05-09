; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/fwnode_mdio.c_pt.bc'
source_filename = "../drivers/net/mdio/fwnode_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fwnode_mdiobus_phy_device_register\22, \22a\22\09"
module asm "\09.weak\09__crc_fwnode_mdiobus_phy_device_register\09\09\09\09"
module asm "\09.long\09__crc_fwnode_mdiobus_phy_device_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_mdiobus_phy_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_mdiobus_phy_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_mdiobus_phy_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fwnode_mdiobus_register_phy\22, \22a\22\09"
module asm "\09.weak\09__crc_fwnode_mdiobus_register_phy\09\09\09\09"
module asm "\09.long\09__crc_fwnode_mdiobus_register_phy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_mdiobus_register_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_mdiobus_register_phy\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_mdiobus_register_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__UNIQUE_ID_author281 = internal constant [63 x i8] c"fwnode_mdio.author=Calvin Johnson <calvin.johnson@oss.nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file282 = internal constant [46 x i8] c"fwnode_mdio.file=drivers/net/mdio/fwnode_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [24 x i8] c"fwnode_mdio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"broken-turn-around\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset-assert-us\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reset-deassert-us\00", [46 x i8] zeroinitializer }, align 32
@fwnode_mdiobus_phy_device_register.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fwnode_mdio\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fwnode_mdiobus_phy_device_register\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/mdio/fwnode_mdio.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"registered phy %p fwnode at address %i\0A\00", [56 x i8] zeroinitializer }, align 32
@__kstrtab_fwnode_mdiobus_phy_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_mdiobus_phy_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_mdiobus_phy_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_mdiobus_phy_device_register to i32), ptr @__kstrtab_fwnode_mdiobus_phy_device_register, ptr @__kstrtabns_fwnode_mdiobus_phy_device_register }, section "___ksymtab+fwnode_mdiobus_phy_device_register", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ethernet-phy-ieee802.3-c45\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_fwnode_mdiobus_register_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_mdiobus_register_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_mdiobus_register_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_mdiobus_register_phy to i32), ptr @__kstrtab_fwnode_mdiobus_register_phy, ptr @__kstrtabns_fwnode_mdiobus_register_phy }, section "___ksymtab+fwnode_mdiobus_register_phy", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timestamper\00", [20 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 56, i32 39 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 59, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 61, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 79, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 98, i32 43 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 99, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [34 x i8] c"../drivers/net/mdio/fwnode_mdio.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 27, i32 13 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_license283, ptr @__ksymtab_fwnode_mdiobus_phy_device_register, ptr @__ksymtab_fwnode_mdiobus_register_phy, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fwnode_mdiobus_phy_device_register(ptr noundef %mdio, ptr noundef %phy, ptr noundef %child, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fwnode_irq_get(ptr noundef %child, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call)
  %cmp = icmp eq i32 %call, -517
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %irq = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 25
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %irq, align 4
  %arrayidx = getelementptr %struct.mii_bus, ptr %mdio, i32 0, i32 15, i32 %addr
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %arrayidx, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx5 = getelementptr %struct.mii_bus, ptr %mdio, i32 0, i32 15, i32 %addr
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  %irq6 = getelementptr inbounds %struct.phy_device, ptr %phy, i32 0, i32 25
  %4 = ptrtoint ptr %irq6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %call.i = tail call zeroext i1 @fwnode_property_present(ptr noundef %child, ptr noundef nonnull @.str) #3
  br i1 %call.i, label %if.then9, label %if.end7.if.end10_crit_edge

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %shl = shl nuw i32 1, %addr
  %phy_ignore_ta_mask = getelementptr inbounds %struct.mii_bus, ptr %mdio, i32 0, i32 14
  %5 = ptrtoint ptr %phy_ignore_ta_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_ignore_ta_mask, align 4
  %or = or i32 %6, %shl
  store i32 %or, ptr %phy_ignore_ta_mask, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  %reset_assert_delay = getelementptr inbounds %struct.mdio_device, ptr %phy, i32 0, i32 10
  %call.i51 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %child, ptr noundef nonnull @.str.1, ptr noundef %reset_assert_delay, i32 noundef 1) #3
  %reset_deassert_delay = getelementptr inbounds %struct.mdio_device, ptr %phy, i32 0, i32 11
  %call.i52 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %child, ptr noundef nonnull @.str.2, ptr noundef %reset_deassert_delay, i32 noundef 1) #3
  %call15 = tail call ptr @fwnode_handle_get(ptr noundef %child) #3
  tail call void @device_set_node(ptr noundef %phy, ptr noundef %child) #3
  %call17 = tail call i32 @phy_device_register(ptr noundef %phy) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %do.body, label %if.then18

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @fwnode_handle_put(ptr noundef %child) #3
  br label %cleanup

do.body:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fwnode_mdiobus_phy_device_register.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fwnode_mdiobus_phy_device_register, %if.then24)) #3
          to label %cleanup [label %if.then24], !srcloc !36

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %dev25 = getelementptr inbounds %struct.mii_bus, ptr %mdio, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fwnode_mdiobus_phy_device_register.__UNIQUE_ID_ddebug284, ptr noundef %dev25, ptr noundef nonnull @.str.6, ptr noundef %child, i32 noundef %addr) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body, %if.then18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then18 ], [ -517, %entry.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_handle_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fwnode_mdiobus_register_phy(ptr noundef %bus, ptr noundef %child, i32 noundef %addr) #0 align 64 {
entry:
  %arg.i = alloca %struct.of_phandle_args, align 4
  %phy_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_id) #3
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %phy_id, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %arg.i) #3
  %1 = call ptr @memset(ptr %arg.i, i32 255, i32 72)
  %tobool.not.i.i.i = icmp eq ptr %child, null
  %cmp.i.i.i = icmp ugt ptr %child, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %entry.is_of_node.exit.thread.i_crit_edge, label %is_of_node.exit.i

entry.is_of_node.exit.thread.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %is_of_node.exit.thread.i

is_of_node.exit.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %child, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @of_fwnode_ops
  %add.ptr.i = getelementptr i8, ptr %child, i32 -12
  %spec.select.i = select i1 %cmp.i.i, ptr %add.ptr.i, ptr null
  br label %is_of_node.exit.thread.i

is_of_node.exit.thread.i:                         ; preds = %is_of_node.exit.i, %entry.is_of_node.exit.thread.i_crit_edge
  %4 = phi ptr [ null, %entry.is_of_node.exit.thread.i_crit_edge ], [ %spec.select.i, %is_of_node.exit.i ]
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %arg.i) #3
  %5 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i.i, label %if.then5.i [
    i32 -2, label %fwnode_find_mii_timestamper.exit.thread81
    i32 0, label %if.end8.i
  ]

fwnode_find_mii_timestamper.exit.thread81:        ; preds = %is_of_node.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %arg.i) #3
  br label %if.end

if.then5.i:                                       ; preds = %is_of_node.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  %6 = inttoptr i32 %call.i.i to ptr
  br label %fwnode_find_mii_timestamper.exit

if.end8.i:                                        ; preds = %is_of_node.exit.thread.i
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %arg.i, i32 0, i32 1
  %7 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp9.not.i = icmp eq i32 %8, 1
  br i1 %cmp9.not.i, label %if.end12.i, label %fwnode_find_mii_timestamper.exit.thread

fwnode_find_mii_timestamper.exit.thread:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %arg.i) #3
  br label %if.then

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arg.i, align 4
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %arg.i, i32 0, i32 2
  %11 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args.i, align 4
  %call13.i = call ptr @register_mii_timestamper(ptr noundef %10, i32 noundef %12) #3
  br label %fwnode_find_mii_timestamper.exit

fwnode_find_mii_timestamper.exit:                 ; preds = %if.end12.i, %if.then5.i
  %retval.0.i = phi ptr [ %6, %if.then5.i ], [ %call13.i, %if.end12.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %arg.i) #3
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fwnode_find_mii_timestamper.exit.if.then_crit_edge, label %fwnode_find_mii_timestamper.exit.if.end_crit_edge

fwnode_find_mii_timestamper.exit.if.end_crit_edge: ; preds = %fwnode_find_mii_timestamper.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

fwnode_find_mii_timestamper.exit.if.then_crit_edge: ; preds = %fwnode_find_mii_timestamper.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %fwnode_find_mii_timestamper.exit.if.then_crit_edge, %fwnode_find_mii_timestamper.exit.thread
  %retval.0.i80 = phi ptr [ inttoptr (i32 -22 to ptr), %fwnode_find_mii_timestamper.exit.thread ], [ %retval.0.i, %fwnode_find_mii_timestamper.exit.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i80 to i32
  br label %cleanup

if.end:                                           ; preds = %fwnode_find_mii_timestamper.exit.if.end_crit_edge, %fwnode_find_mii_timestamper.exit.thread81
  %retval.0.i84 = phi ptr [ null, %fwnode_find_mii_timestamper.exit.thread81 ], [ %retval.0.i, %fwnode_find_mii_timestamper.exit.if.end_crit_edge ]
  %call3 = call i32 @fwnode_property_match_string(ptr noundef %child, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %if.end.if.then8_crit_edge, label %lor.lhs.false

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %call6 = call i32 @fwnode_get_phy_id(ptr noundef %child, ptr noundef nonnull %phy_id) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %call10 = call ptr @get_phy_device(ptr noundef %bus, i32 noundef %addr, i1 noundef zeroext %cmp) #3
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_id, align 4
  %call11 = call ptr @phy_device_create(ptr noundef %bus, i32 noundef %addr, i32 noundef %15, i1 noundef zeroext false, ptr noundef null) #3
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %phy.0 = phi ptr [ %call10, %if.then8 ], [ %call11, %if.else ]
  %cmp.i75 = icmp ugt ptr %phy.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  call void @unregister_mii_timestamper(ptr noundef %retval.0.i84) #3
  %16 = ptrtoint ptr %phy.0 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  br i1 %spec.select.i.i.i, label %if.end16.if.end35_crit_edge, label %is_of_node.exit

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

is_of_node.exit:                                  ; preds = %if.end16
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %child, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %cmp.i77 = icmp eq ptr %18, @of_fwnode_ops
  br i1 %cmp.i77, label %if.then29, label %is_of_node.exit.if.end35_crit_edge

is_of_node.exit.if.end35_crit_edge:               ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then29:                                        ; preds = %is_of_node.exit
  %call30 = call i32 @fwnode_mdiobus_phy_device_register(ptr noundef %bus, ptr noundef %phy.0, ptr noundef nonnull %child, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end35_crit_edge, label %if.then32

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #5
  call void @unregister_mii_timestamper(ptr noundef %retval.0.i84) #3
  call void @phy_device_free(ptr noundef %phy.0) #3
  br label %cleanup

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %is_of_node.exit.if.end35_crit_edge, %if.end16.if.end35_crit_edge
  %tobool36.not = icmp eq ptr %retval.0.i84, null
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %if.then37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %mii_ts38 = getelementptr inbounds %struct.phy_device, ptr %phy.0, i32 0, i32 37
  %19 = ptrtoint ptr %mii_ts38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i84, ptr %mii_ts38, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end35.cleanup_crit_edge, %if.then32, %if.then14, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ %16, %if.then14 ], [ %call30, %if.then32 ], [ 0, %if.then37 ], [ 0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_id) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_get_phy_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_phy_device(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_device_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_mii_timestamper(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_mii_timestamper(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__UNIQUE_ID_author281, !1, !"__UNIQUE_ID_author281", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_file282, !3, !"__UNIQUE_ID_file282", i1 false, i1 false}
!3 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_license283, !3, !"__UNIQUE_ID_license283", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 56, i32 39}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 59, i32 34}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 61, i32 34}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 79, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fwnode_mdiobus_phy_device_register.__UNIQUE_ID_ddebug284, !12, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!17 = !{ptr @__ksymtab_fwnode_mdiobus_phy_device_register, !18, !"__ksymtab_fwnode_mdiobus_phy_device_register", i1 false, i1 false}
!18 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 83, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 98, i32 43}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 99, i32 8}
!23 = !{ptr @__ksymtab_fwnode_mdiobus_register_phy, !24, !"__ksymtab_fwnode_mdiobus_register_phy", i1 false, i1 false}
!24 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 144, i32 1}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/mdio/fwnode_mdio.c", i32 27, i32 13}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148949273, i64 2148949278, i64 2148949291, i64 2148949335, i64 2148949369, i64 2148949390}
!37 = !{!"auto-init"}
