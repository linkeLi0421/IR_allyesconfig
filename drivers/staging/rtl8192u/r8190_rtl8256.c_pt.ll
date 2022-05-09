; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192u/r8190_rtl8256.c_pt.bc'
source_filename = "../drivers/staging/rtl8192u/r8190_rtl8256.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.r8192_priv = type { ptr, i16, i16, i16, i8, i8, i32, i32, [9 x i8], i32, ptr, i16, i32, i16, i32, i16, i16, %struct.spinlock, %struct.spinlock, %struct.mutex, i16, i16, i16, i16, i16, i16, %struct.mutex, i32, i32, ptr, ptr, ptr, ptr, i16, %struct.Stats, %struct.iw_statistics, ptr, ptr, ptr, %struct.atomic_t, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, i16, [16 x %struct.atomic_t], %struct.tasklet_struct, ptr, i16, i16, i32, i8, i32, i32, i16, i32, i8, i8, i8, i8, i16, %struct.ChnlAccessSetting, %struct.work_struct, i16, i8, i8, i8, i8, i32, ptr, i32, i16, i8, i8, i8, i8, i8, [3 x i8], [3 x i8], [24 x i8], [4 x %struct._BB_REGISTER_DEFINITION], [6 x i32], i32, [14 x i8], [14 x i8], [14 x i8], i32, i8, [2 x i8], i8, [2 x i8], i8, i8, i32, i8, i8, i8, i8, i32, i8, i8, [4 x i32], i8, [4 x i8], i8, %struct.timer_list, i8, i8, i8, i8, i8, i8, i8, %struct._rate_adaptive, [37 x %struct._txbbgain_struct], i8, i8, i8, i8, [23 x %struct._ccktxbbgain_struct], [23 x %struct._ccktxbbgain_struct], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct._init_gain, [4 x i8], i8, i8, i8, %struct.timer_list, i8, i32, i32, i32, i8, i8, i32, i8, i16, i8, i8, i32, i8, i32, i32, [40 x i8], i8, i32, i32, i8, i8, i32, i8, i8, i16, i16, i32, i8, i8, i8, i16, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.Stats = type { i32, i32, i32, i32, i32, [4 x [32 x i32]], [2 x [32 x i32]], [5 x i32], [5 x i32], i32, i32, i32, i32, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [100 x i32], [100 x i32], i32, i32, i32, i32, i32, i32, [4 x i8], [2 x i8], [4 x i32], %struct._rt_9x_tx_rate_history, [100 x i32], i32, %struct._RT_SMOOTH_DATA_4RF, i32 }
%struct._rt_9x_tx_rate_history = type { [4 x i32], [8 x i32], [4 x [16 x i32]] }
%struct._RT_SMOOTH_DATA_4RF = type { [4 x [100 x i8]], i32, i32, [4 x i32] }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.120, i32 }
%union.anon.120 = type { ptr }
%struct.ChnlAccessSetting = type { i16, i16, i16, i16, i16, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct._BB_REGISTER_DEFINITION = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._rate_adaptive = type { i8, i32, i16, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct._txbbgain_struct = type { i32, i32 }
%struct._ccktxbbgain_struct = type { [8 x i8] }
%struct._init_gain = type { i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }

@rt_global_debug_component = external dso_local local_unnamed_addr global i32, align 4
@phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r8192u_usb\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phy_set_rf8256_bandwidth\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/rtl8192u/r8190_rtl8256.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RTL8192U: %s(): unknown hardware version\0A\0A\00", [53 x i8] zeroinitializer }, align 32
@phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RTL8192U: %s(): unknown Bandwidth: %#X\0A\0A\00", [55 x i8] zeroinitializer }, align 32
@__const.phy_set_rf8256_ofdm_tx_power.RegOffset = private unnamed_addr constant [6 x i16] [i16 3584, i16 3588, i16 3600, i16 3604, i16 3608, i16 3612], align 2
@phy_rf8256_config_para_file.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"phy_rf8256_config_para_file\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RTL8192U: phy_rf8256_config():Check Radio[%d] Fail!!\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@phy_rf8256_config_para_file.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RTL8192U: RF %d %d register final value: %x\0A\0A\00", [50 x i8] zeroinitializer }, align 32
@phy_rf8256_config_para_file.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@phy_rf8256_config_para_file.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@phy_rf8256_config_para_file.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@phy_rf8256_config_para_file.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RTL8192U: %s():Radio[%d] Fail!!\0A\00", [63 x i8] zeroinitializer }, align 32
@phy_rf8256_config_para_file.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.9, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RTL8192U: PHY Initialization Success\0A\0A\00", [57 x i8] zeroinitializer }, align 32
@phy_rf8256_config_para_file.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RTL8192U: PHY Initialization failed\0A\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.phy_rf8256_config_para_file = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 1048576, i32 16, i32 1048576], [16 x i8] zeroinitializer }, align 32
@switch.table.phy_rf8256_config_para_file.11 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 1048576, i32 16, i32 1048576], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 9]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 61, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 80, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 161, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 173, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 216, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 221, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [44 x i8] c"../drivers/staging/rtl8192u/r8190_rtl8256.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 225, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [41 x i8] c"switch.table.phy_rf8256_config_para_file\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [44 x i8] c"switch.table.phy_rf8256_config_para_file.11\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @switch.table.phy_rf8256_config_para_file, ptr @switch.table.phy_rf8256_config_para_file.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_rf8256_config_para_file to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_rf8256_config_para_file.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phy_set_rf8256_bandwidth(ptr noundef %dev, i32 noundef %Bandwidth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %card_8192_version28 = getelementptr i8, ptr %dev, i32 30164
  %chan = getelementptr i8, ptr %dev, i32 30362
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %call3 = tail call zeroext i8 @rtl8192_phy_CheckIsLegalRFPath(ptr noundef %dev, i32 noundef %indvars.iv) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call3)
  %tobool.not = icmp eq i8 %call3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.body
  %0 = zext i32 %Bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %Bandwidth, label %do.body77 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb27
  ]

