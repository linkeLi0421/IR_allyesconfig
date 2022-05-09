; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/boot.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/boot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wl1251_boot_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013wl1251: ERROR soft reset timeout\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_boot_soft_reset\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wl1251/boot.c\00", [58 x i8] zeroinitializer }, align 32
@wl1251_boot_soft_reset._entry_ptr = internal global ptr @wl1251_boot_soft_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wl1251_boot_init_seq.LUT = internal constant { [5 x [6 x i32]], [40 x i8] } { [5 x [6 x i32]] [[6 x i32] [i32 83, i32 87381, i32 11, i32 5, i32 3840, i32 3], [6 x i32] [i32 61, i32 141154, i32 11, i32 5, i32 5200, i32 2], [6 x i32] [i32 41, i32 174763, i32 12, i32 6, i32 11520, i32 1], [6 x i32] [i32 40, i32 0, i32 12, i32 6, i32 12000, i32 1], [6 x i32] [i32 47, i32 162280, i32 12, i32 6, i32 10080, i32 1]], [40 x i8] zeroinitializer }, align 32
@wl1251_boot_run_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013wl1251: ERROR chip id doesn't match after firmware boot\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wl1251_boot_run_firmware\00", [39 x i8] zeroinitializer }, align 32
@wl1251_boot_run_firmware._entry_ptr = internal global ptr @wl1251_boot_run_firmware._entry, section ".printk_index", align 4
@wl1251_boot_run_firmware._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013wl1251: ERROR error reading hardware complete init indication\0A\00", [63 x i8] zeroinitializer }, align 32
@wl1251_boot_run_firmware._entry_ptr.7 = internal global ptr @wl1251_boot_run_firmware._entry.5, section ".printk_index", align 4
@wl1251_boot_run_firmware._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013wl1251: ERROR timeout waiting for the hardware to complete initialization\0A\00", [51 x i8] zeroinitializer }, align 32
@wl1251_boot_run_firmware._entry_ptr.10 = internal global ptr @wl1251_boot_run_firmware._entry.8, section ".printk_index", align 4
@wl1251_boot_run_firmware._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wl1251: ERROR EVENT mask setting failed\0A\00", [53 x i8] zeroinitializer }, align 32
@wl1251_boot_run_firmware._entry_ptr.13 = internal global ptr @wl1251_boot_run_firmware._entry.11, section ".printk_index", align 4
@wl1251_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013wl1251: ERROR boot failed, ECPU_CONTROL_HALT not set\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wl1251_boot\00", [20 x i8] zeroinitializer }, align 32
@wl1251_boot._entry_ptr = internal global ptr @wl1251_boot._entry, section ".printk_index", align 4
@wl1251_boot_upload_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013wl1251: ERROR firmware length not multiple of four\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1251_boot_upload_firmware\00", [36 x i8] zeroinitializer }, align 32
@wl1251_boot_upload_firmware._entry_ptr = internal global ptr @wl1251_boot_upload_firmware._entry, section ".printk_index", align 4
@wl1251_boot_upload_firmware._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013wl1251: ERROR allocation for firmware upload chunk failed\0A\00", [35 x i8] zeroinitializer }, align 32
@wl1251_boot_upload_firmware._entry_ptr.20 = internal global ptr @wl1251_boot_upload_firmware._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 42, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [4 x i8] c"LUT\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 70, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 220, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 231, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 244, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 293, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 525, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 322, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [41 x i8] c"../drivers/net/wireless/ti/wl1251/boot.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 328, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @wl1251_boot._entry, ptr @wl1251_boot._entry_ptr, ptr @wl1251_boot_run_firmware._entry, ptr @wl1251_boot_run_firmware._entry.11, ptr @wl1251_boot_run_firmware._entry.5, ptr @wl1251_boot_run_firmware._entry.8, ptr @wl1251_boot_run_firmware._entry_ptr, ptr @wl1251_boot_run_firmware._entry_ptr.10, ptr @wl1251_boot_run_firmware._entry_ptr.13, ptr @wl1251_boot_run_firmware._entry_ptr.7, ptr @wl1251_boot_soft_reset._entry, ptr @wl1251_boot_soft_reset._entry_ptr, ptr @wl1251_boot_upload_firmware._entry, ptr @wl1251_boot_upload_firmware._entry.18, ptr @wl1251_boot_upload_firmware._entry_ptr, ptr @wl1251_boot_upload_firmware._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @wl1251_boot_init_seq.LUT, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_boot_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_boot_init_seq.LUT to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_boot_run_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_boot_run_firmware._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_boot_run_firmware._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_boot_run_firmware._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_boot_upload_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_boot_upload_firmware._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_boot_target_enable_interrupts(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mask = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 41
  %0 = ptrtoint ptr %intr_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_mask, align 4
  %neg = xor i32 %1, -1
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 2, i32 noundef %neg) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3147784, i32 noundef 60) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_reg_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_boot_soft_reset(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 8, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 100
  %add = add i32 %spec.select.i, %0
  %call113 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 8) #5
  %and14 = and i32 %call113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %entry.while.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end:                                           ; preds = %if.end8.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2 = icmp slt i32 %sub, 0
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #5
  %call1 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 8) #5
  %and = and i32 %call1, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end8.while.end_crit_edge, label %if.end8.if.end_crit_edge

