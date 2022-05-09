; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/fman/fman_tgec.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fman/fman_tgec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fman_mac = type { ptr, i64, i16, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.fman_rev_info, i8 }
%struct.fman_rev_info = type { i8, i8 }
%struct.tgec_regs = type { i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tgec_cfg = type { i8, i8, i16, i16, i32 }
%struct.eth_hash_entry = type { i64, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.eth_hash_t = type { i16, ptr }
%struct.fman_mac_params = type { ptr, [6 x i8], i8, i32, i16, ptr, ptr, ptr, ptr, i8, ptr }

@tgec_add_hash_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013fsl_dpaa_mac: Unicast Address\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tgec_add_hash_mac_address\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/freescale/fman/fman_tgec.c\00", [48 x i8] zeroinitializer }, align 32
@tgec_add_hash_mac_address._entry_ptr = internal global ptr @tgec_add_hash_mac_address._entry, section ".printk_index", align 4
@tgec_set_exception._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013fsl_dpaa_mac: Undefined exception\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tgec_set_exception\00", [45 x i8] zeroinitializer }, align 32
@tgec_set_exception._entry_ptr = internal global ptr @tgec_set_exception._entry, section ".printk_index", align 4
@tgec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013fsl_dpaa_mac: TGEC version doesn't support this i/f mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tgec_init\00", [22 x i8] zeroinitializer }, align 32
@tgec_init._entry_ptr = internal global ptr @tgec_init._entry, section ".printk_index", align 4
@tgec_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013fsl_dpaa_mac: Setting max frame length FAILED\0A\00", [47 x i8] zeroinitializer }, align 32
@tgec_init._entry_ptr.9 = internal global ptr @tgec_init._entry.7, section ".printk_index", align 4
@tgec_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013fsl_dpaa_mac: allocation hash table is FAILED\0A\00", [47 x i8] zeroinitializer }, align 32
@tgec_init._entry_ptr.12 = internal global ptr @tgec_init._entry.10, section ".printk_index", align 4
@tgec_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tgec_init._entry_ptr.14 = internal global ptr @tgec_init._entry.13, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_init_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013fsl_dpaa_mac: 10G MAC driver only support 10G speed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"check_init_parameters\00", [42 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr = internal global ptr @check_init_parameters._entry, section ".printk_index", align 4
@check_init_parameters._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013fsl_dpaa_mac: uninitialized exception_cb\0A\00", [52 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr.19 = internal global ptr @check_init_parameters._entry.17, section ".printk_index", align 4
@check_init_parameters._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013fsl_dpaa_mac: uninitialized event_cb\0A\00", [56 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr.22 = internal global ptr @check_init_parameters._entry.20, section ".printk_index", align 4
@switch.table.tgec_set_exception = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 65536, i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 542, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 673, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 719, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 727, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 747, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 754, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 273, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 277, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [51 x i8] c"../drivers/net/ethernet/freescale/fman/fman_tgec.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 281, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [32 x i8] c"switch.table.tgec_set_exception\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @check_init_parameters._entry, ptr @check_init_parameters._entry.17, ptr @check_init_parameters._entry.20, ptr @check_init_parameters._entry_ptr, ptr @check_init_parameters._entry_ptr.19, ptr @check_init_parameters._entry_ptr.22, ptr @tgec_add_hash_mac_address._entry, ptr @tgec_add_hash_mac_address._entry_ptr, ptr @tgec_init._entry, ptr @tgec_init._entry.10, ptr @tgec_init._entry.13, ptr @tgec_init._entry.7, ptr @tgec_init._entry_ptr, ptr @tgec_init._entry_ptr.12, ptr @tgec_init._entry_ptr.14, ptr @tgec_init._entry_ptr.9, ptr @tgec_set_exception._entry, ptr @tgec_set_exception._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @switch.table.tgec_set_exception], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgec_add_hash_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgec_set_exception._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgec_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgec_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgec_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tgec_set_exception to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_enable(ptr nocapture noundef readonly %tgec, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgec, align 8
  %command_config = getelementptr inbounds %struct.tgec_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %trunc = trunc i32 %mode to i2
  %rev = call i2 @llvm.bitreverse.i2(i2 %trunc)
  %5 = zext i2 %rev to i32
  %6 = or i32 %4, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %6) #8, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_disable(ptr nocapture noundef readonly %tgec, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgec, align 8
  %command_config = getelementptr inbounds %struct.tgec_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %4, -3
  %spec.select = select i1 %tobool.not, i32 %4, i32 %and5
  %and7 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and10 = and i32 %spec.select, -2
  %tmp.1 = select i1 %tobool8.not, i32 %spec.select, i32 %and10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %tmp.1) #8, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_set_promiscuous(ptr nocapture noundef readonly %tgec, i1 noundef zeroext %new_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgec, align 8
  %command_config = getelementptr inbounds %struct.tgec_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %and = and i32 %4, -17
  %masksel = select i1 %new_val, i32 16, i32 0
  %tmp.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %tmp.0) #8, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tgec_cfg_max_frame_len(ptr nocapture noundef readonly %tgec, i16 noundef zeroext %new_val) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_frame_length = getelementptr inbounds %struct.tgec_cfg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max_frame_length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %new_val, ptr %max_frame_length, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_set_tx_pause_frames(ptr nocapture noundef readonly %tgec, i8 noundef zeroext %priority, i16 noundef zeroext %pause_time, i16 noundef zeroext %thresh_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgec, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %conv = zext i16 %pause_time to i32
  %pause_quant = getelementptr inbounds %struct.tgec_regs, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pause_quant, i32 %conv) #8, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_accept_rx_pause_frames(ptr nocapture noundef readonly %tgec, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgec, align 8
  %command_config = getelementptr inbounds %struct.tgec_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %and = and i32 %4, -257
  %masksel = select i1 %en, i32 0, i32 256
  %tmp.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %tmp.0) #8, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_modify_mac_address(ptr nocapture noundef %tgec, ptr nocapture noundef readonly %p_enet_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %p_enet_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p_enet_addr, align 1
  %conv = zext i8 %3 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %arrayidx1 = getelementptr [6 x i8], ptr %p_enet_addr, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i64
  %shl3 = shl nuw nsw i64 %conv2, 32
  %or = or i64 %shl3, %shl
  %arrayidx4 = getelementptr [6 x i8], ptr %p_enet_addr, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i64
  %shl6 = shl nuw nsw i64 %conv5, 24
  %or7 = or i64 %or, %shl6
  %arrayidx8 = getelementptr [6 x i8], ptr %p_enet_addr, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i64
  %shl10 = shl nuw nsw i64 %conv9, 16
  %or11 = or i64 %or7, %shl10
  %arrayidx12 = getelementptr [6 x i8], ptr %p_enet_addr, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %11 to i64
  %shl14 = shl nuw nsw i64 %conv13, 8
  %or15 = or i64 %or11, %shl14
  %arrayidx16 = getelementptr [6 x i8], ptr %p_enet_addr, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i64
  %or18 = or i64 %or15, %conv17
  %addr = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %or18, ptr %addr, align 8
  %15 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tgec, align 8
  %17 = load i8, ptr %p_enet_addr, align 1
  %conv.i = zext i8 %17 to i32
  %18 = load i8, ptr %arrayidx1, align 1
  %conv2.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %19 = load i8, ptr %arrayidx4, align 1
  %conv4.i = zext i8 %19 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or6.i = or i32 %or.i, %shl5.i
  %20 = load i8, ptr %arrayidx8, align 1
  %conv8.i = zext i8 %20 to i32
  %shl9.i = shl nuw i32 %conv8.i, 24
  %or10.i = or i32 %or6.i, %shl9.i
  %21 = load i8, ptr %arrayidx12, align 1
  %conv12.i = zext i8 %21 to i32
  %22 = load i8, ptr %arrayidx16, align 1
  %conv14.i = zext i8 %22 to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 8
  %or16.i = or i32 %shl15.i, %conv12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %mac_addr_0.i = getelementptr inbounds %struct.tgec_regs, ptr %16, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac_addr_0.i, i32 %or10.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %mac_addr_1.i = getelementptr inbounds %struct.tgec_regs, ptr %16, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac_addr_1.i, i32 %or16.i) #8, !srcloc !52
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_add_hash_mac_address(ptr nocapture noundef readonly %tgec, ptr noundef %eth_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgec, align 8
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eth_addr, align 1
  %conv = zext i8 %5 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %arrayidx2 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i64
  %shl4 = shl nuw nsw i64 %conv3, 32
  %or = or i64 %shl4, %shl
  %arrayidx5 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i64
  %shl7 = shl nuw nsw i64 %conv6, 24
  %or8 = or i64 %or, %shl7
  %arrayidx9 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i64
  %shl11 = shl nuw nsw i64 %conv10, 16
  %or12 = or i64 %or8, %shl11
  %arrayidx13 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i64
  %shl15 = shl nuw nsw i64 %conv14, 8
  %or16 = or i64 %or12, %shl15
  %arrayidx17 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i64
  %or19 = or i64 %or16, %conv18
  %16 = and i64 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not = icmp eq i64 %16, 0
  br i1 %tobool.not, label %do.end, label %cond.false

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

cond.false:                                       ; preds = %if.end
  %call23 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %eth_addr, i32 noundef 6) #12
  %17 = and i32 %call23, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i.i, align 1
  %20 = lshr i32 %call23, 8
  %conv4.i.i = and i32 %20, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %21 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i10.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 2592, i32 noundef 16) #13
  %tobool52.not = icmp eq ptr %call7.i, null
  br i1 %tobool52.not, label %cond.false.cleanup_crit_edge, label %if.end54

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %cond.false
  %conv6.i.i = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %conv6.i.i, 16
  %conv2.i.i = zext i8 %19 to i32
  %25 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %24, %25
  %shr49 = lshr i32 %or.i13.i, 23
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %or19, ptr %call7.i, align 8
  %node = getelementptr inbounds %struct.eth_hash_entry, ptr %call7.i, i32 0, i32 1
  %27 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %node, ptr %node, align 8
  %prev.i = getelementptr inbounds %struct.eth_hash_entry, ptr %call7.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %node, ptr %prev.i, align 4
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 6
  %29 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %multicast_addr_hash, align 8
  %lsts = getelementptr inbounds %struct.eth_hash_t, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lsts, align 4
  %arrayidx57 = getelementptr %struct.list_head, ptr %32, i32 %shr49
  %prev.i93 = getelementptr %struct.list_head, ptr %32, i32 %shr49, i32 1
  %33 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i93, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %34, ptr noundef %arrayidx57) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end54.list_add_tail.exit_crit_edge

