; ModuleID = '/llk/IR_all_yes/drivers/misc/cardreader/rts5228.c_pt.bc'
source_filename = "../drivers/misc/cardreader/rts5228.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pcr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.rtsx_pcr = type { ptr, i32, %struct.rtsx_cr_option, %struct.rtsx_hw_param, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.spinlock, %struct.mutex, ptr, ptr, i32, i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i16, i32, ptr, i8, i8, i8, i8 }
%struct.rtsx_cr_option = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8 }
%struct.rtsx_hw_param = type { i32, i8 }

@rts5228_pci_switch_clock.depth = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\02\03\04\05", [27 x i8] zeroinitializer }, align 32
@rts5228_pci_switch_clock.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtsx_pci\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rts5228_pci_switch_clock\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/misc/cardreader/rts5228.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Switch card clock to %dMHz\0A\00", [36 x i8] zeroinitializer }, align 32
@rts5228_pci_switch_clock.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Internal SSC clock: %dMHz (cur_clock = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@rts5228_pci_switch_clock.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"n = %d, div = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rts5228_pci_switch_clock.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssc_depth = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rts5228_pcr_ops = internal constant { %struct.pcr_ops, [32 x i8] } { %struct.pcr_ops { ptr null, ptr null, ptr @rts5228_extra_init_hw, ptr @rts5228_optimize_phy, ptr @rts5228_turn_on_led, ptr @rts5228_turn_off_led, ptr @rts5228_enable_auto_blink, ptr @rts5228_disable_auto_blink, ptr @rts5228_card_power_on, ptr @rts5228_card_power_off, ptr @rts5228_switch_output_voltage, ptr null, ptr null, ptr @rtsx5228_fetch_vendor_settings, ptr @rts5228_force_power_down, ptr @rts5228_stop_cmd, ptr @rts5228_set_aspm, ptr @rts5228_set_l1off_cfg_sub_d0, ptr @rts5228_enable_ocp, ptr @rts5228_disable_ocp, ptr @rts5228_init_ocp, ptr @rts5228_process_ocp, ptr null, ptr @rts5228_clear_ocpstat }, [32 x i8] zeroinitializer }, align 32
@rts5228_sd_pull_ctl_enable_tbl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -43974486, i32 -43908887, i32 0], [20 x i8] zeroinitializer }, align 32
@rts5228_sd_pull_ctl_disable_tbl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -43974571, i32 -43908907, i32 0], [20 x i8] zeroinitializer }, align 32
@__const.rts5228_fill_driving.driving_3v3 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\13\13\13", [3 x i8] c"\96\96\96", [3 x i8] c"\7F\7F\7F", [3 x i8] c"\96\96\96"], align 1
@__const.rts5228_fill_driving.driving_1v8 = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\99\99\99", [3 x i8] c"\B5\B5\B5", [3 x i8] c"\E6~\FE", [3 x i8] c"kkk"], align 1
@rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtsx5228_fetch_vendor_settings\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cfg 0x%x: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"skip fetch vendor setting\0A\00", [37 x i8] zeroinitializer }, align 32
@rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 7, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 587, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 607, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 612, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 643, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 669, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"rts5228_pcr_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 553, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [31 x i8] c"rts5228_sd_pull_ctl_enable_tbl\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 140, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [32 x i8] c"rts5228_sd_pull_ctl_disable_tbl\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 153, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 68, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [37 x i8] c"../drivers/misc/cardreader/rts5228.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 71, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @rts5228_pci_switch_clock.depth, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rts5228_pcr_ops, ptr @rts5228_sd_pull_ctl_enable_tbl, ptr @rts5228_sd_pull_ctl_disable_tbl, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5228_pci_switch_clock.depth to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5228_pcr_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5228_sd_pull_ctl_enable_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rts5228_sd_pull_ctl_disable_tbl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rts5228_pci_switch_clock(ptr noundef %pcr, i32 noundef %card_clock, i8 noundef zeroext %ssc_depth, i1 noundef zeroext %initial_mode, i1 noundef zeroext %double_clk, i1 noundef zeroext %vpclk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %initial_mode, i8 -128, i8 0
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext -64, i8 noundef zeroext %.) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %entry
  %card_clock.op = udiv i32 %card_clock, 1000000
  %div5 = select i1 %initial_mode, i32 30, i32 %card_clock.op
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5228_pci_switch_clock, %if.then11)) #4
          to label %do.end [label %if.then11], !srcloc !41

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %div5) #4
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end4
  %not.initial_mode = xor i1 %initial_mode, true
  %narrow = and i1 %not.initial_mode, %double_clk
  %spec.select = zext i1 %narrow to i32
  %clk.0 = shl nuw nsw i32 %div5, %spec.select
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5228_pci_switch_clock, %if.then29)) #4
          to label %do.end34 [label %if.then29], !srcloc !41

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcr, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %cur_clock = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 27
  %4 = ptrtoint ptr %cur_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_clock, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug240, ptr noundef %dev31, ptr noundef nonnull @.str.4, i32 noundef %clk.0, i32 noundef %5) #4
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.end
  %cur_clock35 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 27
  %6 = ptrtoint ptr %cur_clock35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_clock35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %clk.0, i32 %7)
  %cmp36 = icmp eq i32 %clk.0, %7
  br i1 %cmp36, label %do.end34.cleanup_crit_edge, label %if.end38

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end38:                                         ; preds = %do.end34
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n = getelementptr inbounds %struct.pcr_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %conv_clk_and_div_n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %conv_clk_and_div_n, align 4
  %tobool39.not = icmp eq ptr %11, null
  br i1 %tobool39.not, label %if.else44, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %call43 = tail call i32 %11(i32 noundef %clk.0, i32 noundef 0) #4
  %conv = trunc i32 %call43 to i16
  br label %if.end46