if.end8.if.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3167312, i32 noundef 0) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3148184, i32 noundef 65535) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end6
  %retval.0 = phi i32 [ 0, %while.end ], [ -1, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_reg_read32(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_boot_init_seq(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3167792) #5
  %call1 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3168264) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168272, i32 noundef 9) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168280, i32 noundef 6) #5
  %and8 = shl i32 %call, 4
  %shl = and i32 %and8, 1028096
  %or = or i32 %shl, 16384
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168260, i32 noundef %or) #5
  %or9 = or i32 %call1, 64
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168264, i32 noundef %or9) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168288, i32 noundef 32) #5
  %call10 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3168276) #5
  %0 = tail call i32 @llvm.usub.sat.i32(i32 %call10, i32 33)
  %and = and i32 %call, 255
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168276, i32 noundef %0) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168460, i32 noundef 1205) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168468, i32 noundef 80) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168584, i32 noundef 1163265) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168500, i32 noundef 30) #5
  %arrayidx = getelementptr [5 x [6 x i32]], ptr @wl1251_boot_init_seq.LUT, i32 0, i32 %and
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %or12 = or i32 %2, 94208
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168320, i32 noundef %or12) #5
  %arrayidx14 = getelementptr [5 x [6 x i32]], ptr @wl1251_boot_init_seq.LUT, i32 0, i32 %and, i32 1
  %3 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx14, align 4
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168324, i32 noundef %4) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168328, i32 noundef 12345) #5
  %arrayidx16 = getelementptr [5 x [6 x i32]], ptr @wl1251_boot_init_seq.LUT, i32 0, i32 %and, i32 2
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx16, align 4
  %shl17 = shl i32 %6, 16
  %arrayidx19 = getelementptr [5 x [6 x i32]], ptr @wl1251_boot_init_seq.LUT, i32 0, i32 %and, i32 3
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx19, align 4
  %shl20 = shl i32 %8, 12
  %or21 = or i32 %shl17, %shl20
  %or22 = or i32 %or21, 1
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168340, i32 noundef %or22) #5
  %arrayidx24 = getelementptr [5 x [6 x i32]], ptr @wl1251_boot_init_seq.LUT, i32 0, i32 %and, i32 4
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx24, align 4
  %or25 = or i32 %10, 655360
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168344, i32 noundef %or25) #5
  %arrayidx27 = getelementptr [5 x [6 x i32]], ptr @wl1251_boot_init_seq.LUT, i32 0, i32 %and, i32 5
  %11 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx27, align 4
  %or28 = or i32 %12, 48
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168504, i32 noundef %or28) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168496, i32 noundef 41) #5
  %or29 = or i32 %call1, 65
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3168264, i32 noundef %or29) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496000) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_boot_run_firmware(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 10) #5
  %and.i = and i32 %call.i, -258
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 10, i32 noundef %and.i) #5
  %call = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3167860) #5
  %chip_id1 = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 67
  %0 = ptrtoint ptr %chip_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_id1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp.not = icmp eq i32 %call, %1
  br i1 %cmp.not, label %entry.while.cond_crit_edge, label %do.end4

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %cleanup

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %entry.while.cond_crit_edge
  %loop.0 = phi i32 [ %inc, %if.else.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  %inc = add nuw nsw i32 %loop.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %loop.0)
  %exitcond.not = icmp eq i32 %loop.0, 20000
  br i1 %exitcond.not, label %do.end22, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 10737400) #5
  %call7 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %do.end12, label %if.else