if.end54.list_add_tail.exit_crit_edge:            ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %node, ptr %prev.i93, align 4
  %36 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx57, ptr %node, align 8
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %node, ptr %34, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end54.list_add_tail.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  tail call void @arm_heavy_mb() #8
  %or61 = or i32 %shr49, 512
  %hashtable_ctrl = getelementptr inbounds %struct.tgec_regs, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hashtable_ctrl, i32 %or61) #8, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %cond.false.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %cond.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_set_allmulti(ptr nocapture noundef %tgec, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgec, align 8
  %hashtable_ctrl = getelementptr inbounds %struct.tgec_regs, ptr %3, i32 0, i32 11
  br i1 %enable, label %if.end.do.body_crit_edge, label %if.end.do.body7_crit_edge

if.end.do.body7_crit_edge:                        ; preds = %if.end
  br label %do.body7

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %entry1.029 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %or = or i32 %entry1.029, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hashtable_ctrl, i32 %or) #8, !srcloc !52
  %inc = add nuw nsw i32 %entry1.029, 1
  %exitcond31.not = icmp eq i32 %inc, 512
  br i1 %exitcond31.not, label %do.body.if.end14_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %if.end.do.body7_crit_edge
  %entry1.128 = phi i32 [ %inc12, %do.body7.do.body7_crit_edge ], [ 0, %if.end.do.body7_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %and = and i32 %entry1.128, 2147483135
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hashtable_ctrl, i32 %and) #8, !srcloc !52
  %inc12 = add nuw nsw i32 %entry1.128, 1
  %exitcond.not = icmp eq i32 %inc12, 512
  br i1 %exitcond.not, label %do.body7.if.end14_crit_edge, label %do.body7.do.body7_crit_edge

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.body7.if.end14_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %do.body7.if.end14_crit_edge, %do.body.if.end14_crit_edge
  %allmulti_enabled = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 13
  %4 = ptrtoint ptr %allmulti_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %allmulti_enabled, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_set_tstamp(ptr nocapture noundef readonly %tgec, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgec, align 8
  %command_config = getelementptr inbounds %struct.tgec_regs, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %and = and i32 %4, -1048577
  %masksel = select i1 %enable, i32 1048576, i32 0
  %tmp.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %tmp.0) #8, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_del_hash_mac_address(ptr nocapture noundef readonly %tgec, ptr noundef %eth_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgec, align 8
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %eth_addr, align 8
  %shr = lshr i64 %5, 16
  %call2 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %eth_addr, i32 noundef 6) #12
  %6 = lshr i32 %call2, 8
  %conv4.i.i = and i32 %6, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %7 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %8 to i32
  %9 = shl nuw nsw i32 %conv6.i.i, 16
  %10 = and i32 %call2, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %12 to i32
  %13 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %9, %13
  %shr25 = lshr i32 %or.i13.i, 23
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 6
  %14 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %multicast_addr_hash, align 8
  %lsts = getelementptr inbounds %struct.eth_hash_t, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lsts, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %17, i32 %shr25
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %pos.093 = load ptr, ptr %arrayidx, align 4
  %cmp.i.not94 = icmp eq ptr %pos.093, %arrayidx
  br i1 %cmp.i.not94, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %pos.095 = phi ptr [ %pos.0, %for.inc.for.body_crit_edge ], [ %pos.093, %if.end.for.body_crit_edge ]
  %tobool32.not = icmp eq ptr %pos.095, null
  %add.ptr = getelementptr i8, ptr %pos.095, i32 -8
  %tobool38.not90 = icmp eq ptr %add.ptr, null
  %tobool38.not = or i1 %tobool32.not, %tobool38.not90
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %shr)
  %cmp = icmp eq i64 %20, %shr
  br i1 %cmp, label %if.then40, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then40:                                        ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pos.095) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then40.list_del_init.exit_crit_edge

