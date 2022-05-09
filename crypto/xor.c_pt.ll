; ModuleID = '/llk/IR_all_yes/crypto/xor.c_pt.bc'
source_filename = "../crypto/xor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xor_blocks\22, \22a\22\09"
module asm "\09.weak\09__crc_xor_blocks\09\09\09\09"
module asm "\09.long\09__crc_xor_blocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xor_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22xor_blocks\22\09\09\09\09\09"
module asm "__kstrtabns_xor_blocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xor_block_template = type { ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@active_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_xor_blocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_xor_blocks = external dso_local constant [0 x i8], align 1
@__ksymtab_xor_blocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xor_blocks to i32), ptr @__kstrtab_xor_blocks, ptr @__kstrtabns_xor_blocks }, section "___ksymtab+xor_blocks", align 4
@__UNIQUE_ID_file173 = internal constant [20 x i8] c"xor.file=crypto/xor\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [16 x i8] c"xor.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_xor__175_172_register_xor_blocks1 = internal global ptr @register_xor_blocks, section ".initcall1.init", align 4
@__initcall__kmod_xor__176_175_calibrate_xor_blocks6 = internal global ptr @calibrate_xor_blocks, section ".initcall6.init", align 4
@__exitcall_xor_exit = internal global ptr @xor_exit, section ".exitcall.exit", align 4
@xor_block_arm4regs = internal global { %struct.xor_block_template, [36 x i8] } { %struct.xor_block_template { ptr null, ptr @.str, i32 0, ptr @xor_arm4regs_2, ptr @xor_arm4regs_3, ptr @xor_arm4regs_4, ptr @xor_arm4regs_5 }, [36 x i8] zeroinitializer }, align 32
@xor_block_8regs = internal global { %struct.xor_block_template, [36 x i8] } { %struct.xor_block_template { ptr null, ptr @.str.1, i32 0, ptr @xor_8regs_2, ptr @xor_8regs_3, ptr @xor_8regs_4, ptr @xor_8regs_5 }, [36 x i8] zeroinitializer }, align 32
@xor_block_32regs = internal global { %struct.xor_block_template, [36 x i8] } { %struct.xor_block_template { ptr null, ptr @.str.2, i32 0, ptr @xor_32regs_2, ptr @xor_32regs_3, ptr @xor_32regs_4, ptr @xor_32regs_5 }, [36 x i8] zeroinitializer }, align 32
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@xor_block_neon = internal global { %struct.xor_block_template, [36 x i8] } { %struct.xor_block_template { ptr null, ptr @.str.3, i32 0, ptr @xor_neon_2, ptr @xor_neon_3, ptr @xor_neon_4, ptr @xor_neon_5 }, [36 x i8] zeroinitializer }, align 32
@template_list = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arm4regs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8regs\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"32regs\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"neon\00", [27 x i8] zeroinitializer }, align 32
@xor_block_neon_inner = external dso_local local_unnamed_addr constant %struct.xor_block_template, align 4
@calibrate_xor_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016xor: automatically using best checksumming function   %-10s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"calibrate_xor_blocks\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"crypto/xor.c\00", [19 x i8] zeroinitializer }, align 32
@calibrate_xor_blocks._entry_ptr = internal global ptr @calibrate_xor_blocks._entry, section ".printk_index", align 4
@calibrate_xor_blocks._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014xor: Yikes!  No memory available.\0A\00", [59 x i8] zeroinitializer }, align 32
@calibrate_xor_blocks._entry_ptr.9 = internal global ptr @calibrate_xor_blocks._entry.7, section ".printk_index", align 4
@calibrate_xor_blocks._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016xor: measuring software checksum speed\0A\00", [54 x i8] zeroinitializer }, align 32
@calibrate_xor_blocks._entry_ptr.12 = internal global ptr @calibrate_xor_blocks._entry.10, section ".printk_index", align 4
@calibrate_xor_blocks._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016xor: using function: %s (%d MB/sec)\0A\00", [57 x i8] zeroinitializer }, align 32
@calibrate_xor_blocks._entry_ptr.15 = internal global ptr @calibrate_xor_blocks._entry.13, section ".printk_index", align 4
@do_xor_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016   %-16s: %5d MB/sec\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"do_xor_speed\00", [19 x i8] zeroinitializer }, align 32
@do_xor_speed._entry_ptr = internal global ptr @do_xor_speed._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"active_template\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 24, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"xor_block_arm4regs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 127, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"xor_block_8regs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 672, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"xor_block_32regs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 680, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"xor_block_neon\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 199, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 128, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 673, i32 10 }
@___asan_gen_.40 = private unnamed_addr constant [29 x i8] c"../include/asm-generic/xor.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 681, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [30 x i8] c"../arch/arm/include/asm/xor.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 200, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 127, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 135, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 147, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 155, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [16 x i8] c"../crypto/xor.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 115, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_xor_exit, ptr @__initcall__kmod_xor__175_172_register_xor_blocks1, ptr @__initcall__kmod_xor__176_175_calibrate_xor_blocks6, ptr @__ksymtab_xor_blocks, ptr @calibrate_xor_blocks._entry, ptr @calibrate_xor_blocks._entry.10, ptr @calibrate_xor_blocks._entry.13, ptr @calibrate_xor_blocks._entry.7, ptr @calibrate_xor_blocks._entry_ptr, ptr @calibrate_xor_blocks._entry_ptr.12, ptr @calibrate_xor_blocks._entry_ptr.15, ptr @calibrate_xor_blocks._entry_ptr.9, ptr @do_xor_speed._entry, ptr @do_xor_speed._entry_ptr, ptr @xor_exit, ptr @active_template, ptr @xor_block_arm4regs, ptr @xor_block_8regs, ptr @xor_block_32regs, ptr @xor_block_neon, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @active_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xor_block_arm4regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xor_block_8regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xor_block_32regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xor_block_neon to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_xor_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_xor_blocks._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_xor_blocks._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calibrate_xor_blocks._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_xor_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xor_blocks(i32 noundef %src_count, i32 noundef %bytes, ptr noundef %dest, ptr nocapture noundef readonly %srcs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %src_count)
  %cmp = icmp eq i32 %src_count, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @active_template, align 4
  %do_2 = getelementptr inbounds %struct.xor_block_template, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %do_2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %do_2, align 4
  tail call void %4(i32 noundef %bytes, ptr noundef %dest, ptr noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %srcs, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %src_count)
  %cmp2 = icmp eq i32 %src_count, 2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = load ptr, ptr @active_template, align 4
  %do_3 = getelementptr inbounds %struct.xor_block_template, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %do_3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %do_3, align 4
  tail call void %9(i32 noundef %bytes, ptr noundef %dest, ptr noundef %1, ptr noundef %6) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx5 = getelementptr ptr, ptr %srcs, i32 2
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %src_count)
  %cmp6 = icmp eq i32 %src_count, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %12 = load ptr, ptr @active_template, align 4
  %do_4 = getelementptr inbounds %struct.xor_block_template, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %do_4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %do_4, align 4
  tail call void %14(i32 noundef %bytes, ptr noundef %dest, ptr noundef %1, ptr noundef %6, ptr noundef %11) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9 = getelementptr ptr, ptr %srcs, i32 3
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx9, align 4
  %17 = load ptr, ptr @active_template, align 4
  %do_5 = getelementptr inbounds %struct.xor_block_template, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %do_5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %do_5, align 4
  tail call void %19(i32 noundef %bytes, ptr noundef %dest, ptr noundef %1, ptr noundef %6, ptr noundef %11, ptr noundef %16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xor_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @register_xor_blocks() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @template_list, align 4
  store ptr %0, ptr @xor_block_arm4regs, align 4
  store ptr @xor_block_arm4regs, ptr @xor_block_8regs, align 4
  store ptr @xor_block_8regs, ptr @xor_block_32regs, align 4
  store ptr @xor_block_32regs, ptr @template_list, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %1 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %entry.do.end4_crit_edge, label %if.then3

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr @xor_block_32regs, ptr @xor_block_neon, align 4
  store ptr @xor_block_neon, ptr @template_list, align 4
  br label %do.end4

do.end4:                                          ; preds = %if.then3, %entry.do.end4_crit_edge
  %2 = load ptr, ptr @template_list, align 4
  store ptr %2, ptr @active_template, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @calibrate_xor_blocks() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 2) #9
  %0 = inttoptr i32 %call1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %add.ptr10 = getelementptr i8, ptr %0, i32 12288
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  store ptr null, ptr @template_list, align 4
  tail call fastcc void @do_xor_speed(ptr noundef nonnull @xor_block_arm4regs, ptr noundef nonnull %0, ptr noundef %add.ptr10) #13
  tail call fastcc void @do_xor_speed(ptr noundef nonnull @xor_block_8regs, ptr noundef nonnull %0, ptr noundef %add.ptr10) #13
  tail call fastcc void @do_xor_speed(ptr noundef nonnull @xor_block_32regs, ptr noundef nonnull %0, ptr noundef %add.ptr10) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @elf_hwcap to i32))
  %1 = load i32, ptr @elf_hwcap, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end9.do.end24_crit_edge, label %if.then19