do.end12:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.else:                                          ; preds = %while.body
  %and = and i32 %call7, 16384
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.while.cond_crit_edge, label %if.end25

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.end22:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end25:                                         ; preds = %if.else
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 7, i32 noundef 16384) #5
  %call26 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3167752) #5
  %cmd_box_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 15
  %3 = ptrtoint ptr %cmd_box_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call26, ptr %cmd_box_addr, align 4
  %call27 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3167756) #5
  %event_box_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 16
  %4 = ptrtoint ptr %event_box_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call27, ptr %event_box_addr, align 4
  tail call void @wl1251_set_partition(ptr noundef %wl, i32 noundef 163840, i32 noundef 81920, i32 noundef 3145728, i32 noundef 45056) #5
  %fw_ver = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 68
  %call31 = tail call i32 @wl1251_acx_fw_version(ptr noundef %wl, ptr noundef %fw_ver, i32 noundef 21) #5
  tail call void @wl1251_enable_interrupts(ptr noundef %wl) #5
  %intr_mask = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 41
  %5 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16443, ptr %intr_mask, align 4
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 2, i32 noundef -16444) #5
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3147784, i32 noundef 60) #5
  %event_mask = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 43
  %6 = ptrtoint ptr %event_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 415277288, ptr %event_mask, align 4
  %call32 = tail call i32 @wl1251_event_unmask(ptr noundef %wl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wl1251_event_mbox_config(ptr noundef %wl) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end37, %do.end22, %do.end12, %do.end4
  %retval.0 = phi i32 [ -5, %do.end4 ], [ -5, %do.end12 ], [ -5, %do.end22 ], [ %call32, %do.end37 ], [ 0, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_set_partition(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_fw_version(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_enable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_event_unmask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_event_mbox_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_boot(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 10, i32 noundef 257) #5
  %call = tail call i32 @wl1251_boot_soft_reset(ptr noundef %wl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %use_eeprom = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 6
  %0 = ptrtoint ptr %use_eeprom to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_eeprom, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 9, i32 noundef 1) #5
  tail call void @msleep(i32 noundef 40) #5
  br label %if.end6

if.else:                                          ; preds = %if.end
  %nvs1.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 20
  %2 = ptrtoint ptr %nvs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nvs1.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %if.else.out_crit_edge, label %if.end.i

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end.i:                                         ; preds = %if.else
  %nvs_len2.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 21
  %4 = ptrtoint ptr %nvs_len2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nvs_len2.i, align 4
  %fw_len.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 19
  %6 = ptrtoint ptr %fw_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_len.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not96.i = icmp eq i8 %9, 0
  br i1 %tobool.not96.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.cond.loopexit.i:                            ; preds = %for.body.i
  %10 = ptrtoint ptr %add.ptr24.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr24.i, align 1
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %while.cond.loopexit.i.while.end.i_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.loopexit.i.while.end.i_crit_edge:      ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %12 = phi i8 [ %11, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %9, %if.end.i.while.body.i_crit_edge ]
  %nvs_ptr.097.i = phi ptr [ %add.ptr24.i, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %3, %if.end.i.while.body.i_crit_edge ]
  %arrayidx4.i = getelementptr i8, ptr %nvs_ptr.097.i, i32 1
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i, align 1
  %15 = and i8 %14, -2
  %and.i = zext i8 %15 to i32
  %arrayidx6.i = getelementptr i8, ptr %nvs_ptr.097.i, i32 2
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 %conv7.i, 8
  %or.i = or i32 %shl.i, %and.i
  %add.ptr.i = getelementptr i8, ptr %nvs_ptr.097.i, i32 3
  %umax.i = zext i8 %12 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.body.i
  %nvs_ptr.195.i = phi ptr [ %add.ptr.i, %while.body.i ], [ %add.ptr24.i, %for.body.i.for.body.i_crit_edge ]
  %dest_addr.094.i = phi i32 [ %or.i, %while.body.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %i.093.i = phi i32 [ 0, %while.body.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %nvs_ptr.195.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nvs_ptr.195.i, align 1
  %conv11.i = zext i8 %19 to i32
  %arrayidx12.i = getelementptr i8, ptr %nvs_ptr.195.i, i32 1
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %21 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 8
  %or15.i = or i32 %shl14.i, %conv11.i
  %arrayidx16.i = getelementptr i8, ptr %nvs_ptr.195.i, i32 2
  %22 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %23 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 16
  %or19.i = or i32 %or15.i, %shl18.i
  %arrayidx20.i = getelementptr i8, ptr %nvs_ptr.195.i, i32 3
  %24 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %25 to i32
  %shl22.i = shl nuw i32 %conv21.i, 24
  %or23.i = or i32 %or19.i, %shl22.i
  tail call void @wl1251_mem_write32(ptr noundef %wl, i32 noundef %dest_addr.094.i, i32 noundef %or23.i) #5
  %add.ptr24.i = getelementptr i8, ptr %nvs_ptr.195.i, i32 4
  %add.i = add nuw nsw i32 %dest_addr.094.i, 4
  %inc.i = add nuw nsw i32 %i.093.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %while.cond.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

while.end.i:                                      ; preds = %while.cond.loopexit.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %nvs_ptr.0.lcssa.i = phi ptr [ %3, %if.end.i.while.end.i_crit_edge ], [ %add.ptr24.i, %while.cond.loopexit.i.while.end.i_crit_edge ]
  %add.ptr25.i = getelementptr i8, ptr %nvs_ptr.0.lcssa.i, i32 7
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr25.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.neg.i = add i32 %sub.ptr.rhs.cast.i, 3
  %sub.i = add i32 %sub.ptr.sub.neg.i, %5
  %add26.i = sub i32 %sub.i, %sub.ptr.lhs.cast.i
  %and27.i = and i32 %add26.i, -4
  tail call void @wl1251_set_partition(ptr noundef %wl, i32 noundef %7, i32 noundef 92160, i32 noundef 3145728, i32 noundef 34816) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp2998.not.i = icmp eq i32 %and27.i, 0
  br i1 %cmp2998.not.i, label %while.end.i.if.end5_crit_edge, label %while.end.i.while.body31.i_crit_edge

while.end.i.while.body31.i_crit_edge:             ; preds = %while.end.i
  br label %while.body31.i

while.end.i.if.end5_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

while.body31.i:                                   ; preds = %while.body31.i.while.body31.i_crit_edge, %while.end.i.while.body31.i_crit_edge
  %nvs_ptr.2101.i = phi ptr [ %add.ptr49.i, %while.body31.i.while.body31.i_crit_edge ], [ %add.ptr25.i, %while.end.i.while.body31.i_crit_edge ]
  %nvs_start.0100.i = phi i32 [ %add51.i, %while.body31.i.while.body31.i_crit_edge ], [ %7, %while.end.i.while.body31.i_crit_edge ]
  %nvs_bytes_written.099.i = phi i32 [ %add50.i, %while.body31.i.while.body31.i_crit_edge ], [ 0, %while.end.i.while.body31.i_crit_edge ]
  %26 = ptrtoint ptr %nvs_ptr.2101.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nvs_ptr.2101.i, align 1
  %conv33.i = zext i8 %27 to i32
  %arrayidx34.i = getelementptr i8, ptr %nvs_ptr.2101.i, i32 1
  %28 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %29 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 8
  %or37.i = or i32 %shl36.i, %conv33.i
  %arrayidx38.i = getelementptr i8, ptr %nvs_ptr.2101.i, i32 2
  %30 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %31 to i32
  %shl40.i = shl nuw nsw i32 %conv39.i, 16
  %or41.i = or i32 %or37.i, %shl40.i
  %arrayidx42.i = getelementptr i8, ptr %nvs_ptr.2101.i, i32 3
  %32 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %33 to i32
  %shl44.i = shl nuw i32 %conv43.i, 24
  %or45.i = or i32 %or41.i, %shl44.i
  tail call void @wl1251_mem_write32(ptr noundef %wl, i32 noundef %nvs_start.0100.i, i32 noundef %or45.i) #5
  %add.ptr49.i = getelementptr i8, ptr %nvs_ptr.2101.i, i32 4
  %add50.i = add nuw i32 %nvs_bytes_written.099.i, 4
  %add51.i = add i32 %nvs_start.0100.i, 4
  %cmp29.i = icmp ult i32 %add50.i, %and27.i
  br i1 %cmp29.i, label %while.body31.i.while.body31.i_crit_edge, label %while.body31.i.if.end5_crit_edge

while.body31.i.if.end5_crit_edge:                 ; preds = %while.body31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

while.body31.i.while.body31.i_crit_edge:          ; preds = %while.body31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body31.i

if.end5:                                          ; preds = %while.body31.i.if.end5_crit_edge, %while.end.i.if.end5_crit_edge
  %34 = ptrtoint ptr %fw_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw_len.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.then1
  %.sink = phi i32 [ %35, %if.end5 ], [ 0, %if.then1 ]
  tail call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 3167768, i32 noundef %.sink) #5
  %call7 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3167760) #5
  %and = lshr i32 %call7, 8
  %shr = and i32 %and, 255
  %boot_attr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 17
  %36 = ptrtoint ptr %boot_attr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr, ptr %boot_attr, align 4
  %and8 = lshr i32 %call7, 16
  %shr9 = and i32 %and8, 255
  %major = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 17, i32 5
  %37 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr9, ptr %major, align 4
  %call11 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3167764) #5
  %and12 = lshr i32 %call11, 16
  %shr13 = and i32 %and12, 255
  %minor = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 17, i32 4
  %38 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr13, ptr %minor, align 4
  %call17 = tail call i32 @wl1251_boot_init_seq(ptr noundef %wl)
  %call21 = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 10) #5
  %and25 = and i32 %call21, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %out

if.end33:                                         ; preds = %if.end6
  %fw.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 18
  %39 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw.i, align 4
  %arrayidx.i = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %42 to i32
  %shl.i65 = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %40, i32 5
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %44 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i66 = or i32 %shl4.i, %shl.i65
  %arrayidx6.i67 = getelementptr i8, ptr %40, i32 6
  %45 = ptrtoint ptr %arrayidx6.i67 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx6.i67, align 1
  %conv7.i68 = zext i8 %46 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i68, 8
  %or9.i = or i32 %or.i66, %shl8.i
  %arrayidx11.i = getelementptr i8, ptr %40, i32 7
  %47 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %48 to i32
  %rem.i = and i32 %conv12.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %if.end.i70, label %do.end20.i

do.end20.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %out

if.end.i70:                                       ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 512) #9
  %tobool.not.i69 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i69, label %do.end25.i, label %if.end28.i

do.end25.i:                                       ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #7
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %out

if.end28.i:                                       ; preds = %if.end.i70
  tail call void @wl1251_set_partition(ptr noundef %wl, i32 noundef 0, i32 noundef 92160, i32 noundef 3145728, i32 noundef 34816) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %or9.i)
  %cmp2996.not.i = icmp ult i32 %or9.i, 512
  br i1 %cmp2996.not.i, label %if.end28.i.if.end37_crit_edge, label %while.body.preheader.i