if.then40.list_del_init.exit_crit_edge:           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.095, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %pos.095 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pos.095, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then40.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %pos.095 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %pos.095, ptr %pos.095, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pos.095, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pos.095, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef nonnull %add.ptr) #8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %29 = ptrtoint ptr %pos.095 to i32
  call void @__asan_load4_noabort(i32 %29)
  %pos.0 = load ptr, ptr %pos.095, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %arrayidx
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del_init.exit, %if.end.for.end_crit_edge
  %allmulti_enabled = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 13
  %30 = ptrtoint ptr %allmulti_enabled to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %allmulti_enabled, align 2, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool43.not = icmp eq i8 %31, 0
  br i1 %tobool43.not, label %if.then44, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %for.end
  %32 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %multicast_addr_hash, align 8
  %lsts46 = getelementptr inbounds %struct.eth_hash_t, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %lsts46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lsts46, align 4
  %arrayidx47 = getelementptr %struct.list_head, ptr %35, i32 %shr25
  %36 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx47, align 4
  %cmp.i88.not = icmp eq ptr %37, %arrayidx47
  br i1 %cmp.i88.not, label %do.body, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %hashtable_ctrl = getelementptr inbounds %struct.tgec_regs, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hashtable_ctrl, i32 %shr25) #8, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then44.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then44.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_get_version(ptr nocapture noundef readonly %tgec, ptr nocapture noundef writeonly %mac_version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgec, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %5 = ptrtoint ptr %mac_version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mac_version, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_set_exception(ptr nocapture noundef %tgec, i32 noundef %exception, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tgec, align 8
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %exception)
  %4 = icmp ult i32 %exception, 17
  br i1 %4, label %switch.lookup, label %do.end

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.tgec_set_exception, i32 0, i32 %exception
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br i1 %enable, label %if.then5, label %if.else

if.then5:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %exceptions = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 9
  %6 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %exceptions, align 4
  %or = or i32 %7, %switch.load
  store i32 %or, ptr %exceptions, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %imask = getelementptr inbounds %struct.tgec_regs, ptr %1, i32 0, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %or18 = or i32 %8, %switch.load
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask, i32 %or18) #8, !srcloc !52
  br label %cleanup

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %switch.load, -1
  %exceptions6 = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 9
  %9 = ptrtoint ptr %exceptions6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %exceptions6, align 4
  %and = and i32 %10, %neg
  store i32 %and, ptr %exceptions6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %imask25 = getelementptr inbounds %struct.tgec_regs, ptr %1, i32 0, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask25) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %and29 = and i32 %11, %neg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask25, i32 %and29) #8, !srcloc !52
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_init(ptr noundef %tgec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_speed.i = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 2
  %2 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10000, i16 %3)
  %cmp.i = icmp ult i16 %3, 10000
  br i1 %cmp.i, label %if.end.check_init_parameters.exit_crit_edge, label %if.end.i

if.end.check_init_parameters.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_init_parameters.exit

if.end.i:                                         ; preds = %if.end
  %exception_cb.i = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 4
  %4 = ptrtoint ptr %exception_cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exception_cb.i, align 8
  %tobool.not.i111 = icmp eq ptr %5, null
  br i1 %tobool.not.i111, label %if.end.i.check_init_parameters.exit_crit_edge, label %if.end7.i

if.end.i.check_init_parameters.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_init_parameters.exit

if.end7.i:                                        ; preds = %if.end.i
  %event_cb.i = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 5
  %6 = ptrtoint ptr %event_cb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event_cb.i, align 4
  %tobool8.not.i = icmp eq ptr %7, null
  br i1 %tobool8.not.i, label %if.end7.i.check_init_parameters.exit_crit_edge, label %if.end4