sw.bb:                                            ; preds = %if.end
  %1 = ptrtoint ptr %card_8192_version28 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %card_8192_version28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp ult i32 %2, 2
  br i1 %switch, label %if.then9, label %do.body

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 11, i32 noundef 4095, i32 noundef 256) #3
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 44, i32 noundef 4095, i32 noundef 983) #3
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 14, i32 noundef 4095, i32 noundef 33) #3
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 20, i32 noundef 4095, i32 noundef 1451) #3
  br label %for.inc

do.body:                                          ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %3 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool14.not = icmp sgt i32 %3, -1
  br i1 %tobool14.not, label %do.body.for.inc_crit_edge, label %do.body16

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_set_rf8256_bandwidth, %if.then21)) #3
          to label %for.inc [label %if.then21], !srcloc !42

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #3
  br label %for.inc

sw.bb27:                                          ; preds = %if.end
  %4 = ptrtoint ptr %card_8192_version28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %card_8192_version28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch128 = icmp ult i32 %5, 2
  br i1 %switch128, label %if.then35, label %do.body53

if.then35:                                        ; preds = %sw.bb27
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 11, i32 noundef 4095, i32 noundef 768) #3
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 44, i32 noundef 4095, i32 noundef 991) #3
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 14, i32 noundef 4095, i32 noundef 161) #3
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %chan, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %7, label %if.else49 [
    i16 3, label %if.then35.if.then47_crit_edge
    i16 9, label %if.then35.if.then47_crit_edge140
  ]

if.then35.if.then47_crit_edge140:                 ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then47

if.then35.if.then47_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then47

if.then47:                                        ; preds = %if.then35.if.then47_crit_edge, %if.then35.if.then47_crit_edge140
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 20, i32 noundef 4095, i32 noundef 1435) #3
  br label %for.inc

if.else49:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 20, i32 noundef 4095, i32 noundef 1451) #3
  br label %for.inc

do.body53:                                        ; preds = %sw.bb27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %9 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool55.not = icmp sgt i32 %9, -1
  br i1 %tobool55.not, label %do.body53.for.inc_crit_edge, label %do.body57

do.body53.for.inc_crit_edge:                      ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body57:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_set_rf8256_bandwidth, %if.then69)) #3
          to label %for.inc [label %if.then69], !srcloc !42

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #3
  br label %for.inc

do.body77:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %10 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool79.not = icmp sgt i32 %10, -1
  br i1 %tobool79.not, label %do.body77.for.inc_crit_edge, label %do.body81