if.end28.i.if.end37_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

while.body.preheader.i:                           ; preds = %if.end28.i
  %div95.i = lshr i32 %or9.i, 9
  br label %while.body.i72

while.body.i72:                                   ; preds = %if.end39.i.while.body.i72_crit_edge, %while.body.preheader.i
  %partition_limit.098.i = phi i32 [ %partition_limit.1.i, %if.end39.i.while.body.i72_crit_edge ], [ 92160, %while.body.preheader.i ]
  %chunk_num.097.i = phi i32 [ %inc.i74, %if.end39.i.while.body.i72_crit_edge ], [ 0, %while.body.preheader.i ]
  %add.i71 = shl i32 %chunk_num.097.i, 9
  %mul.i = add i32 %add.i71, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %partition_limit.098.i)
  %cmp32.i = icmp sgt i32 %mul.i, %partition_limit.098.i
  br i1 %cmp32.i, label %if.then34.i, label %while.body.i72.if.end39.i_crit_edge

while.body.i72.if.end39.i_crit_edge:              ; preds = %while.body.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.then34.i:                                      ; preds = %while.body.i72
  call void @__sanitizer_cov_trace_pc() #7
  %add38.i = add i32 %add.i71, 92160
  tail call void @wl1251_set_partition(ptr noundef %wl, i32 noundef %add.i71, i32 noundef 92160, i32 noundef 3145728, i32 noundef 34816) #5
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then34.i, %while.body.i72.if.end39.i_crit_edge
  %partition_limit.1.i = phi i32 [ %add38.i, %if.then34.i ], [ %partition_limit.098.i, %while.body.i72.if.end39.i_crit_edge ]
  %50 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %51, i32 8
  %add.ptr44.i = getelementptr i8, ptr %add.ptr.i73, i32 %add.i71
  %52 = call ptr @memcpy(ptr %call7.i.i, ptr %add.ptr44.i, i32 512)
  tail call void @wl1251_mem_write(ptr noundef %wl, i32 noundef %add.i71, ptr noundef nonnull %call7.i.i, i32 noundef 512) #5
  %inc.i74 = add nuw nsw i32 %chunk_num.097.i, 1
  %exitcond.not.i75 = icmp eq i32 %inc.i74, %div95.i
  br i1 %exitcond.not.i75, label %while.end.loopexit.i, label %if.end39.i.while.body.i72_crit_edge