if.end7.i.check_init_parameters.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_init_parameters.exit

check_init_parameters.exit:                       ; preds = %if.end7.i.check_init_parameters.exit_crit_edge, %if.end.i.check_init_parameters.exit_crit_edge, %if.end.check_init_parameters.exit_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.15, %if.end.check_init_parameters.exit_crit_edge ], [ @.str.18, %if.end.i.check_init_parameters.exit_crit_edge ], [ @.str.21, %if.end7.i.check_init_parameters.exit_crit_edge ]
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.21.sink.i) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i
  %8 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg1, align 8
  %addr = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool6.not = icmp eq i64 %11, 0
  br i1 %tobool6.not, label %if.end4.if.end9_crit_edge, label %for.body.preheader

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.body.preheader:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i64 %11, 40
  %conv = trunc i64 %shr to i32
  %12 = trunc i64 %11 to i32
  %13 = trunc i64 %11 to i32
  %14 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tgec, align 8
  %conv.i = and i32 %conv, 255
  %sh.diff = lshr i64 %11, 24
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl.i = and i32 %tr.sh.diff, 65280
  %or.i = or i32 %shl.i, %conv.i
  %16 = lshr i32 %12, 8
  %shl5.i = and i32 %16, 16711680
  %or6.i = or i32 %or.i, %shl5.i
  %17 = shl i32 %13, 8
  %conv8.i = and i32 %17, -16777216
  %or10.i = or i32 %or6.i, %conv8.i
  %trunc = trunc i64 %11 to i16
  %rev = call i16 @llvm.bswap.i16(i16 %trunc)
  %or16.i = zext i16 %rev to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %mac_addr_0.i = getelementptr inbounds %struct.tgec_regs, ptr %15, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac_addr_0.i, i32 %or10.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %mac_addr_1.i = getelementptr inbounds %struct.tgec_regs, ptr %15, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac_addr_1.i, i32 %or16.i) #8, !srcloc !52
  br label %if.end9

if.end9:                                          ; preds = %for.body.preheader, %if.end4.if.end9_crit_edge
  %fm_rev_info = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 12
  %18 = ptrtoint ptr %fm_rev_info to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fm_rev_info, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp11 = icmp ult i8 %19, 3
  br i1 %cmp11, label %if.then13, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %exceptions = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 9
  %20 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %exceptions, align 4
  %and = and i32 %21, -24577
  store i32 %and, ptr %exceptions, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9.if.end14_crit_edge
  %22 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tgec, align 8
  %exceptions16 = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 9
  %24 = ptrtoint ptr %exceptions16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %exceptions16, align 4
  %promiscuous_mode_enable.i = getelementptr inbounds %struct.tgec_cfg, ptr %9, i32 0, i32 1
  %26 = ptrtoint ptr %promiscuous_mode_enable.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %promiscuous_mode_enable.i, align 1, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i112 = icmp eq i8 %27, 0
  %spec.select.i = select i1 %tobool.not.i112, i32 64, i32 80
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %9, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool1.not.i = icmp eq i8 %29, 0
  %or3.i = or i32 %spec.select.i, 256
  %tmp.1.i = select i1 %tobool1.not.i, i32 %spec.select.i, i32 %or3.i
  %or5.i = or i32 %tmp.1.i, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %command_config.i = getelementptr inbounds %struct.tgec_regs, ptr %23, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config.i, i32 %or5.i) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %max_frame_length.i = getelementptr inbounds %struct.tgec_cfg, ptr %9, i32 0, i32 2
  %30 = ptrtoint ptr %max_frame_length.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_frame_length.i, align 2
  %conv.i113 = zext i16 %31 to i32
  %maxfrm.i = getelementptr inbounds %struct.tgec_regs, ptr %23, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maxfrm.i, i32 %conv.i113) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %pause_quant.i = getelementptr inbounds %struct.tgec_cfg, ptr %9, i32 0, i32 3
  %32 = ptrtoint ptr %pause_quant.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pause_quant.i, align 4
  %conv12.i114 = zext i16 %33 to i32
  %pause_quant13.i = getelementptr inbounds %struct.tgec_regs, ptr %23, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pause_quant13.i, i32 %conv12.i114) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %ievent.i = getelementptr inbounds %struct.tgec_regs, ptr %23, i32 0, i32 25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent.i, i32 -1) #8, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %imask.i = getelementptr inbounds %struct.tgec_regs, ptr %23, i32 0, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask.i) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %or21.i = or i32 %34, %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i, i32 %or21.i) #8, !srcloc !52
  %fm = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 11
  %35 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fm, align 4
  %mac_id = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 8
  %37 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mac_id, align 8
  %39 = ptrtoint ptr %max_frame_length.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_frame_length.i, align 2
  %call25 = tail call i32 @fman_set_mac_max_frame(ptr noundef %36, i8 noundef zeroext %38, i16 noundef zeroext %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  tail call fastcc void @free_init_resources(ptr noundef %tgec)
  br label %cleanup

if.end33:                                         ; preds = %if.end14
  %41 = ptrtoint ptr %fm_rev_info to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %fm_rev_info, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp37 = icmp eq i8 %42, 2
  br i1 %cmp37, label %if.then39, label %if.end33.if.end50_crit_edge

if.end33.if.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %tgec to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tgec, align 8
  %tx_ipg_len = getelementptr inbounds %struct.tgec_regs, ptr %44, i32 0, i32 17
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_ipg_len) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %and45 = and i32 %45, -1024
  %or = or i32 %and45, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_ipg_len, i32 %or) #8, !srcloc !52
  br label %if.end50

if.end50:                                         ; preds = %if.then39, %if.end33.if.end50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3264, i32 noundef 8) #13
  %tobool.not.i115 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i115, label %if.end50.alloc_hash_table.exit.thread_crit_edge, label %if.end.i116

if.end50.alloc_hash_table.exit.thread_crit_edge:  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_hash_table.exit.thread