if.else44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %12 = trunc i32 %clk.0 to i16
  %conv45 = add nsw i16 %12, -4
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then40
  %n.0 = phi i16 [ %conv, %if.then40 ], [ %conv45, %if.else44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %clk.0)
  %cmp47 = icmp ult i32 %clk.0, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 396, i16 %n.0)
  %cmp50 = icmp ugt i16 %n.0, 396
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp50
  br i1 %or.cond, label %if.end46.cleanup_crit_edge, label %if.end53

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  %div54288.rhs.trunc = trunc i32 %clk.0 to i16
  %div54288289 = udiv i16 125, %div54288.rhs.trunc
  %13 = trunc i16 %div54288289 to i8
  %14 = tail call i8 @llvm.umin.i8(i8 %13, i8 12)
  %15 = add nuw nsw i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %n.0)
  %cmp62292 = icmp ult i16 %n.0, 76
  br i1 %cmp62292, label %while.body, label %if.end53.while.end_crit_edge

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %if.end53
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n68 = getelementptr inbounds %struct.pcr_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %conv_clk_and_div_n68 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conv_clk_and_div_n68, align 4
  %tobool69.not = icmp eq ptr %19, null
  br i1 %tobool69.not, label %if.else80, label %if.then70

if.then70:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv61295 = zext i16 %n.0 to i32
  %call74 = tail call i32 %19(i32 noundef %conv61295, i32 noundef 1) #4
  %mul75 = shl i32 %call74, 1
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n77 = getelementptr inbounds %struct.pcr_ops, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %conv_clk_and_div_n77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %conv_clk_and_div_n77, align 4
  %call78 = tail call i32 %23(i32 noundef %mul75, i32 noundef 0) #4
  %conv79 = trunc i32 %call78 to i16
  br label %if.end86

if.else80:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %add82 = shl nuw nsw i16 %n.0, 1
  %sub84 = add nuw nsw i16 %add82, 4
  br label %if.end86

if.end86:                                         ; preds = %if.else80, %if.then70
  %n.2 = phi i16 [ %conv79, %if.then70 ], [ %sub84, %if.else80 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %n.2)
  %cmp62 = icmp ult i16 %n.2, 76
  br i1 %cmp62, label %while.body.1, label %if.end86.while.end_crit_edge

if.end86.while.end_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.1:                                     ; preds = %if.end86
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n68.1 = getelementptr inbounds %struct.pcr_ops, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %conv_clk_and_div_n68.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conv_clk_and_div_n68.1, align 4
  %tobool69.not.1 = icmp eq ptr %27, null
  br i1 %tobool69.not.1, label %if.else80.1, label %if.then70.1

if.then70.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  %conv61295.1 = zext i16 %n.2 to i32
  %call74.1 = tail call i32 %27(i32 noundef %conv61295.1, i32 noundef 1) #4
  %mul75.1 = shl i32 %call74.1, 1
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n77.1 = getelementptr inbounds %struct.pcr_ops, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %conv_clk_and_div_n77.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %conv_clk_and_div_n77.1, align 4
  %call78.1 = tail call i32 %31(i32 noundef %mul75.1, i32 noundef 0) #4
  %conv79.1 = trunc i32 %call78.1 to i16
  br label %if.end86.1

if.else80.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  %add82.1 = shl nuw nsw i16 %n.2, 1
  %sub84.1 = add nuw nsw i16 %add82.1, 4
  br label %if.end86.1

if.end86.1:                                       ; preds = %if.else80.1, %if.then70.1
  %n.2.1 = phi i16 [ %conv79.1, %if.then70.1 ], [ %sub84.1, %if.else80.1 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %n.2.1)
  %cmp62.1 = icmp ult i16 %n.2.1, 76
  br i1 %cmp62.1, label %while.body.2, label %if.end86.1.while.end_crit_edge

if.end86.1.while.end_crit_edge:                   ; preds = %if.end86.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.2:                                     ; preds = %if.end86.1
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n68.2 = getelementptr inbounds %struct.pcr_ops, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %conv_clk_and_div_n68.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %conv_clk_and_div_n68.2, align 4
  %tobool69.not.2 = icmp eq ptr %35, null
  br i1 %tobool69.not.2, label %if.else80.2, label %if.then70.2