do.body77.for.inc_crit_edge:                      ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body81:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_set_rf8256_bandwidth, %if.then93)) #3
          to label %for.inc [label %if.then93], !srcloc !42

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %Bandwidth) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then93, %do.body81, %do.body77.for.inc_crit_edge, %if.then69, %do.body57, %do.body53.for.inc_crit_edge, %if.else49, %if.then47, %if.then21, %do.body16, %do.body.for.inc_crit_edge, %if.then9, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8192_phy_CheckIsLegalRFPath(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192_phy_SetRFReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phy_rf8256_config(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %NumTotalRFPath = getelementptr i8, ptr %dev, i32 34392
  %0 = ptrtoint ptr %NumTotalRFPath to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %NumTotalRFPath, align 4
  tail call fastcc void @phy_rf8256_config_para_file(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @phy_rf8256_config_para_file(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  %NumTotalRFPath = getelementptr i8, ptr %dev, i32 34392
  %0 = ptrtoint ptr %NumTotalRFPath to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %NumTotalRFPath, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp389.not = icmp eq i8 %1, 0
  br i1 %cmp389.not, label %entry.do.body219_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body219_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body219

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %u4RegValue.0392 = phi i32 [ %u4RegValue.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call4 = tail call zeroext i8 @rtl8192_phy_CheckIsLegalRFPath(ptr noundef %dev, i32 noundef %indvars.iv) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4)
  %tobool.not = icmp eq i8 %call4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %indvars.iv
  %2 = trunc i32 %indvars.iv to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %3 = icmp ult i8 %2, 4
  br i1 %3, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %sext414 = shl i32 %indvars.iv, 24
  %4 = ashr exact i32 %sext414, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.phy_rf8256_config_para_file, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call9 = tail call i32 @rtl8192_QueryBBReg(ptr noundef %dev, i32 noundef %7, i32 noundef %switch.load) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %u4RegValue.1 = phi i32 [ %u4RegValue.0392, %if.end.sw.epilog_crit_edge ], [ %call9, %switch.lookup ]
  %rfintfe = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %indvars.iv, i32 3
  %8 = ptrtoint ptr %rfintfe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rfintfe, align 4
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef %9, i32 noundef 1048576, i32 noundef 1) #3
  %rfintfo = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %indvars.iv, i32 2
  %10 = ptrtoint ptr %rfintfo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rfintfo, align 4
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef %11, i32 noundef 16, i32 noundef 1) #3
  %rfHSSIPara2 = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 81, i32 %indvars.iv, i32 8
  %12 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rfHSSIPara2, align 4
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef %13, i32 noundef 1024, i32 noundef 0) #3
  %14 = ptrtoint ptr %rfHSSIPara2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rfHSSIPara2, align 4
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef %15, i32 noundef 2048, i32 noundef 0) #3
  tail call void @rtl8192_phy_SetRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 0, i32 noundef 4095, i32 noundef 191) #3
  %call13 = tail call zeroext i8 @rtl8192_phy_checkBBAndRF(ptr noundef %dev, i32 noundef 3, i32 noundef %indvars.iv) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call13)
  %tobool14.not = icmp eq i8 %call13, 0
  br i1 %tobool14.not, label %if.end29, label %do.body

do.body:                                          ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %16 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool16.not = icmp sgt i32 %16, -1
  br i1 %tobool16.not, label %do.body.do.body242_crit_edge, label %do.body18

do.body.do.body242_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body242

do.body18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_rf8256_config_para_file, %if.then23)) #3
          to label %do.body242 [label %if.then23], !srcloc !42

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.6, i32 noundef %indvars.iv) #3
  br label %do.body242

if.end29:                                         ; preds = %sw.epilog
  %17 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %2, label %if.end29.sw.epilog185_crit_edge [
    i8 0, label %if.end29.while.body_crit_edge
    i8 1, label %if.end29.while.body74_crit_edge
    i8 2, label %if.end29.while.body114_crit_edge
    i8 3, label %if.end29.while.body154_crit_edge
  ]

if.end29.while.body154_crit_edge:                 ; preds = %if.end29
  br label %while.body154

if.end29.while.body114_crit_edge:                 ; preds = %if.end29
  br label %while.body114

if.end29.while.body74_crit_edge:                  ; preds = %if.end29
  br label %while.body74

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  br label %while.body

if.end29.sw.epilog185_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog185