if.end9.do.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @do_xor_speed(ptr noundef nonnull @xor_block_neon, ptr noundef nonnull %0, ptr noundef %add.ptr10) #13
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %if.end9.do.end24_crit_edge
  %2 = load ptr, ptr @template_list, align 4
  %tobool25.not57 = icmp eq ptr %2, null
  br i1 %tobool25.not57, label %do.end24.do.end31_crit_edge, label %do.end24.for.body_crit_edge

do.end24.for.body_crit_edge:                      ; preds = %do.end24
  br label %for.body

do.end24.do.end31_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end24.for.body_crit_edge
  %f.059 = phi ptr [ %8, %for.body.for.body_crit_edge ], [ %2, %do.end24.for.body_crit_edge ]
  %fastest.058 = phi ptr [ %spec.select, %for.body.for.body_crit_edge ], [ %2, %do.end24.for.body_crit_edge ]
  %speed = getelementptr inbounds %struct.xor_block_template, ptr %f.059, i32 0, i32 2
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 4
  %speed26 = getelementptr inbounds %struct.xor_block_template, ptr %fastest.058, i32 0, i32 2
  %5 = ptrtoint ptr %speed26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp sgt i32 %4, %6
  %spec.select = select i1 %cmp, ptr %f.059, ptr %fastest.058
  %7 = ptrtoint ptr %f.059 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f.059, align 4
  %tobool25.not = icmp eq ptr %8, null
  br i1 %tobool25.not, label %for.body.do.end31_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.do.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end31:                                         ; preds = %for.body.do.end31_crit_edge, %do.end24.do.end31_crit_edge
  %fastest.0.lcssa = phi ptr [ null, %do.end24.do.end31_crit_edge ], [ %spec.select, %for.body.do.end31_crit_edge ]
  %name33 = getelementptr inbounds %struct.xor_block_template, ptr %fastest.0.lcssa, i32 0, i32 1
  %9 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name33, align 4
  %speed34 = getelementptr inbounds %struct.xor_block_template, ptr %fastest.0.lcssa, i32 0, i32 2
  %11 = ptrtoint ptr %speed34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed34, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %10, i32 noundef %12) #12
  tail call void @free_pages(i32 noundef %call1, i32 noundef 2) #9
  store ptr %fastest.0.lcssa, ptr @active_template, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end6
  %retval.0 = phi i32 [ 0, %do.end31 ], [ -12, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_arm4regs_2(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div120 = lshr i32 %bytes, 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %2, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %asmresult6, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div120, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0, {$1, $2, $3, $4}", "=r,={r4},={r5},={r6},={r7},0"(ptr %p1.addr.0) #14, !srcloc !64
  %asmresult = extractvalue { ptr, i32, i32, i32, i32 } %0, 0
  %asmresult2 = extractvalue { ptr, i32, i32, i32, i32 } %0, 1
  %asmresult3 = extractvalue { ptr, i32, i32, i32, i32 } %0, 2
  %asmresult4 = extractvalue { ptr, i32, i32, i32, i32 } %0, 3
  %asmresult5 = extractvalue { ptr, i32, i32, i32, i32 } %0, 4
  %1 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0!, {$1, $2, $3, $4}", "=r,={r8},={r9},={r12},={lr},0"(ptr %p2.addr.0) #14, !srcloc !65
  %asmresult6 = extractvalue { ptr, i32, i32, i32, i32 } %1, 0
  %asmresult7 = extractvalue { ptr, i32, i32, i32, i32 } %1, 1
  %asmresult8 = extractvalue { ptr, i32, i32, i32, i32 } %1, 2
  %asmresult9 = extractvalue { ptr, i32, i32, i32, i32 } %1, 3
  %asmresult10 = extractvalue { ptr, i32, i32, i32, i32 } %1, 4
  %xor = xor i32 %asmresult7, %asmresult2
  %xor11 = xor i32 %asmresult8, %asmresult3
  %xor12 = xor i32 %asmresult9, %asmresult4
  %xor13 = xor i32 %asmresult10, %asmresult5
  %2 = tail call ptr asm sideeffect "stmia\09$0!, {$2, $3, $4, $5}", "=r,0,{r4},{r5},{r6},{r7}"(ptr %asmresult, i32 %xor, i32 %xor11, i32 %xor12, i32 %xor13) #9, !srcloc !66
  %dec = add i32 %lines.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_arm4regs_3(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div137 = lshr i32 %bytes, 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %3, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %asmresult6, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %asmresult14, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div137, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0, {$1, $2, $3, $4}", "=r,={r4},={r5},={r6},={r7},0"(ptr %p1.addr.0) #14, !srcloc !67
  %asmresult = extractvalue { ptr, i32, i32, i32, i32 } %0, 0
  %asmresult2 = extractvalue { ptr, i32, i32, i32, i32 } %0, 1
  %asmresult3 = extractvalue { ptr, i32, i32, i32, i32 } %0, 2
  %asmresult4 = extractvalue { ptr, i32, i32, i32, i32 } %0, 3
  %asmresult5 = extractvalue { ptr, i32, i32, i32, i32 } %0, 4
  %1 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0!, {$1, $2, $3, $4}", "=r,={r8},={r9},={r12},={lr},0"(ptr %p2.addr.0) #14, !srcloc !68
  %asmresult6 = extractvalue { ptr, i32, i32, i32, i32 } %1, 0
  %asmresult7 = extractvalue { ptr, i32, i32, i32, i32 } %1, 1
  %asmresult8 = extractvalue { ptr, i32, i32, i32, i32 } %1, 2
  %asmresult9 = extractvalue { ptr, i32, i32, i32, i32 } %1, 3
  %asmresult10 = extractvalue { ptr, i32, i32, i32, i32 } %1, 4
  %xor = xor i32 %asmresult7, %asmresult2
  %xor11 = xor i32 %asmresult8, %asmresult3
  %xor12 = xor i32 %asmresult9, %asmresult4
  %xor13 = xor i32 %asmresult10, %asmresult5
  %2 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0!, {$1, $2, $3, $4}", "=r,={r8},={r9},={r12},={lr},0"(ptr %p3.addr.0) #14, !srcloc !69
  %asmresult14 = extractvalue { ptr, i32, i32, i32, i32 } %2, 0
  %asmresult15 = extractvalue { ptr, i32, i32, i32, i32 } %2, 1
  %asmresult16 = extractvalue { ptr, i32, i32, i32, i32 } %2, 2
  %asmresult17 = extractvalue { ptr, i32, i32, i32, i32 } %2, 3
  %asmresult18 = extractvalue { ptr, i32, i32, i32, i32 } %2, 4
  %xor19 = xor i32 %xor, %asmresult15
  %xor20 = xor i32 %xor11, %asmresult16
  %xor21 = xor i32 %xor12, %asmresult17
  %xor22 = xor i32 %xor13, %asmresult18
  %3 = tail call ptr asm sideeffect "stmia\09$0!, {$2, $3, $4, $5}", "=r,0,{r4},{r5},{r6},{r7}"(ptr %asmresult, i32 %xor19, i32 %xor20, i32 %xor21, i32 %xor22) #9, !srcloc !70
  %dec = add i32 %lines.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_arm4regs_4(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3, ptr noundef %p4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div130 = lshr i32 %bytes, 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %4, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %asmresult4, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %asmresult8, %do.body.do.body_crit_edge ]
  %p4.addr.0 = phi ptr [ %p4, %entry ], [ %asmresult13, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div130, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = tail call { ptr, i32, i32 } asm "ldmia\09$0, {$1, $2}", "=r,={r8},={r9},0"(ptr %p1.addr.0) #14, !srcloc !71
  %asmresult = extractvalue { ptr, i32, i32 } %0, 0
  %asmresult2 = extractvalue { ptr, i32, i32 } %0, 1
  %asmresult3 = extractvalue { ptr, i32, i32 } %0, 2
  %1 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p2.addr.0) #14, !srcloc !72
  %asmresult4 = extractvalue { ptr, i32, i32 } %1, 0
  %asmresult5 = extractvalue { ptr, i32, i32 } %1, 1
  %asmresult6 = extractvalue { ptr, i32, i32 } %1, 2
  %xor = xor i32 %asmresult5, %asmresult2
  %xor7 = xor i32 %asmresult6, %asmresult3
  %2 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p3.addr.0) #14, !srcloc !73
  %asmresult8 = extractvalue { ptr, i32, i32 } %2, 0
  %asmresult9 = extractvalue { ptr, i32, i32 } %2, 1
  %asmresult10 = extractvalue { ptr, i32, i32 } %2, 2
  %xor11 = xor i32 %xor, %asmresult9
  %xor12 = xor i32 %xor7, %asmresult10
  %3 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p4.addr.0) #14, !srcloc !74
  %asmresult13 = extractvalue { ptr, i32, i32 } %3, 0
  %asmresult14 = extractvalue { ptr, i32, i32 } %3, 1
  %asmresult15 = extractvalue { ptr, i32, i32 } %3, 2
  %xor16 = xor i32 %xor11, %asmresult14
  %xor17 = xor i32 %xor12, %asmresult15
  %4 = tail call ptr asm sideeffect "stmia\09$0!, {$2, $3}", "=r,0,{r8},{r9}"(ptr %asmresult, i32 %xor16, i32 %xor17) #9, !srcloc !75
  %dec = add i32 %lines.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_arm4regs_5(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3, ptr noundef %p4, ptr noundef %p5) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div139 = lshr i32 %bytes, 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %5, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %asmresult4, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %asmresult8, %do.body.do.body_crit_edge ]
  %p4.addr.0 = phi ptr [ %p4, %entry ], [ %asmresult13, %do.body.do.body_crit_edge ]
  %p5.addr.0 = phi ptr [ %p5, %entry ], [ %asmresult18, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div139, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = tail call { ptr, i32, i32 } asm "ldmia\09$0, {$1, $2}", "=r,={r8},={r9},0"(ptr %p1.addr.0) #14, !srcloc !76
  %asmresult = extractvalue { ptr, i32, i32 } %0, 0
  %asmresult2 = extractvalue { ptr, i32, i32 } %0, 1
  %asmresult3 = extractvalue { ptr, i32, i32 } %0, 2
  %1 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p2.addr.0) #14, !srcloc !77
  %asmresult4 = extractvalue { ptr, i32, i32 } %1, 0
  %asmresult5 = extractvalue { ptr, i32, i32 } %1, 1
  %asmresult6 = extractvalue { ptr, i32, i32 } %1, 2
  %xor = xor i32 %asmresult5, %asmresult2
  %xor7 = xor i32 %asmresult6, %asmresult3
  %2 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p3.addr.0) #14, !srcloc !78
  %asmresult8 = extractvalue { ptr, i32, i32 } %2, 0
  %asmresult9 = extractvalue { ptr, i32, i32 } %2, 1
  %asmresult10 = extractvalue { ptr, i32, i32 } %2, 2
  %xor11 = xor i32 %xor, %asmresult9
  %xor12 = xor i32 %xor7, %asmresult10
  %3 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p4.addr.0) #14, !srcloc !79
  %asmresult13 = extractvalue { ptr, i32, i32 } %3, 0
  %asmresult14 = extractvalue { ptr, i32, i32 } %3, 1
  %asmresult15 = extractvalue { ptr, i32, i32 } %3, 2
  %xor16 = xor i32 %xor11, %asmresult14
  %xor17 = xor i32 %xor12, %asmresult15
  %4 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p5.addr.0) #14, !srcloc !80
  %asmresult18 = extractvalue { ptr, i32, i32 } %4, 0
  %asmresult19 = extractvalue { ptr, i32, i32 } %4, 1
  %asmresult20 = extractvalue { ptr, i32, i32 } %4, 2
  %xor21 = xor i32 %xor16, %asmresult19
  %xor22 = xor i32 %xor17, %asmresult20
  %5 = tail call ptr asm sideeffect "stmia\09$0!, {$2, $3}", "=r,0,{r8},{r9}"(ptr %asmresult, i32 %xor21, i32 %xor22) #9, !srcloc !81
  %dec = add i32 %lines.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_8regs_2(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div142 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr24, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div142, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2.addr.0, align 4
  %2 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p1.addr.0, align 4
  %xor = xor i32 %3, %1
  store i32 %xor, ptr %p1.addr.0, align 4
  %arrayidx3 = getelementptr i32, ptr %p2.addr.0, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %p1.addr.0, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %xor5 = xor i32 %7, %5
  store i32 %xor5, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr i32, ptr %p2.addr.0, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %p1.addr.0, i32 2
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  %xor8 = xor i32 %11, %9
  store i32 %xor8, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr i32, ptr %p2.addr.0, i32 3
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %p1.addr.0, i32 3
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %15, %13
  store i32 %xor11, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr i32, ptr %p2.addr.0, i32 4
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr i32, ptr %p1.addr.0, i32 4
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx13, align 4
  %xor14 = xor i32 %19, %17
  store i32 %xor14, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr i32, ptr %p2.addr.0, i32 5
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i32, ptr %p1.addr.0, i32 5
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %23, %21
  store i32 %xor17, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr i32, ptr %p2.addr.0, i32 6
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr i32, ptr %p1.addr.0, i32 6
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %27, %25
  store i32 %xor20, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr i32, ptr %p2.addr.0, i32 7
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr i32, ptr %p1.addr.0, i32 7
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %31, %29
  store i32 %xor23, ptr %arrayidx22, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr24 = getelementptr i32, ptr %p2.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_8regs_3(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div167 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr40, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %add.ptr41, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div167, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2.addr.0, align 4
  %2 = ptrtoint ptr %p3.addr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p3.addr.0, align 4
  %xor = xor i32 %3, %1
  %4 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p1.addr.0, align 4
  %xor4 = xor i32 %xor, %5
  store i32 %xor4, ptr %p1.addr.0, align 4
  %arrayidx5 = getelementptr i32, ptr %p2.addr.0, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %p3.addr.0, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %xor7 = xor i32 %9, %7
  %arrayidx8 = getelementptr i32, ptr %p1.addr.0, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %xor9 = xor i32 %xor7, %11
  store i32 %xor9, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr i32, ptr %p2.addr.0, i32 2
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr i32, ptr %p3.addr.0, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %xor12 = xor i32 %15, %13
  %arrayidx13 = getelementptr i32, ptr %p1.addr.0, i32 2
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  %xor14 = xor i32 %xor12, %17
  store i32 %xor14, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr i32, ptr %p2.addr.0, i32 3
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr i32, ptr %p3.addr.0, i32 3
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %21, %19
  %arrayidx18 = getelementptr i32, ptr %p1.addr.0, i32 3
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx18, align 4
  %xor19 = xor i32 %xor17, %23
  store i32 %xor19, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr i32, ptr %p2.addr.0, i32 4
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr i32, ptr %p3.addr.0, i32 4
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx21, align 4
  %xor22 = xor i32 %27, %25
  %arrayidx23 = getelementptr i32, ptr %p1.addr.0, i32 4
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx23, align 4
  %xor24 = xor i32 %xor22, %29
  store i32 %xor24, ptr %arrayidx23, align 4
  %arrayidx25 = getelementptr i32, ptr %p2.addr.0, i32 5
  %30 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx25, align 4
  %arrayidx26 = getelementptr i32, ptr %p3.addr.0, i32 5
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %33, %31
  %arrayidx28 = getelementptr i32, ptr %p1.addr.0, i32 5
  %34 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %xor27, %35
  store i32 %xor29, ptr %arrayidx28, align 4
  %arrayidx30 = getelementptr i32, ptr %p2.addr.0, i32 6
  %36 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr i32, ptr %p3.addr.0, i32 6
  %38 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx31, align 4
  %xor32 = xor i32 %39, %37
  %arrayidx33 = getelementptr i32, ptr %p1.addr.0, i32 6
  %40 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %xor32, %41
  store i32 %xor34, ptr %arrayidx33, align 4
  %arrayidx35 = getelementptr i32, ptr %p2.addr.0, i32 7
  %42 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr i32, ptr %p3.addr.0, i32 7
  %44 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %45, %43
  %arrayidx38 = getelementptr i32, ptr %p1.addr.0, i32 7
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %xor37, %47
  store i32 %xor39, ptr %arrayidx38, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr40 = getelementptr i32, ptr %p2.addr.0, i32 8
  %add.ptr41 = getelementptr i32, ptr %p3.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_8regs_4(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3, ptr nocapture noundef readonly %p4) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div192 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr56, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %add.ptr57, %do.body.do.body_crit_edge ]
  %p4.addr.0 = phi ptr [ %p4, %entry ], [ %add.ptr58, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div192, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2.addr.0, align 4
  %2 = ptrtoint ptr %p3.addr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p3.addr.0, align 4
  %xor = xor i32 %3, %1
  %4 = ptrtoint ptr %p4.addr.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p4.addr.0, align 4
  %xor4 = xor i32 %xor, %5
  %6 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p1.addr.0, align 4
  %xor6 = xor i32 %xor4, %7
  store i32 %xor6, ptr %p1.addr.0, align 4
  %arrayidx7 = getelementptr i32, ptr %p2.addr.0, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %p3.addr.0, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  %xor9 = xor i32 %11, %9
  %arrayidx10 = getelementptr i32, ptr %p4.addr.0, i32 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %xor9, %13
  %arrayidx12 = getelementptr i32, ptr %p1.addr.0, i32 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %xor11, %15
  store i32 %xor13, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr i32, ptr %p2.addr.0, i32 2
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i32, ptr %p3.addr.0, i32 2
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx15, align 4
  %xor16 = xor i32 %19, %17
  %arrayidx17 = getelementptr i32, ptr %p4.addr.0, i32 2
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx17, align 4
  %xor18 = xor i32 %xor16, %21
  %arrayidx19 = getelementptr i32, ptr %p1.addr.0, i32 2
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %xor18, %23
  store i32 %xor20, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr i32, ptr %p2.addr.0, i32 3
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr i32, ptr %p3.addr.0, i32 3
  %26 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %27, %25
  %arrayidx24 = getelementptr i32, ptr %p4.addr.0, i32 3
  %28 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx24, align 4
  %xor25 = xor i32 %xor23, %29
  %arrayidx26 = getelementptr i32, ptr %p1.addr.0, i32 3
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %xor25, %31
  store i32 %xor27, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr i32, ptr %p2.addr.0, i32 4
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr i32, ptr %p3.addr.0, i32 4
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx29, align 4
  %xor30 = xor i32 %35, %33
  %arrayidx31 = getelementptr i32, ptr %p4.addr.0, i32 4
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx31, align 4
  %xor32 = xor i32 %xor30, %37
  %arrayidx33 = getelementptr i32, ptr %p1.addr.0, i32 4
  %38 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx33, align 4
  %xor34 = xor i32 %xor32, %39
  store i32 %xor34, ptr %arrayidx33, align 4
  %arrayidx35 = getelementptr i32, ptr %p2.addr.0, i32 5
  %40 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr i32, ptr %p3.addr.0, i32 5
  %42 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %43, %41
  %arrayidx38 = getelementptr i32, ptr %p4.addr.0, i32 5
  %44 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %xor37, %45
  %arrayidx40 = getelementptr i32, ptr %p1.addr.0, i32 5
  %46 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx40, align 4
  %xor41 = xor i32 %xor39, %47
  store i32 %xor41, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr i32, ptr %p2.addr.0, i32 6
  %48 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx42, align 4
  %arrayidx43 = getelementptr i32, ptr %p3.addr.0, i32 6
  %50 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %51, %49
  %arrayidx45 = getelementptr i32, ptr %p4.addr.0, i32 6
  %52 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx45, align 4
  %xor46 = xor i32 %xor44, %53
  %arrayidx47 = getelementptr i32, ptr %p1.addr.0, i32 6
  %54 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx47, align 4
  %xor48 = xor i32 %xor46, %55
  store i32 %xor48, ptr %arrayidx47, align 4
  %arrayidx49 = getelementptr i32, ptr %p2.addr.0, i32 7
  %56 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr i32, ptr %p3.addr.0, i32 7
  %58 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx50, align 4
  %xor51 = xor i32 %59, %57
  %arrayidx52 = getelementptr i32, ptr %p4.addr.0, i32 7
  %60 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx52, align 4
  %xor53 = xor i32 %xor51, %61
  %arrayidx54 = getelementptr i32, ptr %p1.addr.0, i32 7
  %62 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx54, align 4
  %xor55 = xor i32 %xor53, %63
  store i32 %xor55, ptr %arrayidx54, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr56 = getelementptr i32, ptr %p2.addr.0, i32 8
  %add.ptr57 = getelementptr i32, ptr %p3.addr.0, i32 8
  %add.ptr58 = getelementptr i32, ptr %p4.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_8regs_5(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3, ptr nocapture noundef readonly %p4, ptr nocapture noundef readonly %p5) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div1117 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr72, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %add.ptr73, %do.body.do.body_crit_edge ]
  %p4.addr.0 = phi ptr [ %p4, %entry ], [ %add.ptr74, %do.body.do.body_crit_edge ]
  %p5.addr.0 = phi ptr [ %p5, %entry ], [ %add.ptr75, %do.body.do.body_crit_edge ]
  %lines.0 = phi i32 [ %div1117, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p2.addr.0, align 4
  %2 = ptrtoint ptr %p3.addr.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p3.addr.0, align 4
  %xor = xor i32 %3, %1
  %4 = ptrtoint ptr %p4.addr.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p4.addr.0, align 4
  %xor4 = xor i32 %xor, %5
  %6 = ptrtoint ptr %p5.addr.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p5.addr.0, align 4
  %xor6 = xor i32 %xor4, %7
  %8 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p1.addr.0, align 4
  %xor8 = xor i32 %xor6, %9
  store i32 %xor8, ptr %p1.addr.0, align 4
  %arrayidx9 = getelementptr i32, ptr %p2.addr.0, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i32, ptr %p3.addr.0, i32 1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %13, %11
  %arrayidx12 = getelementptr i32, ptr %p4.addr.0, i32 1
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %xor11, %15
  %arrayidx14 = getelementptr i32, ptr %p5.addr.0, i32 1
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %xor15 = xor i32 %xor13, %17
  %arrayidx16 = getelementptr i32, ptr %p1.addr.0, i32 1
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %xor15, %19
  store i32 %xor17, ptr %arrayidx16, align 4
  %arrayidx18 = getelementptr i32, ptr %p2.addr.0, i32 2
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 4
  %arrayidx19 = getelementptr i32, ptr %p3.addr.0, i32 2
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %23, %21
  %arrayidx21 = getelementptr i32, ptr %p4.addr.0, i32 2
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx21, align 4
  %xor22 = xor i32 %xor20, %25
  %arrayidx23 = getelementptr i32, ptr %p5.addr.0, i32 2
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx23, align 4
  %xor24 = xor i32 %xor22, %27
  %arrayidx25 = getelementptr i32, ptr %p1.addr.0, i32 2
  %28 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx25, align 4
  %xor26 = xor i32 %xor24, %29
  store i32 %xor26, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr i32, ptr %p2.addr.0, i32 3
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr i32, ptr %p3.addr.0, i32 3
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %33, %31
  %arrayidx30 = getelementptr i32, ptr %p4.addr.0, i32 3
  %34 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx30, align 4
  %xor31 = xor i32 %xor29, %35
  %arrayidx32 = getelementptr i32, ptr %p5.addr.0, i32 3
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx32, align 4
  %xor33 = xor i32 %xor31, %37
  %arrayidx34 = getelementptr i32, ptr %p1.addr.0, i32 3
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx34, align 4
  %xor35 = xor i32 %xor33, %39
  store i32 %xor35, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr i32, ptr %p2.addr.0, i32 4
  %40 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr i32, ptr %p3.addr.0, i32 4
  %42 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx37, align 4
  %xor38 = xor i32 %43, %41
  %arrayidx39 = getelementptr i32, ptr %p4.addr.0, i32 4
  %44 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx39, align 4
  %xor40 = xor i32 %xor38, %45
  %arrayidx41 = getelementptr i32, ptr %p5.addr.0, i32 4
  %46 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx41, align 4
  %xor42 = xor i32 %xor40, %47
  %arrayidx43 = getelementptr i32, ptr %p1.addr.0, i32 4
  %48 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx43, align 4
  %xor44 = xor i32 %xor42, %49
  store i32 %xor44, ptr %arrayidx43, align 4
  %arrayidx45 = getelementptr i32, ptr %p2.addr.0, i32 5
  %50 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx45, align 4
  %arrayidx46 = getelementptr i32, ptr %p3.addr.0, i32 5
  %52 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx46, align 4
  %xor47 = xor i32 %53, %51
  %arrayidx48 = getelementptr i32, ptr %p4.addr.0, i32 5
  %54 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx48, align 4
  %xor49 = xor i32 %xor47, %55
  %arrayidx50 = getelementptr i32, ptr %p5.addr.0, i32 5
  %56 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx50, align 4
  %xor51 = xor i32 %xor49, %57
  %arrayidx52 = getelementptr i32, ptr %p1.addr.0, i32 5
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx52, align 4
  %xor53 = xor i32 %xor51, %59
  store i32 %xor53, ptr %arrayidx52, align 4
  %arrayidx54 = getelementptr i32, ptr %p2.addr.0, i32 6
  %60 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr i32, ptr %p3.addr.0, i32 6
  %62 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx55, align 4
  %xor56 = xor i32 %63, %61
  %arrayidx57 = getelementptr i32, ptr %p4.addr.0, i32 6
  %64 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx57, align 4
  %xor58 = xor i32 %xor56, %65
  %arrayidx59 = getelementptr i32, ptr %p5.addr.0, i32 6
  %66 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx59, align 4
  %xor60 = xor i32 %xor58, %67
  %arrayidx61 = getelementptr i32, ptr %p1.addr.0, i32 6
  %68 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx61, align 4
  %xor62 = xor i32 %xor60, %69
  store i32 %xor62, ptr %arrayidx61, align 4
  %arrayidx63 = getelementptr i32, ptr %p2.addr.0, i32 7
  %70 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx63, align 4
  %arrayidx64 = getelementptr i32, ptr %p3.addr.0, i32 7
  %72 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx64, align 4
  %xor65 = xor i32 %73, %71
  %arrayidx66 = getelementptr i32, ptr %p4.addr.0, i32 7
  %74 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx66, align 4
  %xor67 = xor i32 %xor65, %75
  %arrayidx68 = getelementptr i32, ptr %p5.addr.0, i32 7
  %76 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx68, align 4
  %xor69 = xor i32 %xor67, %77
  %arrayidx70 = getelementptr i32, ptr %p1.addr.0, i32 7
  %78 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %xor69, %79
  store i32 %xor71, ptr %arrayidx70, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr72 = getelementptr i32, ptr %p2.addr.0, i32 8
  %add.ptr73 = getelementptr i32, ptr %p3.addr.0, i32 8
  %add.ptr74 = getelementptr i32, ptr %p4.addr.0, i32 8
  %add.ptr75 = getelementptr i32, ptr %p5.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_32regs_2(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div166 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %lines.0 = phi i32 [ %div166, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr32, %do.body.do.body_crit_edge ]
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p1.addr.0, align 4
  %arrayidx2 = getelementptr i32, ptr %p1.addr.0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %p1.addr.0, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %p1.addr.0, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %p1.addr.0, i32 4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %p1.addr.0, i32 5
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %p1.addr.0, i32 6
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %p1.addr.0, i32 7
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %16 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p2.addr.0, align 4
  %xor = xor i32 %17, %1
  %arrayidx10 = getelementptr i32, ptr %p2.addr.0, i32 1
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %19, %3
  %arrayidx12 = getelementptr i32, ptr %p2.addr.0, i32 2
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %21, %5
  %arrayidx14 = getelementptr i32, ptr %p2.addr.0, i32 3
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14, align 4
  %xor15 = xor i32 %23, %7
  %arrayidx16 = getelementptr i32, ptr %p2.addr.0, i32 4
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %25, %9
  %arrayidx18 = getelementptr i32, ptr %p2.addr.0, i32 5
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx18, align 4
  %xor19 = xor i32 %27, %11
  %arrayidx20 = getelementptr i32, ptr %p2.addr.0, i32 6
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx20, align 4
  %xor21 = xor i32 %29, %13
  %arrayidx22 = getelementptr i32, ptr %p2.addr.0, i32 7
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %31, %15
  store i32 %xor, ptr %p1.addr.0, align 4
  store i32 %xor11, ptr %arrayidx2, align 4
  store i32 %xor13, ptr %arrayidx3, align 4
  store i32 %xor15, ptr %arrayidx4, align 4
  store i32 %xor17, ptr %arrayidx5, align 4
  store i32 %xor19, ptr %arrayidx6, align 4
  store i32 %xor21, ptr %arrayidx7, align 4
  store i32 %xor23, ptr %arrayidx8, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr32 = getelementptr i32, ptr %p2.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_32regs_3(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div199 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %lines.0 = phi i32 [ %div199, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %add.ptr49, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr48, %do.body.do.body_crit_edge ]
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p1.addr.0, align 4
  %arrayidx2 = getelementptr i32, ptr %p1.addr.0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %p1.addr.0, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %p1.addr.0, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %p1.addr.0, i32 4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %p1.addr.0, i32 5
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %p1.addr.0, i32 6
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %p1.addr.0, i32 7
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %16 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p2.addr.0, align 4
  %xor = xor i32 %17, %1
  %arrayidx10 = getelementptr i32, ptr %p2.addr.0, i32 1
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %19, %3
  %arrayidx12 = getelementptr i32, ptr %p2.addr.0, i32 2
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %21, %5
  %arrayidx14 = getelementptr i32, ptr %p2.addr.0, i32 3
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14, align 4
  %xor15 = xor i32 %23, %7
  %arrayidx16 = getelementptr i32, ptr %p2.addr.0, i32 4
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %25, %9
  %arrayidx18 = getelementptr i32, ptr %p2.addr.0, i32 5
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx18, align 4
  %xor19 = xor i32 %27, %11
  %arrayidx20 = getelementptr i32, ptr %p2.addr.0, i32 6
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx20, align 4
  %xor21 = xor i32 %29, %13
  %arrayidx22 = getelementptr i32, ptr %p2.addr.0, i32 7
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %31, %15
  %32 = ptrtoint ptr %p3.addr.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p3.addr.0, align 4
  %xor25 = xor i32 %xor, %33
  %arrayidx26 = getelementptr i32, ptr %p3.addr.0, i32 1
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %xor11, %35
  %arrayidx28 = getelementptr i32, ptr %p3.addr.0, i32 2
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %xor13, %37
  %arrayidx30 = getelementptr i32, ptr %p3.addr.0, i32 3
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx30, align 4
  %xor31 = xor i32 %xor15, %39
  %arrayidx32 = getelementptr i32, ptr %p3.addr.0, i32 4
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx32, align 4
  %xor33 = xor i32 %xor17, %41
  %arrayidx34 = getelementptr i32, ptr %p3.addr.0, i32 5
  %42 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx34, align 4
  %xor35 = xor i32 %xor19, %43
  %arrayidx36 = getelementptr i32, ptr %p3.addr.0, i32 6
  %44 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %xor21, %45
  %arrayidx38 = getelementptr i32, ptr %p3.addr.0, i32 7
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %xor23, %47
  store i32 %xor25, ptr %p1.addr.0, align 4
  store i32 %xor27, ptr %arrayidx2, align 4
  store i32 %xor29, ptr %arrayidx3, align 4
  store i32 %xor31, ptr %arrayidx4, align 4
  store i32 %xor33, ptr %arrayidx5, align 4
  store i32 %xor35, ptr %arrayidx6, align 4
  store i32 %xor37, ptr %arrayidx7, align 4
  store i32 %xor39, ptr %arrayidx8, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr48 = getelementptr i32, ptr %p2.addr.0, i32 8
  %add.ptr49 = getelementptr i32, ptr %p3.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_32regs_4(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3, ptr nocapture noundef readonly %p4) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div1132 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %lines.0 = phi i32 [ %div1132, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %p4.addr.0 = phi ptr [ %p4, %entry ], [ %add.ptr66, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %add.ptr65, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr64, %do.body.do.body_crit_edge ]
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p1.addr.0, align 4
  %arrayidx2 = getelementptr i32, ptr %p1.addr.0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %p1.addr.0, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %p1.addr.0, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %p1.addr.0, i32 4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %p1.addr.0, i32 5
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %p1.addr.0, i32 6
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %p1.addr.0, i32 7
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %16 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p2.addr.0, align 4
  %xor = xor i32 %17, %1
  %arrayidx10 = getelementptr i32, ptr %p2.addr.0, i32 1
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %19, %3
  %arrayidx12 = getelementptr i32, ptr %p2.addr.0, i32 2
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %21, %5
  %arrayidx14 = getelementptr i32, ptr %p2.addr.0, i32 3
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14, align 4
  %xor15 = xor i32 %23, %7
  %arrayidx16 = getelementptr i32, ptr %p2.addr.0, i32 4
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %25, %9
  %arrayidx18 = getelementptr i32, ptr %p2.addr.0, i32 5
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx18, align 4
  %xor19 = xor i32 %27, %11
  %arrayidx20 = getelementptr i32, ptr %p2.addr.0, i32 6
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx20, align 4
  %xor21 = xor i32 %29, %13
  %arrayidx22 = getelementptr i32, ptr %p2.addr.0, i32 7
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %31, %15
  %32 = ptrtoint ptr %p3.addr.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p3.addr.0, align 4
  %xor25 = xor i32 %xor, %33
  %arrayidx26 = getelementptr i32, ptr %p3.addr.0, i32 1
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %xor11, %35
  %arrayidx28 = getelementptr i32, ptr %p3.addr.0, i32 2
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %xor13, %37
  %arrayidx30 = getelementptr i32, ptr %p3.addr.0, i32 3
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx30, align 4
  %xor31 = xor i32 %xor15, %39
  %arrayidx32 = getelementptr i32, ptr %p3.addr.0, i32 4
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx32, align 4
  %xor33 = xor i32 %xor17, %41
  %arrayidx34 = getelementptr i32, ptr %p3.addr.0, i32 5
  %42 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx34, align 4
  %xor35 = xor i32 %xor19, %43
  %arrayidx36 = getelementptr i32, ptr %p3.addr.0, i32 6
  %44 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %xor21, %45
  %arrayidx38 = getelementptr i32, ptr %p3.addr.0, i32 7
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %xor23, %47
  %48 = ptrtoint ptr %p4.addr.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p4.addr.0, align 4
  %xor41 = xor i32 %xor25, %49
  %arrayidx42 = getelementptr i32, ptr %p4.addr.0, i32 1
  %50 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx42, align 4
  %xor43 = xor i32 %xor27, %51
  %arrayidx44 = getelementptr i32, ptr %p4.addr.0, i32 2
  %52 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx44, align 4
  %xor45 = xor i32 %xor29, %53
  %arrayidx46 = getelementptr i32, ptr %p4.addr.0, i32 3
  %54 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx46, align 4
  %xor47 = xor i32 %xor31, %55
  %arrayidx48 = getelementptr i32, ptr %p4.addr.0, i32 4
  %56 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx48, align 4
  %xor49 = xor i32 %xor33, %57
  %arrayidx50 = getelementptr i32, ptr %p4.addr.0, i32 5
  %58 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx50, align 4
  %xor51 = xor i32 %xor35, %59
  %arrayidx52 = getelementptr i32, ptr %p4.addr.0, i32 6
  %60 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx52, align 4
  %xor53 = xor i32 %xor37, %61
  %arrayidx54 = getelementptr i32, ptr %p4.addr.0, i32 7
  %62 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx54, align 4
  %xor55 = xor i32 %xor39, %63
  store i32 %xor41, ptr %p1.addr.0, align 4
  store i32 %xor43, ptr %arrayidx2, align 4
  store i32 %xor45, ptr %arrayidx3, align 4
  store i32 %xor47, ptr %arrayidx4, align 4
  store i32 %xor49, ptr %arrayidx5, align 4
  store i32 %xor51, ptr %arrayidx6, align 4
  store i32 %xor53, ptr %arrayidx7, align 4
  store i32 %xor55, ptr %arrayidx8, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr64 = getelementptr i32, ptr %p2.addr.0, i32 8
  %add.ptr65 = getelementptr i32, ptr %p3.addr.0, i32 8
  %add.ptr66 = getelementptr i32, ptr %p4.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_32regs_5(i32 noundef %bytes, ptr nocapture noundef %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3, ptr nocapture noundef readonly %p4, ptr nocapture noundef readonly %p5) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div1165 = lshr i32 %bytes, 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %lines.0 = phi i32 [ %div1165, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  %p5.addr.0 = phi ptr [ %p5, %entry ], [ %add.ptr83, %do.body.do.body_crit_edge ]
  %p4.addr.0 = phi ptr [ %p4, %entry ], [ %add.ptr82, %do.body.do.body_crit_edge ]
  %p3.addr.0 = phi ptr [ %p3, %entry ], [ %add.ptr81, %do.body.do.body_crit_edge ]
  %p2.addr.0 = phi ptr [ %p2, %entry ], [ %add.ptr80, %do.body.do.body_crit_edge ]
  %p1.addr.0 = phi ptr [ %p1, %entry ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %p1.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p1.addr.0, align 4
  %arrayidx2 = getelementptr i32, ptr %p1.addr.0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr i32, ptr %p1.addr.0, i32 2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr i32, ptr %p1.addr.0, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr i32, ptr %p1.addr.0, i32 4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %p1.addr.0, i32 5
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr i32, ptr %p1.addr.0, i32 6
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr i32, ptr %p1.addr.0, i32 7
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %16 = ptrtoint ptr %p2.addr.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %p2.addr.0, align 4
  %xor = xor i32 %17, %1
  %arrayidx10 = getelementptr i32, ptr %p2.addr.0, i32 1
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %xor11 = xor i32 %19, %3
  %arrayidx12 = getelementptr i32, ptr %p2.addr.0, i32 2
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %21, %5
  %arrayidx14 = getelementptr i32, ptr %p2.addr.0, i32 3
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx14, align 4
  %xor15 = xor i32 %23, %7
  %arrayidx16 = getelementptr i32, ptr %p2.addr.0, i32 4
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16, align 4
  %xor17 = xor i32 %25, %9
  %arrayidx18 = getelementptr i32, ptr %p2.addr.0, i32 5
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx18, align 4
  %xor19 = xor i32 %27, %11
  %arrayidx20 = getelementptr i32, ptr %p2.addr.0, i32 6
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx20, align 4
  %xor21 = xor i32 %29, %13
  %arrayidx22 = getelementptr i32, ptr %p2.addr.0, i32 7
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22, align 4
  %xor23 = xor i32 %31, %15
  %32 = ptrtoint ptr %p3.addr.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p3.addr.0, align 4
  %xor25 = xor i32 %xor, %33
  %arrayidx26 = getelementptr i32, ptr %p3.addr.0, i32 1
  %34 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx26, align 4
  %xor27 = xor i32 %xor11, %35
  %arrayidx28 = getelementptr i32, ptr %p3.addr.0, i32 2
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx28, align 4
  %xor29 = xor i32 %xor13, %37
  %arrayidx30 = getelementptr i32, ptr %p3.addr.0, i32 3
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx30, align 4
  %xor31 = xor i32 %xor15, %39
  %arrayidx32 = getelementptr i32, ptr %p3.addr.0, i32 4
  %40 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx32, align 4
  %xor33 = xor i32 %xor17, %41
  %arrayidx34 = getelementptr i32, ptr %p3.addr.0, i32 5
  %42 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx34, align 4
  %xor35 = xor i32 %xor19, %43
  %arrayidx36 = getelementptr i32, ptr %p3.addr.0, i32 6
  %44 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx36, align 4
  %xor37 = xor i32 %xor21, %45
  %arrayidx38 = getelementptr i32, ptr %p3.addr.0, i32 7
  %46 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx38, align 4
  %xor39 = xor i32 %xor23, %47
  %48 = ptrtoint ptr %p4.addr.0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p4.addr.0, align 4
  %xor41 = xor i32 %xor25, %49
  %arrayidx42 = getelementptr i32, ptr %p4.addr.0, i32 1
  %50 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx42, align 4
  %xor43 = xor i32 %xor27, %51
  %arrayidx44 = getelementptr i32, ptr %p4.addr.0, i32 2
  %52 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx44, align 4
  %xor45 = xor i32 %xor29, %53
  %arrayidx46 = getelementptr i32, ptr %p4.addr.0, i32 3
  %54 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx46, align 4
  %xor47 = xor i32 %xor31, %55
  %arrayidx48 = getelementptr i32, ptr %p4.addr.0, i32 4
  %56 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx48, align 4
  %xor49 = xor i32 %xor33, %57
  %arrayidx50 = getelementptr i32, ptr %p4.addr.0, i32 5
  %58 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx50, align 4
  %xor51 = xor i32 %xor35, %59
  %arrayidx52 = getelementptr i32, ptr %p4.addr.0, i32 6
  %60 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx52, align 4
  %xor53 = xor i32 %xor37, %61
  %arrayidx54 = getelementptr i32, ptr %p4.addr.0, i32 7
  %62 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx54, align 4
  %xor55 = xor i32 %xor39, %63
  %64 = ptrtoint ptr %p5.addr.0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %p5.addr.0, align 4
  %xor57 = xor i32 %xor41, %65
  %arrayidx58 = getelementptr i32, ptr %p5.addr.0, i32 1
  %66 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx58, align 4
  %xor59 = xor i32 %xor43, %67
  %arrayidx60 = getelementptr i32, ptr %p5.addr.0, i32 2
  %68 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx60, align 4
  %xor61 = xor i32 %xor45, %69
  %arrayidx62 = getelementptr i32, ptr %p5.addr.0, i32 3
  %70 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx62, align 4
  %xor63 = xor i32 %xor47, %71
  %arrayidx64 = getelementptr i32, ptr %p5.addr.0, i32 4
  %72 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx64, align 4
  %xor65 = xor i32 %xor49, %73
  %arrayidx66 = getelementptr i32, ptr %p5.addr.0, i32 5
  %74 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx66, align 4
  %xor67 = xor i32 %xor51, %75
  %arrayidx68 = getelementptr i32, ptr %p5.addr.0, i32 6
  %76 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx68, align 4
  %xor69 = xor i32 %xor53, %77
  %arrayidx70 = getelementptr i32, ptr %p5.addr.0, i32 7
  %78 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %xor55, %79
  store i32 %xor57, ptr %p1.addr.0, align 4
  store i32 %xor59, ptr %arrayidx2, align 4
  store i32 %xor61, ptr %arrayidx3, align 4
  store i32 %xor63, ptr %arrayidx4, align 4
  store i32 %xor65, ptr %arrayidx5, align 4
  store i32 %xor67, ptr %arrayidx6, align 4
  store i32 %xor69, ptr %arrayidx7, align 4
  store i32 %xor71, ptr %arrayidx8, align 4
  %add.ptr = getelementptr i32, ptr %p1.addr.0, i32 8
  %add.ptr80 = getelementptr i32, ptr %p2.addr.0, i32 8
  %add.ptr81 = getelementptr i32, ptr %p3.addr.0, i32 8
  %add.ptr82 = getelementptr i32, ptr %p4.addr.0, i32 8
  %add.ptr83 = getelementptr i32, ptr %p5.addr.0, i32 8
  %dec = add nsw i32 %lines.0, -1
  %cmp = icmp ugt i32 %lines.0, 1
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_neon_2(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i9 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i9 to ptr
  %preempt_count.i10 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i10, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i11 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i11 to ptr
  %preempt_count.i12 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i12, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %div120.i = lshr i32 %bytes, 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %p1.addr.0.i = phi ptr [ %p1, %if.then ], [ %14, %do.body.i.do.body.i_crit_edge ]
  %p2.addr.0.i = phi ptr [ %p2, %if.then ], [ %asmresult6.i, %do.body.i.do.body.i_crit_edge ]
  %lines.0.i = phi i32 [ %div120.i, %if.then ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %12 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0, {$1, $2, $3, $4}", "=r,={r4},={r5},={r6},={r7},0"(ptr %p1.addr.0.i) #14, !srcloc !64
  %asmresult.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 0
  %asmresult2.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 1
  %asmresult3.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 2
  %asmresult4.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 3
  %asmresult5.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 4
  %13 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0!, {$1, $2, $3, $4}", "=r,={r8},={r9},={r12},={lr},0"(ptr %p2.addr.0.i) #14, !srcloc !65
  %asmresult6.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 0
  %asmresult7.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 1
  %asmresult8.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 2
  %asmresult9.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 3
  %asmresult10.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 4
  %xor.i = xor i32 %asmresult7.i, %asmresult2.i
  %xor11.i = xor i32 %asmresult8.i, %asmresult3.i
  %xor12.i = xor i32 %asmresult9.i, %asmresult4.i
  %xor13.i = xor i32 %asmresult10.i, %asmresult5.i
  %14 = tail call ptr asm sideeffect "stmia\09$0!, {$2, $3, $4, $5}", "=r,0,{r4},{r5},{r6},{r7}"(ptr %asmresult.i, i32 %xor.i, i32 %xor11.i, i32 %xor12.i, i32 %xor13.i) #9, !srcloc !66
  %dec.i = add i32 %lines.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kernel_neon_begin() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xor_block_template, ptr @xor_block_neon_inner, i32 0, i32 3) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.xor_block_template, ptr @xor_block_neon_inner, i32 0, i32 3), align 4
  tail call void %15(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2) #9
  tail call void @kernel_neon_end() #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_neon_3(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i10 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i10 to ptr
  %preempt_count.i11 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i11, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i12 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i12 to ptr
  %preempt_count.i13 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i13, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %div137.i = lshr i32 %bytes, 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %p1.addr.0.i = phi ptr [ %p1, %if.then ], [ %15, %do.body.i.do.body.i_crit_edge ]
  %p2.addr.0.i = phi ptr [ %p2, %if.then ], [ %asmresult6.i, %do.body.i.do.body.i_crit_edge ]
  %p3.addr.0.i = phi ptr [ %p3, %if.then ], [ %asmresult14.i, %do.body.i.do.body.i_crit_edge ]
  %lines.0.i = phi i32 [ %div137.i, %if.then ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %12 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0, {$1, $2, $3, $4}", "=r,={r4},={r5},={r6},={r7},0"(ptr %p1.addr.0.i) #14, !srcloc !67
  %asmresult.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 0
  %asmresult2.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 1
  %asmresult3.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 2
  %asmresult4.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 3
  %asmresult5.i = extractvalue { ptr, i32, i32, i32, i32 } %12, 4
  %13 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0!, {$1, $2, $3, $4}", "=r,={r8},={r9},={r12},={lr},0"(ptr %p2.addr.0.i) #14, !srcloc !68
  %asmresult6.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 0
  %asmresult7.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 1
  %asmresult8.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 2
  %asmresult9.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 3
  %asmresult10.i = extractvalue { ptr, i32, i32, i32, i32 } %13, 4
  %xor.i = xor i32 %asmresult7.i, %asmresult2.i
  %xor11.i = xor i32 %asmresult8.i, %asmresult3.i
  %xor12.i = xor i32 %asmresult9.i, %asmresult4.i
  %xor13.i = xor i32 %asmresult10.i, %asmresult5.i
  %14 = tail call { ptr, i32, i32, i32, i32 } asm "ldmia\09$0!, {$1, $2, $3, $4}", "=r,={r8},={r9},={r12},={lr},0"(ptr %p3.addr.0.i) #14, !srcloc !69
  %asmresult14.i = extractvalue { ptr, i32, i32, i32, i32 } %14, 0
  %asmresult15.i = extractvalue { ptr, i32, i32, i32, i32 } %14, 1
  %asmresult16.i = extractvalue { ptr, i32, i32, i32, i32 } %14, 2
  %asmresult17.i = extractvalue { ptr, i32, i32, i32, i32 } %14, 3
  %asmresult18.i = extractvalue { ptr, i32, i32, i32, i32 } %14, 4
  %xor19.i = xor i32 %xor.i, %asmresult15.i
  %xor20.i = xor i32 %xor11.i, %asmresult16.i
  %xor21.i = xor i32 %xor12.i, %asmresult17.i
  %xor22.i = xor i32 %xor13.i, %asmresult18.i
  %15 = tail call ptr asm sideeffect "stmia\09$0!, {$2, $3, $4, $5}", "=r,0,{r4},{r5},{r6},{r7}"(ptr %asmresult.i, i32 %xor19.i, i32 %xor20.i, i32 %xor21.i, i32 %xor22.i) #9, !srcloc !70
  %dec.i = add i32 %lines.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kernel_neon_begin() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xor_block_template, ptr @xor_block_neon_inner, i32 0, i32 4) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.xor_block_template, ptr @xor_block_neon_inner, i32 0, i32 4), align 4
  tail call void %16(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3) #9
  tail call void @kernel_neon_end() #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_neon_4(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3, ptr noundef %p4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i11 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i11 to ptr
  %preempt_count.i12 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i12, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i13 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i13 to ptr
  %preempt_count.i14 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i14, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %div130.i = lshr i32 %bytes, 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %p1.addr.0.i = phi ptr [ %p1, %if.then ], [ %16, %do.body.i.do.body.i_crit_edge ]
  %p2.addr.0.i = phi ptr [ %p2, %if.then ], [ %asmresult4.i, %do.body.i.do.body.i_crit_edge ]
  %p3.addr.0.i = phi ptr [ %p3, %if.then ], [ %asmresult8.i, %do.body.i.do.body.i_crit_edge ]
  %p4.addr.0.i = phi ptr [ %p4, %if.then ], [ %asmresult13.i, %do.body.i.do.body.i_crit_edge ]
  %lines.0.i = phi i32 [ %div130.i, %if.then ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %12 = tail call { ptr, i32, i32 } asm "ldmia\09$0, {$1, $2}", "=r,={r8},={r9},0"(ptr %p1.addr.0.i) #14, !srcloc !71
  %asmresult.i = extractvalue { ptr, i32, i32 } %12, 0
  %asmresult2.i = extractvalue { ptr, i32, i32 } %12, 1
  %asmresult3.i = extractvalue { ptr, i32, i32 } %12, 2
  %13 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p2.addr.0.i) #14, !srcloc !72
  %asmresult4.i = extractvalue { ptr, i32, i32 } %13, 0
  %asmresult5.i = extractvalue { ptr, i32, i32 } %13, 1
  %asmresult6.i = extractvalue { ptr, i32, i32 } %13, 2
  %xor.i = xor i32 %asmresult5.i, %asmresult2.i
  %xor7.i = xor i32 %asmresult6.i, %asmresult3.i
  %14 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p3.addr.0.i) #14, !srcloc !73
  %asmresult8.i = extractvalue { ptr, i32, i32 } %14, 0
  %asmresult9.i = extractvalue { ptr, i32, i32 } %14, 1
  %asmresult10.i = extractvalue { ptr, i32, i32 } %14, 2
  %xor11.i = xor i32 %xor.i, %asmresult9.i
  %xor12.i = xor i32 %xor7.i, %asmresult10.i
  %15 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p4.addr.0.i) #14, !srcloc !74
  %asmresult13.i = extractvalue { ptr, i32, i32 } %15, 0
  %asmresult14.i = extractvalue { ptr, i32, i32 } %15, 1
  %asmresult15.i = extractvalue { ptr, i32, i32 } %15, 2
  %xor16.i = xor i32 %xor11.i, %asmresult14.i
  %xor17.i = xor i32 %xor12.i, %asmresult15.i
  %16 = tail call ptr asm sideeffect "stmia\09$0!, {$2, $3}", "=r,0,{r8},{r9}"(ptr %asmresult.i, i32 %xor16.i, i32 %xor17.i) #9, !srcloc !75
  %dec.i = add i32 %lines.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kernel_neon_begin() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xor_block_template, ptr @xor_block_neon_inner, i32 0, i32 5) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.xor_block_template, ptr @xor_block_neon_inner, i32 0, i32 5), align 4
  tail call void %17(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3, ptr noundef %p4) #9
  tail call void @kernel_neon_end() #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xor_neon_5(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3, ptr noundef %p4, ptr noundef %p5) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i12 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i12 to ptr
  %preempt_count.i13 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i13, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i14 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i14 to ptr
  %preempt_count.i15 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i15, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %div139.i = lshr i32 %bytes, 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %p1.addr.0.i = phi ptr [ %p1, %if.then ], [ %17, %do.body.i.do.body.i_crit_edge ]
  %p2.addr.0.i = phi ptr [ %p2, %if.then ], [ %asmresult4.i, %do.body.i.do.body.i_crit_edge ]
  %p3.addr.0.i = phi ptr [ %p3, %if.then ], [ %asmresult8.i, %do.body.i.do.body.i_crit_edge ]
  %p4.addr.0.i = phi ptr [ %p4, %if.then ], [ %asmresult13.i, %do.body.i.do.body.i_crit_edge ]
  %p5.addr.0.i = phi ptr [ %p5, %if.then ], [ %asmresult18.i, %do.body.i.do.body.i_crit_edge ]
  %lines.0.i = phi i32 [ %div139.i, %if.then ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %12 = tail call { ptr, i32, i32 } asm "ldmia\09$0, {$1, $2}", "=r,={r8},={r9},0"(ptr %p1.addr.0.i) #14, !srcloc !76
  %asmresult.i = extractvalue { ptr, i32, i32 } %12, 0
  %asmresult2.i = extractvalue { ptr, i32, i32 } %12, 1
  %asmresult3.i = extractvalue { ptr, i32, i32 } %12, 2
  %13 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p2.addr.0.i) #14, !srcloc !77
  %asmresult4.i = extractvalue { ptr, i32, i32 } %13, 0
  %asmresult5.i = extractvalue { ptr, i32, i32 } %13, 1
  %asmresult6.i = extractvalue { ptr, i32, i32 } %13, 2
  %xor.i = xor i32 %asmresult5.i, %asmresult2.i
  %xor7.i = xor i32 %asmresult6.i, %asmresult3.i
  %14 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p3.addr.0.i) #14, !srcloc !78
  %asmresult8.i = extractvalue { ptr, i32, i32 } %14, 0
  %asmresult9.i = extractvalue { ptr, i32, i32 } %14, 1
  %asmresult10.i = extractvalue { ptr, i32, i32 } %14, 2
  %xor11.i = xor i32 %xor.i, %asmresult9.i
  %xor12.i = xor i32 %xor7.i, %asmresult10.i
  %15 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p4.addr.0.i) #14, !srcloc !79
  %asmresult13.i = extractvalue { ptr, i32, i32 } %15, 0
  %asmresult14.i = extractvalue { ptr, i32, i32 } %15, 1
  %asmresult15.i = extractvalue { ptr, i32, i32 } %15, 2
  %xor16.i = xor i32 %xor11.i, %asmresult14.i
  %xor17.i = xor i32 %xor12.i, %asmresult15.i
  %16 = tail call { ptr, i32, i32 } asm "ldmia\09$0!, {$1, $2}", "=r,={r12},={lr},0"(ptr %p5.addr.0.i) #14, !srcloc !80
  %asmresult18.i = extractvalue { ptr, i32, i32 } %16, 0
  %asmresult19.i = extractvalue { ptr, i32, i32 } %16, 1
  %asmresult20.i = extractvalue { ptr, i32, i32 } %16, 2
  %xor21.i = xor i32 %xor16.i, %asmresult19.i
  %xor22.i = xor i32 %xor17.i, %asmresult20.i
  %17 = tail call ptr asm sideeffect "stmia\09$0!, {$2, $3}", "=r,0,{r8},{r9}"(ptr %asmresult.i, i32 %xor21.i, i32 %xor22.i) #9, !srcloc !81
  %dec.i = add i32 %lines.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i.if.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kernel_neon_begin() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.xor_block_template, ptr @xor_block_neon_inner, i32 0, i32 6) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.xor_block_template, ptr @xor_block_neon_inner, i32 0, i32 6), align 4
  tail call void %18(i32 noundef %bytes, ptr noundef %p1, ptr noundef %p2, ptr noundef %p3, ptr noundef %p4, ptr noundef %p5) #9
  tail call void @kernel_neon_end() #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_begin() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_neon_end() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_xor_speed(ptr noundef %tmpl, ptr noundef %b1, ptr noundef %b2) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @template_list, align 4
  %1 = ptrtoint ptr %tmpl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %tmpl, align 4
  store ptr %tmpl, ptr @template_list, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %do_2 = getelementptr inbounds %struct.xor_block_template, ptr %tmpl, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %min.040 = phi i64 [ 9223372036854775807, %entry ], [ %8, %for.end.for.body_crit_edge ]
  %i.039 = phi i32 [ 0, %entry ], [ %inc13, %for.end.for.body_crit_edge ]
  %call = tail call i64 @ktime_get() #9
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %for.body
  %j.038 = phi i32 [ 0, %for.body ], [ %inc, %do.body4.do.body4_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %do_2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %do_2, align 4
  tail call void %7(i32 noundef 4096, ptr noundef %b1, ptr noundef %b2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !84
  tail call void @arm_heavy_mb() #9
  %inc = add nuw nsw i32 %j.038, 1
  %exitcond.not = icmp eq i32 %inc, 800
  br i1 %exitcond.not, label %for.end, label %do.body4.do.body4_crit_edge

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4

for.end:                                          ; preds = %do.body4
  %call10 = tail call i64 @ktime_get() #9
  %sub = sub i64 %call10, %call
  %8 = tail call i64 @llvm.smin.i64(i64 %sub, i64 %min.040)
  %inc13 = add nuw nsw i32 %i.039, 1
  %exitcond41.not = icmp eq i32 %inc13, 3
  br i1 %exitcond41.not, label %do.body15, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %9 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i36 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i36 to ptr
  %preempt_count.i.i37 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i37, align 4
  %sub.i = add i32 %12, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not = icmp eq i64 %8, 0
  %13 = trunc i64 %8 to i32
  %conv = select i1 %tobool.not, i32 1, i32 %13
  %div = udiv i32 -1018167296, %conv
  %speed21 = getelementptr inbounds %struct.xor_block_template, ptr %tmpl, i32 0, i32 2
  %14 = ptrtoint ptr %speed21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %speed21, align 4
  %name = getelementptr inbounds %struct.xor_block_template, ptr %tmpl, i32 0, i32 1
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %16, i32 noundef %div) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__ksymtab_xor_blocks, !1, !"__ksymtab_xor_blocks", i1 false, i1 false}
!1 = !{!"../crypto/xor.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_file173, !3, !"__UNIQUE_ID_file173", i1 false, i1 false}
!3 = !{!"../crypto/xor.c", i32 168, i32 1}
!4 = !{ptr @__UNIQUE_ID_license174, !3, !"__UNIQUE_ID_license174", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_xor__175_172_register_xor_blocks1, !6, !"__initcall__kmod_xor__175_172_register_xor_blocks1", i1 false, i1 false}
!6 = !{!"../crypto/xor.c", i32 172, i32 1}
!7 = !{ptr @__initcall__kmod_xor__176_175_calibrate_xor_blocks6, !8, !"__initcall__kmod_xor__176_175_calibrate_xor_blocks6", i1 false, i1 false}
!8 = !{!"../crypto/xor.c", i32 175, i32 1}
!9 = !{ptr @__exitcall_xor_exit, !10, !"__exitcall_xor_exit", i1 false, i1 false}
!10 = !{!"../crypto/xor.c", i32 176, i32 1}
!11 = !{ptr @active_template, !12, !"active_template", i1 false, i1 false}
!12 = !{!"../crypto/xor.c", i32 24, i32 35}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/include/asm/xor.h", i32 128, i32 10}
!15 = !{ptr @xor_block_arm4regs, !16, !"xor_block_arm4regs", i1 false, i1 false}
!16 = !{!"../arch/arm/include/asm/xor.h", i32 127, i32 34}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/asm-generic/xor.h", i32 673, i32 10}
!19 = !{ptr @xor_block_8regs, !20, !"xor_block_8regs", i1 false, i1 false}
!20 = !{!"../include/asm-generic/xor.h", i32 672, i32 34}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/asm-generic/xor.h", i32 681, i32 10}
!23 = !{ptr @xor_block_32regs, !24, !"xor_block_32regs", i1 false, i1 false}
!24 = !{!"../include/asm-generic/xor.h", i32 680, i32 34}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/include/asm/xor.h", i32 200, i32 10}
!27 = !{ptr @xor_block_neon, !28, !"xor_block_neon", i1 false, i1 false}
!28 = !{!"../arch/arm/include/asm/xor.h", i32 199, i32 34}
!29 = !{ptr @template_list, !30, !"template_list", i1 false, i1 false}
!30 = !{!"../crypto/xor.c", i32 55, i32 46}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../crypto/xor.c", i32 127, i32 3}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @calibrate_xor_blocks._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @calibrate_xor_blocks._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../crypto/xor.c", i32 135, i32 3}
!39 = !{ptr @calibrate_xor_blocks._entry.7, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @calibrate_xor_blocks._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../crypto/xor.c", i32 147, i32 2}
!43 = !{ptr @calibrate_xor_blocks._entry.10, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @calibrate_xor_blocks._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../crypto/xor.c", i32 155, i32 2}
!47 = !{ptr @calibrate_xor_blocks._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @calibrate_xor_blocks._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../crypto/xor.c", i32 115, i32 2}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @do_xor_speed._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @do_xor_speed._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2152627339}
!65 = !{i64 2152627460}
!66 = !{i64 2152627718}
!67 = !{i64 2152627836}
!68 = !{i64 2152627957}
!69 = !{i64 2152628202}
!70 = !{i64 2152628460}
!71 = !{i64 2152628578}
!72 = !{i64 2152628669}
!73 = !{i64 2152628825}
!74 = !{i64 2152628981}
!75 = !{i64 2152629150}
!76 = !{i64 2152629240}
!77 = !{i64 2152629331}
!78 = !{i64 2152629487}
!79 = !{i64 2152629643}
!80 = !{i64 2152629799}
!81 = !{i64 2152629968}
!82 = !{i64 2152634682}
!83 = !{i64 2152634819}
!84 = !{i64 2152634967}
!85 = !{i64 2152635144}