if.then70.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #6
  %conv61295.2 = zext i16 %n.2.1 to i32
  %call74.2 = tail call i32 %35(i32 noundef %conv61295.2, i32 noundef 1) #4
  %mul75.2 = shl i32 %call74.2, 1
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %conv_clk_and_div_n77.2 = getelementptr inbounds %struct.pcr_ops, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %conv_clk_and_div_n77.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %conv_clk_and_div_n77.2, align 4
  %call78.2 = tail call i32 %39(i32 noundef %mul75.2, i32 noundef 0) #4
  %conv79.2 = trunc i32 %call78.2 to i16
  br label %while.end

if.else80.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #6
  %add82.2 = shl nuw nsw i16 %n.2.1, 1
  %sub84.2 = add nuw nsw i16 %add82.2, 4
  br label %while.end

while.end:                                        ; preds = %if.else80.2, %if.then70.2, %if.end86.1.while.end_crit_edge, %if.end86.while.end_crit_edge, %if.end53.while.end_crit_edge
  %div.0.lcssa = phi i8 [ 1, %if.end53.while.end_crit_edge ], [ 2, %if.end86.while.end_crit_edge ], [ 3, %if.end86.1.while.end_crit_edge ], [ 4, %if.else80.2 ], [ 4, %if.then70.2 ]
  %n.1.lcssa = phi i16 [ %n.0, %if.end53.while.end_crit_edge ], [ %n.2, %if.end86.while.end_crit_edge ], [ %n.2.1, %if.end86.1.while.end_crit_edge ], [ %conv79.2, %if.then70.2 ], [ %sub84.2, %if.else80.2 ]
  %div88270 = lshr i16 %n.1.lcssa, 1
  %sub89 = add nsw i16 %div88270, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5228_pci_switch_clock, %if.then103)) #4
          to label %do.end110 [label %if.then103], !srcloc !41

if.then103:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcr, align 4
  %dev105 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %conv106 = zext i16 %sub89 to i32
  %conv107 = zext i8 %div.0.lcssa to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug241, ptr noundef %dev105, ptr noundef nonnull @.str.5, i32 noundef %conv106, i32 noundef %conv107) #4
  br label %do.end110

do.end110:                                        ; preds = %if.then103, %while.end
  %idxprom = zext i8 %ssc_depth to i32
  %arrayidx = getelementptr [5 x i8], ptr @rts5228_pci_switch_clock.depth, i32 0, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ssc_depth)
  %cmp.i = icmp ne i8 %ssc_depth, 0
  %narrow290 = and i1 %cmp.i, %double_clk
  %cond.i = sext i1 %narrow290 to i8
  %ssc_depth.addr.0 = add i8 %43, %cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ssc_depth.addr.0)
  %tobool115.not = icmp eq i8 %ssc_depth.addr.0, 0
  br i1 %tobool115.not, label %do.end110.do.body163_crit_edge, label %if.then116

do.end110.do.body163_crit_edge:                   ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body163

if.then116:                                       ; preds = %do.end110
  %trunc = trunc i8 %div.0.lcssa to i7
  %44 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i7 %trunc, label %if.then116.do.body163_crit_edge [
    i7 2, label %if.then120
    i7 3, label %if.then134
    i7 4, label %if.then148
  ]

if.then116.do.body163_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body163

if.then120:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %ssc_depth.addr.0)
  %cmp122 = icmp ugt i8 %ssc_depth.addr.0, 1
  %sub126 = add i8 %ssc_depth.addr.0, -1
  %spec.select272 = select i1 %cmp122, i8 %sub126, i8 1
  br label %do.body163

if.then134:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %ssc_depth.addr.0)
  %cmp136 = icmp ugt i8 %ssc_depth.addr.0, 2
  %sub140 = add i8 %ssc_depth.addr.0, -2
  %spec.select273 = select i1 %cmp136, i8 %sub140, i8 1
  br label %do.body163

if.then148:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %ssc_depth.addr.0)
  %cmp150 = icmp ugt i8 %ssc_depth.addr.0, 3
  %sub154 = add i8 %ssc_depth.addr.0, -3
  %spec.select274 = select i1 %cmp150, i8 %sub154, i8 1
  br label %do.body163

do.body163:                                       ; preds = %if.then148, %if.then134, %if.then120, %if.then116.do.body163_crit_edge, %do.end110.do.body163_crit_edge
  %ssc_depth.addr.1 = phi i8 [ %ssc_depth.addr.0, %if.then116.do.body163_crit_edge ], [ 0, %do.end110.do.body163_crit_edge ], [ %spec.select272, %if.then120 ], [ %spec.select273, %if.then134 ], [ %spec.select274, %if.then148 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rts5228_pci_switch_clock, %if.then175)) #4
          to label %do.end181 [label %if.then175], !srcloc !41

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcr, align 4
  %dev177 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  %conv178 = zext i8 %ssc_depth.addr.1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug242, ptr noundef %dev177, ptr noundef nonnull @.str.6, i32 noundef %conv178) #4
  br label %do.end181