while.body:                                       ; preds = %do.end64.while.body_crit_edge, %if.end29.while.body_crit_edge
  %RetryTimes.0388 = phi i8 [ %dec, %do.end64.while.body_crit_edge ], [ 5, %if.end29.while.body_crit_edge ]
  %call38 = tail call zeroext i8 @rtl8192_phy_ConfigRFWithHeaderFile(ptr noundef %dev, i32 noundef %indvars.iv) #3
  %call40 = tail call i32 @rtl8192_phy_QueryRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef 4095) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %18 = load i32, ptr @rt_global_debug_component, align 4
  %and42 = and i32 %18, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %while.body.do.end64_crit_edge, label %do.body45

while.body.do.end64_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end64

do.body45:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_rf8256_config_para_file, %if.then57)) #3
          to label %do.end64 [label %if.then57], !srcloc !42

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.7, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef %call40) #3
  br label %do.end64

do.end64:                                         ; preds = %if.then57, %do.body45, %while.body.do.end64_crit_edge
  %dec = add nsw i8 %RetryTimes.0388, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2033, i32 %call40)
  %cmp32.not = icmp eq i32 %call40, 2033
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp35.not = icmp eq i8 %dec, 0
  %or.cond = select i1 %cmp32.not, i1 true, i1 %cmp35.not
  br i1 %or.cond, label %do.end64.sw.epilog185_crit_edge, label %do.end64.while.body_crit_edge

do.end64.while.body_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

do.end64.sw.epilog185_crit_edge:                  ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog185

while.body74:                                     ; preds = %do.end102.while.body74_crit_edge, %if.end29.while.body74_crit_edge
  %RetryTimes.1387 = phi i8 [ %dec103, %do.end102.while.body74_crit_edge ], [ 5, %if.end29.while.body74_crit_edge ]
  %call76 = tail call zeroext i8 @rtl8192_phy_ConfigRFWithHeaderFile(ptr noundef %dev, i32 noundef %indvars.iv) #3
  %call78 = tail call i32 @rtl8192_phy_QueryRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef 4095) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %19 = load i32, ptr @rt_global_debug_component, align 4
  %and80 = and i32 %19, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %while.body74.do.end102_crit_edge, label %do.body83

while.body74.do.end102_crit_edge:                 ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end102

do.body83:                                        ; preds = %while.body74
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_rf8256_config_para_file, %if.then95)) #3
          to label %do.end102 [label %if.then95], !srcloc !42

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.7, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef %call78) #3
  br label %do.end102

do.end102:                                        ; preds = %if.then95, %do.body83, %while.body74.do.end102_crit_edge
  %dec103 = add nsw i8 %RetryTimes.1387, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2033, i32 %call78)
  %cmp67.not = icmp eq i32 %call78, 2033
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec103)
  %cmp71.not = icmp eq i8 %dec103, 0
  %or.cond348 = select i1 %cmp67.not, i1 true, i1 %cmp71.not
  br i1 %or.cond348, label %do.end102.sw.epilog185_crit_edge, label %do.end102.while.body74_crit_edge

do.end102.while.body74_crit_edge:                 ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body74

do.end102.sw.epilog185_crit_edge:                 ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog185

while.body114:                                    ; preds = %do.end142.while.body114_crit_edge, %if.end29.while.body114_crit_edge
  %RetryTimes.2386 = phi i8 [ %dec143, %do.end142.while.body114_crit_edge ], [ 5, %if.end29.while.body114_crit_edge ]
  %call116 = tail call zeroext i8 @rtl8192_phy_ConfigRFWithHeaderFile(ptr noundef %dev, i32 noundef %indvars.iv) #3
  %call118 = tail call i32 @rtl8192_phy_QueryRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef 4095) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %20 = load i32, ptr @rt_global_debug_component, align 4
  %and120 = and i32 %20, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %while.body114.do.end142_crit_edge, label %do.body123

while.body114.do.end142_crit_edge:                ; preds = %while.body114
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end142

do.body123:                                       ; preds = %while.body114
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_rf8256_config_para_file, %if.then135)) #3
          to label %do.end142 [label %if.then135], !srcloc !42

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.7, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef %call118) #3
  br label %do.end142

do.end142:                                        ; preds = %if.then135, %do.body123, %while.body114.do.end142_crit_edge
  %dec143 = add nsw i8 %RetryTimes.2386, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2033, i32 %call118)
  %cmp107.not = icmp eq i32 %call118, 2033
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec143)
  %cmp111.not = icmp eq i8 %dec143, 0
  %or.cond349 = select i1 %cmp107.not, i1 true, i1 %cmp111.not
  br i1 %or.cond349, label %do.end142.sw.epilog185_crit_edge, label %do.end142.while.body114_crit_edge