if.end.i116:                                      ; preds = %if.end50
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 512, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3264, i32 noundef 4096) #13
  %lsts.i = getelementptr inbounds %struct.eth_hash_t, ptr %call7.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %lsts.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i, ptr %lsts.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i116
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp2.not.i = icmp eq i16 %51, 0
  br i1 %cmp2.not.i, label %for.cond.preheader.i.if.end60_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end60_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then6.i:                                       ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %alloc_hash_table.exit.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %lsts.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lsts.i, align 4
  %arrayidx.i = getelementptr %struct.list_head, ptr %53, i32 %i.03.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %53, i32 %i.03.i, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %call7.i.i, align 8
  %conv9.i = zext i16 %57 to i32
  %cmp.i117 = icmp ult i32 %inc.i, %conv9.i
  br i1 %cmp.i117, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end60_crit_edge

for.body.i.if.end60_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

alloc_hash_table.exit.thread:                     ; preds = %if.then6.i, %if.end50.alloc_hash_table.exit.thread_crit_edge
  %multicast_addr_hash140 = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 6
  %58 = ptrtoint ptr %multicast_addr_hash140 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %multicast_addr_hash140, align 8
  tail call fastcc void @free_init_resources(ptr noundef %tgec)
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end60:                                         ; preds = %for.body.i.if.end60_crit_edge, %for.cond.preheader.i.if.end60_crit_edge
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 6
  %59 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %multicast_addr_hash, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i119 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3264, i32 noundef 8) #13
  %tobool.not.i120 = icmp eq ptr %call7.i.i119, null
  br i1 %tobool.not.i120, label %if.end60.alloc_hash_table.exit136.thread_crit_edge, label %if.end.i124

if.end60.alloc_hash_table.exit136.thread_crit_edge: ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_hash_table.exit136.thread

if.end.i124:                                      ; preds = %if.end60
  %61 = ptrtoint ptr %call7.i.i119 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 512, ptr %call7.i.i119, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i121 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3264, i32 noundef 4096) #13
  %lsts.i122 = getelementptr inbounds %struct.eth_hash_t, ptr %call7.i.i119, i32 0, i32 1
  %63 = ptrtoint ptr %lsts.i122 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i121, ptr %lsts.i122, align 4
  %tobool5.not.i123 = icmp eq ptr %call7.i.i.i121, null
  br i1 %tobool5.not.i123, label %if.then6.i127, label %for.cond.preheader.i126

for.cond.preheader.i126:                          ; preds = %if.end.i124
  %64 = ptrtoint ptr %call7.i.i119 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %call7.i.i119, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp2.not.i125 = icmp eq i16 %65, 0
  br i1 %cmp2.not.i125, label %for.cond.preheader.i126.if.end70_crit_edge, label %for.cond.preheader.i126.for.body.i134_crit_edge

for.cond.preheader.i126.for.body.i134_crit_edge:  ; preds = %for.cond.preheader.i126
  br label %for.body.i134

for.cond.preheader.i126.if.end70_crit_edge:       ; preds = %for.cond.preheader.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then6.i127:                                    ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i119) #8
  br label %alloc_hash_table.exit136.thread

for.body.i134:                                    ; preds = %for.body.i134.for.body.i134_crit_edge, %for.cond.preheader.i126.for.body.i134_crit_edge
  %i.03.i128 = phi i32 [ %inc.i131, %for.body.i134.for.body.i134_crit_edge ], [ 0, %for.cond.preheader.i126.for.body.i134_crit_edge ]
  %66 = ptrtoint ptr %lsts.i122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lsts.i122, align 4
  %arrayidx.i129 = getelementptr %struct.list_head, ptr %67, i32 %i.03.i128
  %68 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %arrayidx.i129, ptr %arrayidx.i129, align 4
  %prev.i.i130 = getelementptr %struct.list_head, ptr %67, i32 %i.03.i128, i32 1
  %69 = ptrtoint ptr %prev.i.i130 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx.i129, ptr %prev.i.i130, align 4
  %inc.i131 = add nuw nsw i32 %i.03.i128, 1
  %70 = ptrtoint ptr %call7.i.i119 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %call7.i.i119, align 8
  %conv9.i132 = zext i16 %71 to i32
  %cmp.i133 = icmp ult i32 %inc.i131, %conv9.i132
  br i1 %cmp.i133, label %for.body.i134.for.body.i134_crit_edge, label %for.body.i134.if.end70_crit_edge

for.body.i134.if.end70_crit_edge:                 ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

for.body.i134.for.body.i134_crit_edge:            ; preds = %for.body.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i134