do.end181:                                        ; preds = %if.then175, %do.body163
  %ci = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 11
  %47 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %ci, align 4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %shl = shl nuw nsw i8 %div.0.lcssa, 4
  %or = or i8 %shl, %15
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1021, i8 noundef zeroext -1, i8 noundef zeroext %or) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1007, i8 noundef zeroext -128, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1006, i8 noundef zeroext 7, i8 noundef zeroext %ssc_depth.addr.1) #4
  %conv185 = trunc i16 %sub89 to i8
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1009, i8 noundef zeroext -1, i8 noundef zeroext %conv185) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -1007, i8 noundef zeroext -128, i8 noundef zeroext -128) #4
  br i1 %vpclk, label %if.then187, label %do.end181.if.end188_crit_edge

do.end181.if.end188_crit_edge:                    ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end188

if.then187:                                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -982, i8 noundef zeroext 64, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -981, i8 noundef zeroext 64, i8 noundef zeroext 0) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -982, i8 noundef zeroext 64, i8 noundef zeroext 64) #4
  tail call void @rtsx_pci_add_cmd(ptr noundef %pcr, i8 noundef zeroext 1, i16 noundef zeroext -981, i8 noundef zeroext 64, i8 noundef zeroext 64) #4
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %do.end181.if.end188_crit_edge
  %call189 = tail call i32 @rtsx_pci_send_cmd(ptr noundef %pcr, i32 noundef 2000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp190 = icmp slt i32 %call189, 0
  br i1 %cmp190, label %if.end188.cleanup_crit_edge, label %if.end193

if.end188.cleanup_crit_edge:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end193:                                        ; preds = %if.end188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 27917240) #4
  %call194 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %if.end193.cleanup_crit_edge, label %if.end198

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end198:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %cur_clock35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %clk.0, ptr %cur_clock35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end198, %if.end193.cleanup_crit_edge, %if.end188.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end198 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end34.cleanup_crit_edge ], [ -22, %if.end46.cleanup_crit_edge ], [ %call189, %if.end188.cleanup_crit_edge ], [ %call194, %if.end193.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_register(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_add_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_send_cmd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rts5228_init_params(ptr noundef %pcr) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %hw_param2 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %0 = ptrtoint ptr %extra_caps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %extra_caps, align 4
  %num_slots = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 49
  %1 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_slots, align 4
  %ops = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 46
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rts5228_pcr_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flags, align 4
  %card_drive_sel = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 35
  %4 = ptrtoint ptr %card_drive_sel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %card_drive_sel, align 1
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %5 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %sd30_drive_sel_1v8, align 1
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %6 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %sd30_drive_sel_3v3, align 2
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %7 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %aspm_en, align 4
  %aspm_mode = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 37
  %8 = ptrtoint ptr %aspm_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %aspm_mode, align 4
  %tx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 40
  %9 = ptrtoint ptr %tx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 727836, ptr %tx_initial_phase, align 4
  %rx_initial_phase = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 41
  %10 = ptrtoint ptr %rx_initial_phase to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 329240, ptr %rx_initial_phase, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #4
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %val.i, align 1, !annotation !42
  %call.i = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -368, ptr noundef nonnull %val.i) #4
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val.i, align 1
  %14 = and i8 %13, 15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #4
  %ic_version = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 32
  %15 = ptrtoint ptr %ic_version to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %ic_version, align 4
  %sd_pull_ctl_enable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 42
  %16 = ptrtoint ptr %sd_pull_ctl_enable_tbl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rts5228_sd_pull_ctl_enable_tbl, ptr %sd_pull_ctl_enable_tbl, align 4
  %sd_pull_ctl_disable_tbl = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 43
  %17 = ptrtoint ptr %sd_pull_ctl_disable_tbl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rts5228_sd_pull_ctl_disable_tbl, ptr %sd_pull_ctl_disable_tbl, align 4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %18 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -130, ptr %reg_pm_ctrl3, align 4
  %19 = ptrtoint ptr %option1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 80, ptr %option1, align 4
  %ltr_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %ltr_en to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %ltr_en, align 1
  %ltr_active_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %ltr_active_latency to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 34876, ptr %ltr_active_latency, align 4
  %ltr_idle_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 6
  %22 = ptrtoint ptr %ltr_idle_latency to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 35116, ptr %ltr_idle_latency, align 4
  %ltr_l1off_latency = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 7
  %23 = ptrtoint ptr %ltr_l1off_latency to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 36867, ptr %ltr_l1off_latency, align 4
  %l1_snooze_delay = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 8
  %24 = ptrtoint ptr %l1_snooze_delay to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %l1_snooze_delay, align 4
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %25 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 127, ptr %ltr_l1off_sspwrgate, align 4
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %26 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 120, ptr %ltr_l1off_snooze_sspwrgate, align 1
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %27 = ptrtoint ptr %ocp_en to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %ocp_en, align 2
  %28 = ptrtoint ptr %hw_param2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hw_param2, align 4
  %or = or i32 %29, 4194304
  store i32 %or, ptr %hw_param2, align 4
  %ocp_glitch = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %ocp_glitch to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %ocp_glitch, align 4
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 13
  %31 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 96, ptr %sd_800mA_ocp_thd, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5228_extra_init_hw(ptr noundef %pcr) #0 align 64 {
entry:
  %lval.i = alloca i32, align 4
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -132, i8 noundef zeroext -16, i8 noundef zeroext -16) #4
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lval.i) #4
  %2 = ptrtoint ptr %lval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lval.i, align 4, !annotation !42
  %option1.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %call.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %1, i32 noundef 30) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.rts5228_init_from_cfg.exit_crit_edge, label %if.end.i