do.end142.while.body114_crit_edge:                ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body114

do.end142.sw.epilog185_crit_edge:                 ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog185

while.body154:                                    ; preds = %do.end182.while.body154_crit_edge, %if.end29.while.body154_crit_edge
  %RetryTimes.3385 = phi i8 [ %dec183, %do.end182.while.body154_crit_edge ], [ 5, %if.end29.while.body154_crit_edge ]
  %call156 = tail call zeroext i8 @rtl8192_phy_ConfigRFWithHeaderFile(ptr noundef %dev, i32 noundef %indvars.iv) #3
  %call158 = tail call i32 @rtl8192_phy_QueryRFReg(ptr noundef %dev, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef 4095) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %21 = load i32, ptr @rt_global_debug_component, align 4
  %and160 = and i32 %21, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %while.body154.do.end182_crit_edge, label %do.body163

while.body154.do.end182_crit_edge:                ; preds = %while.body154
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end182

do.body163:                                       ; preds = %while.body154
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_rf8256_config_para_file, %if.then175)) #3
          to label %do.end182 [label %if.then175], !srcloc !42

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.7, i32 noundef %indvars.iv, i32 noundef 3, i32 noundef %call158) #3
  br label %do.end182

do.end182:                                        ; preds = %if.then175, %do.body163, %while.body154.do.end182_crit_edge
  %dec183 = add nsw i8 %RetryTimes.3385, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2033, i32 %call158)
  %cmp147.not = icmp eq i32 %call158, 2033
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec183)
  %cmp151.not = icmp eq i8 %dec183, 0
  %or.cond350 = select i1 %cmp147.not, i1 true, i1 %cmp151.not
  br i1 %or.cond350, label %do.end182.sw.epilog185_crit_edge, label %do.end182.while.body154_crit_edge

do.end182.while.body154_crit_edge:                ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body154

do.end182.sw.epilog185_crit_edge:                 ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog185

sw.epilog185:                                     ; preds = %do.end182.sw.epilog185_crit_edge, %do.end142.sw.epilog185_crit_edge, %do.end102.sw.epilog185_crit_edge, %do.end64.sw.epilog185_crit_edge, %if.end29.sw.epilog185_crit_edge
  %ret.5 = phi i8 [ 0, %if.end29.sw.epilog185_crit_edge ], [ %call38, %do.end64.sw.epilog185_crit_edge ], [ %call76, %do.end102.sw.epilog185_crit_edge ], [ %call116, %do.end142.sw.epilog185_crit_edge ], [ %call156, %do.end182.sw.epilog185_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %2)
  %22 = icmp ult i8 %2, 4
  br i1 %22, label %switch.lookup411, label %sw.epilog185.sw.epilog191_crit_edge

sw.epilog185.sw.epilog191_crit_edge:              ; preds = %sw.epilog185
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog191

switch.lookup411:                                 ; preds = %sw.epilog185
  call void @__sanitizer_cov_trace_pc() #5
  %sext = shl i32 %indvars.iv, 24
  %23 = ashr exact i32 %sext, 24
  %switch.gep412 = getelementptr inbounds [4 x i32], ptr @switch.table.phy_rf8256_config_para_file.11, i32 0, i32 %23
  %24 = ptrtoint ptr %switch.gep412 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load413 = load i32, ptr %switch.gep412, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef %26, i32 noundef %switch.load413, i32 noundef %u4RegValue.1) #3
  br label %sw.epilog191

sw.epilog191:                                     ; preds = %switch.lookup411, %sw.epilog185.sw.epilog191_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ret.5)
  %tobool192.not = icmp eq i8 %ret.5, 0
  br i1 %tobool192.not, label %sw.epilog191.for.inc_crit_edge, label %do.body194

sw.epilog191.for.inc_crit_edge:                   ; preds = %sw.epilog191
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body194:                                       ; preds = %sw.epilog191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %27 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %tobool196.not = icmp sgt i32 %27, -1
  br i1 %tobool196.not, label %do.body194.do.body242_crit_edge, label %do.body198

do.body194.do.body242_crit_edge:                  ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body242