if.end39.i.while.body.i72_crit_edge:              ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i72

while.end.loopexit.i:                             ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %phi.bo.i = and i32 %or9.i, -512
  br label %if.end37

if.end37:                                         ; preds = %while.end.loopexit.i, %if.end28.i.if.end37_crit_edge
  %chunk_num.0.lcssa.i = phi i32 [ 0, %if.end28.i.if.end37_crit_edge ], [ %phi.bo.i, %while.end.loopexit.i ]
  %53 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %54, i32 8
  %add.ptr53.i = getelementptr i8, ptr %add.ptr51.i, i32 %chunk_num.0.lcssa.i
  %shl8.masked.i = and i32 %shl8.i, 256
  %rem54.i = or i32 %shl8.masked.i, %conv12.i
  %55 = call ptr @memcpy(ptr %call7.i.i, ptr %add.ptr53.i, i32 %rem54.i)
  tail call void @wl1251_mem_write(ptr noundef %wl, i32 noundef %chunk_num.0.lcssa.i, ptr noundef nonnull %call7.i.i, i32 noundef %rem54.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %call38 = tail call i32 @wl1251_boot_run_firmware(ptr noundef %wl)
  br label %out

out:                                              ; preds = %if.end37, %do.end25.i, %do.end20.i, %do.end30, %if.else.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -5, %do.end30 ], [ %call38, %if.end37 ], [ -19, %if.else.out_crit_edge ], [ -12, %do.end25.i ], [ -5, %do.end20.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_mem_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_mem_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/boot.c", i32 42, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wl1251_boot_soft_reset._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wl1251_boot_soft_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @wl1251_boot_init_seq.LUT, !7, !"LUT", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl1251/boot.c", i32 70, i32 19}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ti/wl1251/boot.c", i32 220, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wl1251_boot_run_firmware._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @wl1251_boot_run_firmware._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ti/wl1251/boot.c", i32 231, i32 4}
!15 = !{ptr @wl1251_boot_run_firmware._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @wl1251_boot_run_firmware._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ti/wl1251/boot.c", i32 244, i32 3}
!19 = !{ptr @wl1251_boot_run_firmware._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @wl1251_boot_run_firmware._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ti/wl1251/boot.c", i32 293, i32 3}
!23 = !{ptr @wl1251_boot_run_firmware._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @wl1251_boot_run_firmware._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ti/wl1251/boot.c", i32 525, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wl1251_boot._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @wl1251_boot._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ti/wl1251/boot.c", i32 322, i32 3}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wl1251_boot_upload_firmware._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @wl1251_boot_upload_firmware._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ti/wl1251/boot.c", i32 328, i32 3}
!37 = !{ptr @wl1251_boot_upload_firmware._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @wl1251_boot_upload_firmware._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i8 0, i8 2}