entry.rts5228_init_from_cfg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rts5228_init_from_cfg.exit

if.end.i:                                         ; preds = %entry
  %conv.i = zext i16 %call.i to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add.i, ptr noundef nonnull %lval.i) #4
  %3 = ptrtoint ptr %lval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lval.i, align 4
  %and.i = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_pci_enable_oobs_polling(ptr noundef %pcr) #4
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @rtsx_pci_disable_oobs_polling(ptr noundef %pcr) #4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then4.i
  %5 = ptrtoint ptr %lval.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %lval.i, align 4
  %7 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %option1.i, align 4
  %and13.i = and i32 %8, -16
  %and6.i = lshr i32 %6, 3
  %and6.lobit.i = and i32 %and6.i, 1
  %storemerge.i = or i32 %and13.i, %and6.lobit.i
  %trunc.i = trunc i32 %6 to i4
  %rev.i = call i4 @llvm.bitreverse.i4(i4 %trunc.i) #4
  %mask.i = and i4 %rev.i, -2
  %storemerge97.i = zext i4 %mask.i to i32
  %storemerge98.i = or i32 %storemerge.i, %storemerge97.i
  %9 = ptrtoint ptr %option1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge98.i, ptr %option1.i, align 4
  %call48.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -425, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %ltr_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %ltr_en.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ltr_en.i, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool49.not.i = icmp eq i8 %11, 0
  br i1 %tobool49.not.i, label %if.end5.i.if.end61.i_crit_edge, label %if.then50.i

if.end5.i.if.end61.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61.i

if.then50.i:                                      ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #4
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %val.i, align 2, !annotation !42
  %13 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcr, align 4
  %call52.i = call i32 @pcie_capability_read_word(ptr noundef %14, i32 noundef 40, ptr noundef nonnull %val.i) #4
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %val.i, align 2
  %17 = and i16 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool55.not.i = icmp eq i16 %17, 0
  %ltr_enabled59.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 3
  br i1 %tobool55.not.i, label %if.else58.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %ltr_enabled59.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %ltr_enabled59.i, align 2
  %ltr_active.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %ltr_active.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %ltr_active.i, align 1
  %ltr_active_latency.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 5
  %20 = ptrtoint ptr %ltr_active_latency.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ltr_active_latency.i, align 4
  %call57.i = call i32 @rtsx_set_ltr_latency(ptr noundef %pcr, i32 noundef %21) #4
  br label %if.end60.i

if.else58.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %ltr_enabled59.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ltr_enabled59.i, align 2
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else58.i, %if.then56.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.end60.i, %if.end5.i.if.end61.i_crit_edge
  %23 = ptrtoint ptr %option1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %option1.i, align 4
  %and64.i = and i32 %24, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  %force_clkreq_068.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 1
  %..i = zext i1 %tobool65.not.i to i8
  %25 = ptrtoint ptr %force_clkreq_068.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %..i, ptr %force_clkreq_068.i, align 4
  br label %rts5228_init_from_cfg.exit