do.body198:                                       ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_rf8256_config_para_file, %if.then210)) #3
          to label %do.body242 [label %if.then210], !srcloc !42

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef %indvars.iv) #3
  br label %do.body242

for.inc:                                          ; preds = %sw.epilog191.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %u4RegValue.2 = phi i32 [ %u4RegValue.1, %sw.epilog191.for.inc_crit_edge ], [ %u4RegValue.0392, %for.body.for.inc_crit_edge ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %28 = ptrtoint ptr %NumTotalRFPath to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %NumTotalRFPath, align 4
  %30 = zext i8 %29 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body219_crit_edge

for.inc.do.body219_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body219

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

do.body219:                                       ; preds = %for.inc.do.body219_crit_edge, %entry.do.body219_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %31 = load i32, ptr @rt_global_debug_component, align 4
  %and220 = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %do.body219.cleanup_crit_edge, label %do.body223

do.body219.cleanup_crit_edge:                     ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body223:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_rf8256_config_para_file, %if.then235)) #3
          to label %cleanup [label %if.then235], !srcloc !42

if.then235:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.9) #3
  br label %cleanup

do.body242:                                       ; preds = %if.then210, %do.body198, %do.body194.do.body242_crit_edge, %if.then23, %do.body18, %do.body.do.body242_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rt_global_debug_component to i32))
  %32 = load i32, ptr @rt_global_debug_component, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool244.not = icmp sgt i32 %32, -1
  br i1 %tobool244.not, label %do.body242.cleanup_crit_edge, label %do.body246

do.body242.cleanup_crit_edge:                     ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body246:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_rf8256_config_para_file, %if.then258)) #3
          to label %cleanup [label %if.then258], !srcloc !42