alloc_hash_table.exit136.thread:                  ; preds = %if.then6.i127, %if.end60.alloc_hash_table.exit136.thread_crit_edge
  %unicast_addr_hash147 = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 7
  %72 = ptrtoint ptr %unicast_addr_hash147 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %unicast_addr_hash147, align 4
  tail call fastcc void @free_init_resources(ptr noundef %tgec)
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end70:                                         ; preds = %for.body.i134.if.end70_crit_edge, %for.cond.preheader.i126.if.end70_crit_edge
  %unicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 7
  %73 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call7.i.i119, ptr %unicast_addr_hash, align 4
  %74 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fm, align 4
  %76 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %mac_id, align 8
  tail call void @fman_register_intr(ptr noundef %75, i32 noundef 0, i8 noundef zeroext %77, i32 noundef 0, ptr noundef nonnull @tgec_err_exception, ptr noundef %tgec) #8
  tail call void @kfree(ptr noundef %9) #8
  %78 = ptrtoint ptr %cfg1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %cfg1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %alloc_hash_table.exit136.thread, %alloc_hash_table.exit.thread, %do.end30, %check_init_parameters.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end30 ], [ 0, %if.end70 ], [ -12, %alloc_hash_table.exit136.thread ], [ -12, %alloc_hash_table.exit.thread ], [ -22, %entry.cleanup_crit_edge ], [ -22, %check_init_parameters.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_init_resources(ptr nocapture noundef %tgec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fm = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 11
  %0 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm, align 4
  %mac_id = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 8
  %2 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_id, align 8
  tail call void @fman_unregister_intr(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %3, i32 noundef 0) #8
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 6
  %4 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %multicast_addr_hash, align 8
  tail call fastcc void @free_hash_table(ptr noundef %5)
  %6 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %multicast_addr_hash, align 8
  %unicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 7
  %7 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unicast_addr_hash, align 4
  tail call fastcc void @free_hash_table(ptr noundef %8)
  %9 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %unicast_addr_hash, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fman_set_mac_max_frame(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fman_register_intr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgec_err_exception(ptr noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %ievent = getelementptr inbounds %struct.tgec_regs, ptr %1, i32 0, i32 25
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %and = and i32 %2, -98305
  %imask = getelementptr inbounds %struct.tgec_regs, ptr %1, i32 0, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %and5 = and i32 %and, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent, i32 %and5) #8, !srcloc !52
  %and7 = and i32 %and5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %4 = ptrtoint ptr %exception_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exception_cb, align 8
  %dev_id = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  tail call void %5(ptr noundef %7, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and8 = and i32 %and5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb11 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %8 = ptrtoint ptr %exception_cb11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %exception_cb11, align 8
  %dev_id12 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %10 = ptrtoint ptr %dev_id12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id12, align 4
  tail call void %9(ptr noundef %11, i32 noundef 3) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %and14 = and i32 %and5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb17 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %12 = ptrtoint ptr %exception_cb17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exception_cb17, align 8
  %dev_id18 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %14 = ptrtoint ptr %dev_id18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id18, align 4
  tail call void %13(ptr noundef %15, i32 noundef 4) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %and20 = and i32 %and5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb23 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %16 = ptrtoint ptr %exception_cb23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %exception_cb23, align 8
  %dev_id24 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %18 = ptrtoint ptr %dev_id24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id24, align 4
  tail call void %17(ptr noundef %19, i32 noundef 5) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %and26 = and i32 %and5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb29 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %20 = ptrtoint ptr %exception_cb29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %exception_cb29, align 8
  %dev_id30 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %22 = ptrtoint ptr %dev_id30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id30, align 4
  tail call void %21(ptr noundef %23, i32 noundef 6) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %and32 = and i32 %and5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end37_crit_edge, label %if.then34

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb35 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %24 = ptrtoint ptr %exception_cb35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %exception_cb35, align 8
  %dev_id36 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %26 = ptrtoint ptr %dev_id36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id36, align 4
  tail call void %25(ptr noundef %27, i32 noundef 7) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31.if.end37_crit_edge
  %and38 = and i32 %and5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb41 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %28 = ptrtoint ptr %exception_cb41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %exception_cb41, align 8
  %dev_id42 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %30 = ptrtoint ptr %dev_id42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_id42, align 4
  tail call void %29(ptr noundef %31, i32 noundef 8) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %and44 = and i32 %and5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end49_crit_edge, label %if.then46

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb47 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %32 = ptrtoint ptr %exception_cb47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %exception_cb47, align 8
  %dev_id48 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %34 = ptrtoint ptr %dev_id48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id48, align 4
  tail call void %33(ptr noundef %35, i32 noundef 9) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43.if.end49_crit_edge
  %and50 = and i32 %and5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end55_crit_edge, label %if.then52

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb53 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %36 = ptrtoint ptr %exception_cb53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %exception_cb53, align 8
  %dev_id54 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %38 = ptrtoint ptr %dev_id54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_id54, align 4
  tail call void %37(ptr noundef %39, i32 noundef 10) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end49.if.end55_crit_edge
  %and56 = and i32 %and5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end61_crit_edge, label %if.then58

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb59 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %40 = ptrtoint ptr %exception_cb59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %exception_cb59, align 8
  %dev_id60 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %42 = ptrtoint ptr %dev_id60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_id60, align 4
  tail call void %41(ptr noundef %43, i32 noundef 11) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end55.if.end61_crit_edge
  %and62 = and i32 %and5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end67_crit_edge, label %if.then64

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb65 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %44 = ptrtoint ptr %exception_cb65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %exception_cb65, align 8
  %dev_id66 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %46 = ptrtoint ptr %dev_id66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_id66, align 4
  tail call void %45(ptr noundef %47, i32 noundef 12) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end61.if.end67_crit_edge
  %and68 = and i32 %and5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end67.if.end73_crit_edge, label %if.then70

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb71 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %48 = ptrtoint ptr %exception_cb71 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %exception_cb71, align 8
  %dev_id72 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %50 = ptrtoint ptr %dev_id72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_id72, align 4
  tail call void %49(ptr noundef %51, i32 noundef 13) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end67.if.end73_crit_edge
  %and74 = and i32 %and5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.if.end79_crit_edge, label %if.then76

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb77 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %52 = ptrtoint ptr %exception_cb77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %exception_cb77, align 8
  %dev_id78 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %54 = ptrtoint ptr %dev_id78 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_id78, align 4
  tail call void %53(ptr noundef %55, i32 noundef 14) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end73.if.end79_crit_edge
  %and80 = and i32 %and5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end85_crit_edge, label %if.then82

if.end79.if.end85_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb83 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %56 = ptrtoint ptr %exception_cb83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %exception_cb83, align 8
  %dev_id84 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %58 = ptrtoint ptr %dev_id84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_id84, align 4
  tail call void %57(ptr noundef %59, i32 noundef 15) #8
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end79.if.end85_crit_edge
  %and86 = and i32 %and5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end91_crit_edge, label %if.then88

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb89 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %60 = ptrtoint ptr %exception_cb89 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %exception_cb89, align 8
  %dev_id90 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 3
  %62 = ptrtoint ptr %dev_id90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_id90, align 4
  tail call void %61(ptr noundef %63, i32 noundef 16) #8
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %if.end85.if.end91_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tgec_free(ptr noundef %tgec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fm.i = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 11
  %0 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm.i, align 4
  %mac_id.i = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 8
  %2 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_id.i, align 8
  tail call void @fman_unregister_intr(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %3, i32 noundef 0) #8
  %multicast_addr_hash.i = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 6
  %4 = ptrtoint ptr %multicast_addr_hash.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %multicast_addr_hash.i, align 8
  tail call fastcc void @free_hash_table(ptr noundef %5) #8
  %6 = ptrtoint ptr %multicast_addr_hash.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %multicast_addr_hash.i, align 8
  %unicast_addr_hash.i = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 7
  %7 = ptrtoint ptr %unicast_addr_hash.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unicast_addr_hash.i, align 4
  tail call fastcc void @free_hash_table(ptr noundef %8) #8
  %9 = ptrtoint ptr %unicast_addr_hash.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %unicast_addr_hash.i, align 4
  %cfg = getelementptr inbounds %struct.fman_mac, ptr %tgec, i32 0, i32 10
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 8
  tail call void @kfree(ptr noundef %11) #8
  tail call void @kfree(ptr noundef %tgec) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tgec_config(ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #13
  %tobool3.not = icmp eq ptr %call7.i.i69, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %fm.i.i = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %fm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fm.i.i, align 4
  %mac_id.i.i = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %mac_id.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_id.i.i, align 8
  tail call void @fman_unregister_intr(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %7, i32 noundef 0) #8
  %multicast_addr_hash.i.i = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %multicast_addr_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %multicast_addr_hash.i.i, align 8
  tail call fastcc void @free_hash_table(ptr noundef %9) #8
  %10 = ptrtoint ptr %multicast_addr_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %multicast_addr_hash.i.i, align 8
  %unicast_addr_hash.i.i = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %unicast_addr_hash.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unicast_addr_hash.i.i, align 4
  tail call fastcc void @free_hash_table(ptr noundef %12) #8
  %13 = ptrtoint ptr %unicast_addr_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %unicast_addr_hash.i.i, align 4
  %cfg.i = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cfg.i, align 8
  tail call void @kfree(ptr noundef %15) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cfg7 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %cfg7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i69, ptr %cfg7, align 8
  %promiscuous_mode_enable.i = getelementptr inbounds %struct.tgec_cfg, ptr %call7.i.i69, i32 0, i32 1
  %17 = ptrtoint ptr %promiscuous_mode_enable.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %promiscuous_mode_enable.i, align 1
  %18 = ptrtoint ptr %call7.i.i69 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %call7.i.i69, align 8
  %tx_ipg_length.i = getelementptr inbounds %struct.tgec_cfg, ptr %call7.i.i69, i32 0, i32 4
  %19 = ptrtoint ptr %tx_ipg_length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12, ptr %tx_ipg_length.i, align 8
  %max_frame_length.i = getelementptr inbounds %struct.tgec_cfg, ptr %call7.i.i69, i32 0, i32 2
  %20 = ptrtoint ptr %max_frame_length.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1536, ptr %max_frame_length.i, align 2
  %pause_quant.i = getelementptr inbounds %struct.tgec_cfg, ptr %call7.i.i69, i32 0, i32 3
  %21 = ptrtoint ptr %pause_quant.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -4096, ptr %pause_quant.i, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %call7.i.i, align 8
  %addr = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 1
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %addr, align 4
  %conv = zext i8 %24 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %arrayidx9 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %26 to i64
  %shl11 = shl nuw nsw i64 %conv10, 32
  %or = or i64 %shl11, %shl
  %arrayidx13 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx13, align 2
  %conv14 = zext i8 %28 to i64
  %shl15 = shl nuw nsw i64 %conv14, 24
  %or16 = or i64 %or, %shl15
  %arrayidx18 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %30 to i64
  %shl20 = shl nuw nsw i64 %conv19, 16
  %or21 = or i64 %or16, %shl20
  %arrayidx23 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx23, align 4
  %conv24 = zext i8 %32 to i64
  %shl25 = shl nuw nsw i64 %conv24, 8
  %or26 = or i64 %or21, %shl25
  %arrayidx28 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %34 to i64
  %or30 = or i64 %or26, %conv29
  %addr31 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %addr31 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %or30, ptr %addr31, align 8
  %max_speed = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 4
  %36 = ptrtoint ptr %max_speed to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %max_speed, align 4
  %max_speed32 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %max_speed32 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %max_speed32, align 8
  %mac_id = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 2
  %39 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mac_id, align 2
  %mac_id33 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %mac_id33 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %mac_id33, align 8
  %exceptions = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %exceptions to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 98299, ptr %exceptions, align 4
  %exception_cb = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 8
  %43 = ptrtoint ptr %exception_cb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %exception_cb, align 4
  %exception_cb34 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %exception_cb34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %exception_cb34, align 8
  %event_cb = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 7
  %46 = ptrtoint ptr %event_cb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %event_cb, align 4
  %event_cb35 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %event_cb35 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %event_cb35, align 4
  %dev_id = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 6
  %49 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_id, align 4
  %dev_id36 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %dev_id36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %dev_id36, align 4
  %fm = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 5
  %52 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fm, align 4
  %fm37 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 11
  %54 = ptrtoint ptr %fm37 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %fm37, align 4
  %fm_rev_info = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 12
  tail call void @fman_get_revision(ptr noundef %53, ptr noundef %fm_rev_info) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end6 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fman_get_revision(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fman_unregister_intr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_hash_table(ptr noundef %hash) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %hash, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %lsts = getelementptr inbounds %struct.eth_hash_t, ptr %hash, i32 0, i32 1
  %0 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lsts, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %for.cond.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader:                               ; preds = %if.then
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp38.not = icmp eq i16 %3, 0
  br i1 %cmp38.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lsts, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %5, i32 %i.039
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not.i = icmp eq ptr %7, %arrayidx
  br i1 %cmp.i.not.i, label %for.body.for.inc_crit_edge, label %if.then.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i:                                        ; preds = %for.body
  %tobool1.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -8
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %add.ptr.i
  %node.i = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.dequeue_addr_from_hash_entry.exit_crit_edge

if.then.i.dequeue_addr_from_hash_entry.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dequeue_addr_from_hash_entry.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %dequeue_addr_from_hash_entry.exit

dequeue_addr_from_hash_entry.exit:                ; preds = %if.end.i.i.i, %if.then.i.dequeue_addr_from_hash_entry.exit_crit_edge
  %14 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node.i, ptr %prev.i3.i.i, align 4
  %tobool5.not35 = icmp eq ptr %spec.select.i, null
  br i1 %tobool5.not35, label %dequeue_addr_from_hash_entry.exit.for.inc_crit_edge, label %dequeue_addr_from_hash_entry.exit.while.body_crit_edge

dequeue_addr_from_hash_entry.exit.while.body_crit_edge: ; preds = %dequeue_addr_from_hash_entry.exit
  br label %while.body

dequeue_addr_from_hash_entry.exit.for.inc_crit_edge: ; preds = %dequeue_addr_from_hash_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body:                                       ; preds = %dequeue_addr_from_hash_entry.exit34.while.body_crit_edge, %dequeue_addr_from_hash_entry.exit.while.body_crit_edge
  %hash_entry.036 = phi ptr [ %add.ptr.i23, %dequeue_addr_from_hash_entry.exit34.while.body_crit_edge ], [ %add.ptr.i, %dequeue_addr_from_hash_entry.exit.while.body_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %hash_entry.036) #8
  %16 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lsts, align 4
  %arrayidx7 = getelementptr %struct.list_head, ptr %17, i32 %i.039
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx7, align 4
  %cmp.i.not.i21 = icmp eq ptr %19, %arrayidx7
  br i1 %cmp.i.not.i21, label %while.body.for.inc_crit_edge, label %if.then.i27

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i27:                                      ; preds = %while.body
  %tobool1.not.i22 = icmp eq ptr %19, null
  %add.ptr.i23 = getelementptr i8, ptr %19, i32 -8
  %spec.select.i24 = select i1 %tobool1.not.i22, ptr null, ptr %add.ptr.i23
  %node.i25 = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i24, i32 0, i32 1
  %call.i.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i25) #8
  br i1 %call.i.i.i26, label %if.end.i.i.i30, label %if.then.i27.dequeue_addr_from_hash_entry.exit34_crit_edge

if.then.i27.dequeue_addr_from_hash_entry.exit34_crit_edge: ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %dequeue_addr_from_hash_entry.exit34

if.end.i.i.i30:                                   ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i28 = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i24, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i28, align 4
  %22 = ptrtoint ptr %node.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node.i25, align 4
  %prev1.i.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i29, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %dequeue_addr_from_hash_entry.exit34

dequeue_addr_from_hash_entry.exit34:              ; preds = %if.end.i.i.i30, %if.then.i27.dequeue_addr_from_hash_entry.exit34_crit_edge
  %26 = ptrtoint ptr %node.i25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node.i25, ptr %node.i25, align 4
  %prev.i3.i.i31 = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i24, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node.i25, ptr %prev.i3.i.i31, align 4
  %tobool5.not = icmp eq ptr %spec.select.i24, null
  br i1 %tobool5.not, label %dequeue_addr_from_hash_entry.exit34.for.inc_crit_edge, label %dequeue_addr_from_hash_entry.exit34.while.body_crit_edge

dequeue_addr_from_hash_entry.exit34.while.body_crit_edge: ; preds = %dequeue_addr_from_hash_entry.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

dequeue_addr_from_hash_entry.exit34.for.inc_crit_edge: ; preds = %dequeue_addr_from_hash_entry.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %dequeue_addr_from_hash_entry.exit34.for.inc_crit_edge, %while.body.for.inc_crit_edge, %dequeue_addr_from_hash_entry.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %28 = ptrtoint ptr %hash to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hash, align 4
  %conv = zext i16 %29 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %30 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lsts, align 4
  tail call void @kfree(ptr noundef %31) #8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %hash) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/fman/fman_tgec.c", i32 542, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tgec_add_hash_mac_address._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tgec_add_hash_mac_address._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/fman/fman_tgec.c", i32 673, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tgec_set_exception._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @tgec_set_exception._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/freescale/fman/fman_tgec.c", i32 719, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tgec_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @tgec_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/fman/fman_tgec.c", i32 727, i32 3}
!18 = !{ptr @tgec_init._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tgec_init._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/fman/fman_tgec.c", i32 747, i32 3}
!22 = !{ptr @tgec_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @tgec_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tgec_init._entry.13, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/fman/fman_tgec.c", i32 754, i32 3}
!26 = !{ptr @tgec_init._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/freescale/fman/fman_tgec.c", i32 273, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @check_init_parameters._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @check_init_parameters._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/fman/fman_tgec.c", i32 277, i32 3}
!34 = !{ptr @check_init_parameters._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @check_init_parameters._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/freescale/fman/fman_tgec.c", i32 281, i32 3}
!38 = !{ptr @check_init_parameters._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @check_init_parameters._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 733421}
!50 = !{i64 2155561735}
!51 = !{i64 2155562002}
!52 = !{i64 733003}
!53 = !{i64 2155562373}
!54 = !{i64 2155562640}
!55 = !{i64 2155563011}
!56 = !{i64 2155563278}
!57 = !{i64 2155563654}
!58 = !{i64 2155564037}
!59 = !{i64 2155564304}
!60 = !{i64 2155548151}
!61 = !{i64 2155548454}
!62 = !{i64 2155567625}
!63 = !{i64 2155567980}
!64 = !{i64 2155568332}
!65 = !{i64 2155568720}
!66 = !{i64 2155568987}
!67 = !{i8 0, i8 2}
!68 = !{i64 2155571541}
!69 = !{i64 2155571917}
!70 = !{i64 2155574308}
!71 = !{i64 2155574541}
!72 = !{i64 2155575283}
!73 = !{i64 2155575516}
!74 = !{i64 2155548820}
!75 = !{i64 2155549140}
!76 = !{i64 2155549478}
!77 = !{i64 2155549795}
!78 = !{i64 2155550588}
!79 = !{i64 2155550821}
!80 = !{i64 2155581276}
!81 = !{i64 2155581528}
!82 = !{i64 2155560622}
!83 = !{i64 2155560934}
!84 = !{i64 2155561173}