rts5228_init_from_cfg.exit:                       ; preds = %if.end61.i, %entry.rts5228_init_from_cfg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lval.i) #4
  %call2 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -371, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %call3 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -369, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %call4 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -423, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  %call5 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -427, i8 noundef zeroext 32, i8 noundef zeroext 32) #4
  %call6 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -399, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  %call7 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -424, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call8 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 15, i8 noundef zeroext 2) #4
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %26 = ptrtoint ptr %sd30_drive_sel_3v3.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %drive_sel.0.i = load i8, ptr %sd30_drive_sel_3v3.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr @__const.rts5228_fill_driving.driving_3v3, i32 %idxprom.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %call.i39 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %28) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr @__const.rts5228_fill_driving.driving_3v3, i32 %idxprom.i, i32 1
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx6.i, align 1
  %call7.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %30) #4
  %arrayidx10.i = getelementptr [3 x i8], ptr @__const.rts5228_fill_driving.driving_3v3, i32 %idxprom.i, i32 2
  %31 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx10.i, align 1
  %call11.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %32) #4
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %and = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i8 0, i8 48
  %call10 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -253, i8 noundef zeroext 48, i8 noundef zeroext %.) #4
  %force_clkreq_0 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %force_clkreq_0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %force_clkreq_0, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool11.not = icmp eq i8 %36, 0
  %.sink40 = select i1 %tobool11.not, i8 0, i8 -128
  %call15 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -253, i8 noundef zeroext -128, i8 noundef zeroext %.sink40) #4
  %call17 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -394, i8 noundef zeroext -1, i8 noundef zeroext -5) #4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %37 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %reg_pm_ctrl3, align 4
  %call18 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext %38, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  %call19 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -136, i8 noundef zeroext 48, i8 noundef zeroext 32) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5228_optimize_phy(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 7, i16 noundef zeroext -28864) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5228_turn_on_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5228_turn_off_led(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -993, i8 noundef zeroext 2, i8 noundef zeroext 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5228_enable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5228_disable_auto_blink(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -994, i8 noundef zeroext 8, i8 noundef zeroext 0) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5228_card_power_on(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_enable_ocp(ptr noundef %pcr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -655, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -141, i8 noundef zeroext 14, i8 noundef zeroext 14) #4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext 3, i8 noundef zeroext 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496000) #4
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext 3, i8 noundef zeroext 3) #4
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext 8, i8 noundef zeroext 8) #4
  tail call void @msleep(i32 noundef 20) #4
  %call6 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 4) #4
  %call7 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext -1, i8 noundef zeroext -128) #4
  %call8 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -601, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %call9 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -600, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %call10 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -684, i8 noundef zeroext 68, i8 noundef zeroext 68) #4
  %call11 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -606, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  %call12 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -584, i8 noundef zeroext 7, i8 noundef zeroext 0) #4
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %3 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %extra_caps, align 4
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.end.if.end19_crit_edge, label %if.then17

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext 28, i8 noundef zeroext 24) #4
  %call1.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  %call2.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -978, i8 noundef zeroext -1, i8 noundef zeroext 33) #4
  %call3.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1022, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5228_card_power_off(ptr noundef %pcr, i32 noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr.i.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %0 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16) #4, !srcloc !45
  %2 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 16) #4, !srcloc !45
  %call.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -321, i8 noundef zeroext -64, i8 noundef zeroext -64) #4
  %call3.i.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #4
  %call.i = tail call i32 @rts5228_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext 0) #4
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -144, i8 noundef zeroext 15, i8 noundef zeroext 0) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -655, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %4 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ocp_en, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtsx_pci_disable_ocp(ptr noundef %pcr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rts5228_switch_output_voltage(ptr noundef %pcr, i8 noundef zeroext %voltage) #0 align 64 {
entry:
  %driving_3v3.i = alloca [4 x [3 x i8]], align 1
  %driving_1v8.i = alloca [4 x [3 x i8]], align 1
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %val, align 2
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -688, i8 noundef zeroext 32, i8 noundef zeroext 32) #4
  %1 = zext i8 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %voltage, label %entry.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = call i32 @rtsx_pci_read_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, ptr noundef nonnull %val) #4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %val, align 2
  %4 = or i16 %3, 512
  store i16 %4, ptr %val, align 2
  %call4 = call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %call9 = call i32 @rtsx_pci_read_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, ptr noundef nonnull %val) #4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = and i16 %6, -513
  store i16 %7, ptr %val, align 2
  %call12 = call i32 @rtsx_pci_write_phy_register(ptr noundef %pcr, i8 noundef zeroext 8, i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %sw.bb8.cleanup_crit_edge, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %.sink33 = phi i8 [ 112, %sw.bb.sw.epilog_crit_edge ], [ 32, %sw.bb8.sw.epilog_crit_edge ]
  %.sink = phi i8 [ 0, %sw.bb.sw.epilog_crit_edge ], [ -128, %sw.bb8.sw.epilog_crit_edge ]
  %call17 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -143, i8 noundef zeroext 112, i8 noundef zeroext %.sink33) #4
  %call18 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -602, i8 noundef zeroext -128, i8 noundef zeroext %.sink) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  %8 = call ptr @memcpy(ptr %driving_3v3.i, ptr @__const.rts5228_fill_driving.driving_3v3, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  %9 = call ptr @memcpy(ptr %driving_1v8.i, ptr @__const.rts5228_fill_driving.driving_1v8, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %voltage)
  %cmp.i = icmp eq i8 %voltage, 0
  %sd30_drive_sel_3v3.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %sd30_drive_sel_1v8.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %driving.0.i = select i1 %cmp.i, ptr %driving_3v3.i, ptr %driving_1v8.i
  %drive_sel.0.in.i = select i1 %cmp.i, ptr %sd30_drive_sel_3v3.i, ptr %sd30_drive_sel_1v8.i
  %10 = ptrtoint ptr %drive_sel.0.in.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %drive_sel.0.i = load i8, ptr %drive_sel.0.in.i, align 1
  %idxprom.i = zext i8 %drive_sel.0.i to i32
  %arrayidx.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %call.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -678, i8 noundef zeroext -1, i8 noundef zeroext %12) #4
  %arrayidx6.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 1
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6.i, align 1
  %call7.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -674, i8 noundef zeroext -1, i8 noundef zeroext %14) #4
  %arrayidx10.i = getelementptr [3 x i8], ptr %driving.0.i, i32 %idxprom.i, i32 2
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10.i, align 1
  %call11.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -673, i8 noundef zeroext -1, i8 noundef zeroext %16) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_1v8.i) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %driving_3v3.i) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call4, %sw.bb.cleanup_crit_edge ], [ %call12, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtsx5228_fetch_vendor_settings(ptr nocapture noundef %pcr) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !42
  %call = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 1828, ptr noundef nonnull %reg) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx5228_fetch_vendor_settings, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcr, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 1828, i32 noundef %6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end25, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx5228_fetch_vendor_settings, %if.then19)) #4
          to label %cleanup [label %if.then19], !srcloc !41

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcr, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug237, ptr noundef %dev21, ptr noundef nonnull @.str.9) #4
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %shr = lshr i32 %8, 26
  %11 = trunc i32 %shr to i8
  %conv = and i8 %11, 3
  %sd30_drive_sel_1v8 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 33
  %12 = ptrtoint ptr %sd30_drive_sel_1v8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %sd30_drive_sel_1v8, align 1
  %shr27 = lshr i32 %8, 28
  %13 = trunc i32 %shr27 to i8
  %conv29 = and i8 %13, 3
  %aspm_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %14 = ptrtoint ptr %aspm_en to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv29, ptr %aspm_en, align 4
  %call30 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 2068, ptr noundef nonnull %reg) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtsx5228_fetch_vendor_settings, %if.then43)) #4
          to label %do.end48 [label %if.then43], !srcloc !41