if.then258:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.10) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then258, %do.body246, %do.body242.cleanup_crit_edge, %if.then235, %do.body223, %do.body219.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phy_set_rf8256_cck_tx_power(ptr noundef %dev, i8 noundef zeroext %powerlevel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %powerlevel to i32
  %bDynamicTxLowPower = getelementptr i8, ptr %dev, i32 34450
  %0 = ptrtoint ptr %bDynamicTxLowPower to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDynamicTxLowPower, align 2, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then:                                          ; preds = %entry
  %CustomerID = getelementptr i8, ptr %dev, i32 30132
  %2 = ptrtoint ptr %CustomerID to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %CustomerID, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then.if.end4_crit_edge, label %if.else

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %CckPwEnl = getelementptr i8, ptr %dev, i32 34358
  %4 = ptrtoint ptr %CckPwEnl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %CckPwEnl, align 2
  %conv3 = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv3, %conv
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %TxAGC.0 = phi i32 [ %add, %if.else ], [ %conv, %entry.if.end4_crit_edge ], [ 34, %if.then.if.end4_crit_edge ]
  %6 = tail call i32 @llvm.umin.i32(i32 %TxAGC.0, i32 36)
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef 3592, i32 noundef 32512, i32 noundef %6) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8192_setBBreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phy_set_rf8256_ofdm_tx_power(ptr noundef %dev, i8 noundef zeroext %powerlevel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 30120
  %conv = zext i8 %powerlevel to i32
  %TxPowerDiff = getelementptr i8, ptr %dev, i32 34352
  %0 = ptrtoint ptr %TxPowerDiff to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %TxPowerDiff, align 4
  %conv1 = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv1, %conv
  %shl = shl i32 %add, 24
  %shl2 = shl nuw nsw i32 %add, 16
  %shl3 = shl nuw nsw i32 %add, 8
  %or = or i32 %shl2, %add
  %or4 = or i32 %or, %shl
  %or5 = or i32 %or4, %shl3
  %or12 = mul nuw i32 %conv, 16843009
  %bDynamicTxHighPower = getelementptr i8, ptr %dev, i32 34449
  %Pwr_Track = getelementptr i8, ptr %dev, i32 34348
  br label %for.body

for.body:                                         ; preds = %if.end72.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %if.end72.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.r8192_priv, ptr %priv.i, i32 0, i32 82, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp16 = icmp ult i32 %indvars.iv, 2
  %or5.or12 = select i1 %cmp16, i32 %or5, i32 %or12
  %add18 = add i32 %3, %or5.or12
  %4 = trunc i32 %add18 to i8
  %conv19 = and i8 %4, 127
  %and20 = lshr i32 %add18, 8
  %5 = trunc i32 %and20 to i8
  %conv21 = and i8 %5, 127
  %and22 = lshr i32 %add18, 16
  %6 = trunc i32 %and22 to i8
  %conv24 = and i8 %6, 127
  %and25 = lshr i32 %add18, 24
  %7 = trunc i32 %and25 to i8
  %conv27 = and i8 %7, 127
  %8 = tail call i8 @llvm.umin.i8(i8 %conv19, i8 36)
  %9 = tail call i8 @llvm.umin.i8(i8 %conv21, i8 36)
  %10 = tail call i8 @llvm.umin.i8(i8 %conv24, i8 36)
  %11 = tail call i8 @llvm.umin.i8(i8 %conv27, i8 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %indvars.iv)
  %cmp47 = icmp eq i32 %indvars.iv, 3
  br i1 %cmp47, label %if.then49, label %for.body.if.end60_crit_edge

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv50 = zext i8 %11 to i32
  %shl51 = shl nuw nsw i32 %conv50, 24
  %conv52 = zext i8 %10 to i32
  %shl53 = shl nuw nsw i32 %conv52, 16
  %or54 = or i32 %shl51, %shl53
  %conv55 = zext i8 %9 to i32
  %shl56 = shl nuw nsw i32 %conv55, 8
  %or57 = or i32 %or54, %shl56
  %conv58 = zext i8 %8 to i32
  %or59 = or i32 %or57, %conv58
  %12 = ptrtoint ptr %Pwr_Track to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or59, ptr %Pwr_Track, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then49, %for.body.if.end60_crit_edge
  %13 = ptrtoint ptr %bDynamicTxHighPower to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bDynamicTxHighPower, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else, label %if.end60.if.end72_crit_edge

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

if.else:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  %conv62 = zext i8 %11 to i32
  %shl63 = shl nuw nsw i32 %conv62, 24
  %conv64 = zext i8 %10 to i32
  %shl65 = shl nuw nsw i32 %conv64, 16
  %or66 = or i32 %shl63, %shl65
  %conv67 = zext i8 %9 to i32
  %shl68 = shl nuw nsw i32 %conv67, 8
  %or69 = or i32 %or66, %shl68
  %conv70 = zext i8 %8 to i32
  %or71 = or i32 %or69, %conv70
  br label %if.end72

if.end72:                                         ; preds = %if.else, %if.end60.if.end72_crit_edge
  %writeVal.0 = phi i32 [ %or71, %if.else ], [ 50529027, %if.end60.if.end72_crit_edge ]
  %arrayidx74 = getelementptr [6 x i16], ptr @__const.phy_set_rf8256_ofdm_tx_power.RegOffset, i32 0, i32 %indvars.iv
  %15 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx74, align 2
  %conv75 = zext i16 %16 to i32
  tail call void @rtl8192_setBBreg(ptr noundef %dev, i32 noundef %conv75, i32 noundef 2139062143, i32 noundef %writeVal.0) #3
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 6
  br i1 %exitcond.not, label %for.end, label %if.end72.for.body_crit_edge

if.end72.for.body_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8192_QueryBBReg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8192_phy_checkBBAndRF(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8192_phy_ConfigRFWithHeaderFile(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8192_phy_QueryRFReg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !14, !15, !17, !18, !20, !22, !24, !26, !27, !29, !30, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 61, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug346, !1, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!6 = !{ptr @phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug347, !7, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 76, i32 6}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 80, i32 5}
!10 = !{ptr @phy_set_rf8256_bandwidth.__UNIQUE_ID_ddebug348, !9, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 161, i32 4}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug349, !12, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 173, i32 5}
!17 = !{ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug350, !16, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!18 = !{ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug351, !19, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!19 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 181, i32 5}
!20 = !{ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug352, !21, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!21 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 189, i32 5}
!22 = !{ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug353, !23, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!23 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 197, i32 5}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 216, i32 4}
!26 = !{ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug354, !25, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 221, i32 2}
!29 = !{ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug355, !28, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/rtl8192u/r8190_rtl8256.c", i32 225, i32 2}
!32 = !{ptr @phy_rf8256_config_para_file.__UNIQUE_ID_ddebug356, !31, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2148993135, i64 2148993140, i64 2148993153, i64 2148993197, i64 2148993231, i64 2148993252}
!43 = !{i8 0, i8 2}