if.then43:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcr, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug238, ptr noundef %dev45, ptr noundef nonnull @.str.8, i32 noundef 2068, i32 noundef %18) #4
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %if.end25
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %21 = trunc i32 %20 to i8
  %conv50 = and i8 %21, 2
  %rtd3_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 54
  %22 = ptrtoint ptr %rtd3_en to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv50, ptr %rtd3_en, align 1
  %and51 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.end48.if.end54_crit_edge, label %if.then53

do.end48.if.end54_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then53:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #6
  %extra_caps = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 31
  %23 = ptrtoint ptr %extra_caps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %extra_caps, align 4
  %or = or i32 %24, 128
  store i32 %or, ptr %extra_caps, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %do.end48.if.end54_crit_edge
  %25 = lshr i8 %21, 5
  %conv57 = and i8 %25, 3
  %sd30_drive_sel_3v3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 34
  %26 = ptrtoint ptr %sd30_drive_sel_3v3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv57, ptr %sd30_drive_sel_3v3, align 2
  %and58 = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end54.cleanup_crit_edge, label %if.then60

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 39
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %or61 = or i32 %28, 2
  store i32 %or61, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end54.cleanup_crit_edge, %if.then19, %do.body7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5228_force_power_down(ptr noundef %pcr, i8 noundef zeroext %pm_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -255, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -254, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -253, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %reg_pm_ctrl3 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 48
  %0 = ptrtoint ptr %reg_pm_ctrl3 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reg_pm_ctrl3, align 4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext %1, i8 noundef zeroext 16, i8 noundef zeroext 16) #4
  %call4 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -1024, i8 noundef zeroext 1, i8 noundef zeroext 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5228_stop_cmd(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 5
  %0 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16) #4, !srcloc !45
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16) #4, !srcloc !45
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -321, i8 noundef zeroext -64, i8 noundef zeroext -64) #4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -460, i8 noundef zeroext -128, i8 noundef zeroext -128) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5228_set_aspm(ptr noundef %pcr, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %aspm_enabled.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 38
  %0 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aspm_enabled.i, align 4, !range !43
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i = icmp eq i8 %1, 1
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %aspm_en.i = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 36
  %2 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aspm_en.i, align 4
  %4 = and i8 %3, 2
  %5 = or i8 %4, 48
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -425, i8 noundef zeroext 51, i8 noundef zeroext %5) #4
  %6 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcr, align 4
  %8 = ptrtoint ptr %aspm_en.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aspm_en.i, align 4
  %conv8.i = zext i8 %9 to i16
  %call9.i = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %7, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext %conv8.i) #4
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i3 = icmp eq i8 %1, 0
  br i1 %cmp.i3, label %if.else.if.end_crit_edge, label %if.end.i5

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i5:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcr, align 4
  %call.i4 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %11, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 0) #4
  %call4.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -425, i8 noundef zeroext 51, i8 noundef zeroext 48) #4
  %call5.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -608, i8 noundef zeroext 16, i8 noundef zeroext 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.end.i5, %if.end.i
  %.sink = phi i8 [ 0, %if.end.i5 ], [ 1, %if.end.i ]
  %22 = ptrtoint ptr %aspm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %aspm_enabled.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5228_set_l1off_cfg_sub_d0(ptr noundef %pcr, i32 noundef %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %option1 = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2
  %0 = ptrtoint ptr %option1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %option1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool.not = icmp eq i32 %active, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then.if.end11_crit_edge, label %if.then7

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %ltr_l1off_snooze_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 10
  %2 = ptrtoint ptr %ltr_l1off_snooze_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ltr_l1off_snooze_sspwrgate, align 1
  br label %if.end11

if.else:                                          ; preds = %entry
  %and5 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool8.not = icmp eq i32 %and5, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.then9

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %ltr_l1off_sspwrgate = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 9
  %4 = ptrtoint ptr %ltr_l1off_sspwrgate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ltr_l1off_sspwrgate, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else.if.end11_crit_edge, %if.then7, %if.then.if.end11_crit_edge
  %val.0 = phi i8 [ %3, %if.then7 ], [ 0, %if.then.if.end11_crit_edge ], [ %5, %if.then9 ], [ 0, %if.else.if.end11_crit_edge ]
  %call = tail call i32 @rtsx_set_l1off_sub(ptr noundef %pcr, i8 noundef zeroext %val.0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5228_enable_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext -1, i8 noundef zeroext 12) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 18) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5228_disable_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 12, i8 noundef zeroext 0) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5228_init_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !42
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 18) #4
  %sd_800mA_ocp_thd = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 13
  %3 = ptrtoint ptr %sd_800mA_ocp_thd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sd_800mA_ocp_thd, align 4
  %call2 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext -32, i8 noundef zeroext %4) #4
  %call3 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 12, i8 noundef zeroext 8) #4
  %call4 = call i32 @rtsx_pci_read_register(ptr noundef %pcr, i16 noundef zeroext -142, ptr noundef nonnull %val) #4
  %ocp_glitch = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %ocp_glitch to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ocp_glitch, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %val, align 1
  %call5 = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -660, i8 noundef zeroext 15, i8 noundef zeroext %6) #4
  %call.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext -1, i8 noundef zeroext 12) #4
  %call1.i = call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 18) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -142, i8 noundef zeroext 18, i8 noundef zeroext 0) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5228_process_ocp(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ocp_en = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %ocp_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ocp_en, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end:                                           ; preds = %entry
  %ocp_stat = getelementptr inbounds %struct.rtsx_pcr, ptr %pcr, i32 0, i32 52
  %call = tail call i32 @rtsx_pci_get_ocpstat(ptr noundef %pcr, ptr noundef %ocp_stat) #4
  %2 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ocp_stat, align 1
  %4 = and i8 %3, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  %call1.i = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  %call4 = tail call i32 @rts5228_card_power_off(ptr noundef %pcr, i32 noundef 0)
  %call5 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -683, i8 noundef zeroext 4, i8 noundef zeroext 0) #4
  %6 = ptrtoint ptr %ocp_stat to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ocp_stat, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rts5228_clear_ocpstat(ptr noundef %pcr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #4
  %call1 = tail call i32 @rtsx_pci_write_register(ptr noundef %pcr, i16 noundef zeroext -662, i8 noundef zeroext 3, i8 noundef zeroext 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_enable_oobs_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_disable_oobs_polling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_ltr_latency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_write_phy_register(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_enable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtsx_pci_disable_ocp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_phy_register(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_set_l1off_sub(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_read_register(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtsx_pci_get_ocpstat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i4 @llvm.bitreverse.i4(i4) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !21, !22, !23, !25, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @rts5228_pci_switch_clock.depth, !1, !"depth", i1 false, i1 false}
!1 = !{!"../drivers/misc/cardreader/rts5228.c", i32 587, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/cardreader/rts5228.c", i32 607, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug239, !3, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/cardreader/rts5228.c", i32 612, i32 2}
!10 = !{ptr @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug240, !9, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/misc/cardreader/rts5228.c", i32 643, i32 2}
!13 = !{ptr @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug241, !12, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/misc/cardreader/rts5228.c", i32 669, i32 2}
!16 = !{ptr @rts5228_pci_switch_clock.__UNIQUE_ID_ddebug242, !15, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!17 = !{ptr @rts5228_pcr_ops, !18, !"rts5228_pcr_ops", i1 false, i1 false}
!18 = !{!"../drivers/misc/cardreader/rts5228.c", i32 553, i32 29}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/cardreader/rts5228.c", i32 68, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug236, !20, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/cardreader/rts5228.c", i32 71, i32 3}
!25 = !{ptr @rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug237, !24, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!26 = !{ptr @rtsx5228_fetch_vendor_settings.__UNIQUE_ID_ddebug238, !27, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!27 = !{!"../drivers/misc/cardreader/rts5228.c", i32 79, i32 2}
!28 = !{ptr @rts5228_sd_pull_ctl_enable_tbl, !29, !"rts5228_sd_pull_ctl_enable_tbl", i1 false, i1 false}
!29 = !{!"../drivers/misc/cardreader/rts5228.c", i32 140, i32 18}
!30 = !{ptr @rts5228_sd_pull_ctl_disable_tbl, !31, !"rts5228_sd_pull_ctl_disable_tbl", i1 false, i1 false}
!31 = !{!"../drivers/misc/cardreader/rts5228.c", i32 153, i32 18}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148971659, i64 2148971664, i64 2148971677, i64 2148971721, i64 2148971755, i64 2148971776}
!42 = !{!"auto-init"}
!43 = !{i8 0, i8 2}
!44 = !{i64 2152588817}
!45 = !{i64 5046695}
