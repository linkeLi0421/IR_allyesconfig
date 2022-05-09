; ModuleID = '/llk/IR_all_yes/drivers/soc/fsl/qe/qe_io.c_pt.bc'
source_filename = "../drivers/soc/fsl/qe/qe_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__par_io_config_pin\22, \22a\22\09"
module asm "\09.weak\09__crc___par_io_config_pin\09\09\09\09"
module asm "\09.long\09__crc___par_io_config_pin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___par_io_config_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22__par_io_config_pin\22\09\09\09\09\09"
module asm "__kstrtabns___par_io_config_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+par_io_config_pin\22, \22a\22\09"
module asm "\09.weak\09__crc_par_io_config_pin\09\09\09\09"
module asm "\09.long\09__crc_par_io_config_pin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_par_io_config_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22par_io_config_pin\22\09\09\09\09\09"
module asm "__kstrtabns_par_io_config_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+par_io_data_set\22, \22a\22\09"
module asm "\09.weak\09__crc_par_io_data_set\09\09\09\09"
module asm "\09.long\09__crc_par_io_data_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_par_io_data_set:\09\09\09\09\09"
module asm "\09.asciz \09\22par_io_data_set\22\09\09\09\09\09"
module asm "__kstrtabns_par_io_data_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+par_io_of_config\22, \22a\22\09"
module asm "\09.weak\09__crc_par_io_of_config\09\09\09\09"
module asm "\09.long\09__crc_par_io_of_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_par_io_of_config:\09\09\09\09\09"
module asm "\09.asciz \09\22par_io_of_config\22\09\09\09\09\09"
module asm "__kstrtabns_par_io_of_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.qe_pio_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@par_io = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num-ports\00", [22 x i8] zeroinitializer }, align 32
@num_par_io_ports = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab___par_io_config_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns___par_io_config_pin = external dso_local constant [0 x i8], align 1
@__ksymtab___par_io_config_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__par_io_config_pin to i32), ptr @__kstrtab___par_io_config_pin, ptr @__kstrtabns___par_io_config_pin }, section "___ksymtab+__par_io_config_pin", align 4
@__kstrtab_par_io_config_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_par_io_config_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_par_io_config_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @par_io_config_pin to i32), ptr @__kstrtab_par_io_config_pin, ptr @__kstrtabns_par_io_config_pin }, section "___ksymtab+par_io_config_pin", align 4
@__kstrtab_par_io_data_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_par_io_data_set = external dso_local constant [0 x i8], align 1
@__ksymtab_par_io_data_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @par_io_data_set to i32), ptr @__kstrtab_par_io_data_set, ptr @__kstrtabns_par_io_data_set }, section "___ksymtab+par_io_data_set", align 4
@par_io_of_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013par_io not initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"par_io_of_config\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/soc/fsl/qe/qe_io.c\00", [37 x i8] zeroinitializer }, align 32
@par_io_of_config._entry_ptr = internal global ptr @par_io_of_config._entry, section ".printk_index", align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pio-handle\00", [21 x i8] zeroinitializer }, align 32
@par_io_of_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013pio-handle not available\0A\00", [36 x i8] zeroinitializer }, align 32
@par_io_of_config._entry_ptr.7 = internal global ptr @par_io_of_config._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pio-map\00", [24 x i8] zeroinitializer }, align 32
@par_io_of_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013pio-map is not set!\0A\00", [41 x i8] zeroinitializer }, align 32
@par_io_of_config._entry_ptr.11 = internal global ptr @par_io_of_config._entry.9, section ".printk_index", align 4
@par_io_of_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013pio-map format wrong!\0A\00", [39 x i8] zeroinitializer }, align 32
@par_io_of_config._entry_ptr.14 = internal global ptr @par_io_of_config._entry.12, section ".printk_index", align 4
@__kstrtab_par_io_of_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_par_io_of_config = external dso_local constant [0 x i8], align 1
@__ksymtab_par_io_of_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @par_io_of_config to i32), ptr @__kstrtab_par_io_of_config, ptr @__kstrtabns_par_io_of_config }, section "___ksymtab+par_io_of_config", align 4
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"par_io\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 24, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 41, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"num_par_io_ports\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 25, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 149, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 153, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 155, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 159, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 161, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [30 x i8] c"../drivers/soc/fsl/qe/qe_io.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 166, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab___par_io_config_pin, ptr @__ksymtab_par_io_config_pin, ptr @__ksymtab_par_io_data_set, ptr @__ksymtab_par_io_of_config, ptr @par_io_of_config._entry, ptr @par_io_of_config._entry.12, ptr @par_io_of_config._entry.5, ptr @par_io_of_config._entry.9, ptr @par_io_of_config._entry_ptr, ptr @par_io_of_config._entry_ptr.11, ptr @par_io_of_config._entry_ptr.14, ptr @par_io_of_config._entry_ptr.7, ptr @par_io, ptr @.str, ptr @num_par_io_ports, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_io to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_par_io_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_io_of_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_io_of_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_io_of_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @par_io_of_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @par_io_init(ptr noundef %np) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  %num_ports = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #4
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_ports) #4
  %1 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %num_ports, align 4, !annotation !45
  %call = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %res, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %call2 = call ptr @ioremap(i32 noundef %4, i32 noundef %add.i) #4
  store ptr %call2, ptr @par_io, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %num_ports, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool7.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool7.not, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports, align 4
  store i32 %8, ptr @num_par_io_ports, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_ports) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__par_io_config_pin(ptr noundef %par_io, i8 noundef zeroext %pin, i32 noundef %dir, i32 noundef %open_drain, i32 noundef %assignment, i32 %has_irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %pin to i32
  %shl = lshr i32 -2147483648, %conv
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %par_io) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %open_drain)
  %tobool.not = icmp eq i32 %open_drain, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %tobool.not, label %do.body2, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %0, %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %par_io, i32 %or) #4, !srcloc !48
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %shl, -1
  %and = and i32 %0, %neg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %par_io, i32 %and) #4, !srcloc !48
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %pin)
  %cmp = icmp ugt i8 %pin, 15
  br i1 %cmp, label %do.body79, label %do.body93

do.body79:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %cpdir2 = getelementptr inbounds %struct.qe_pio_regs, ptr %par_io, i32 0, i32 3
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cpdir2) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  %rem153 = shl nuw nsw i32 %conv, 1
  %rem.not154 = and i32 %rem153, 30
  %sub16155 = xor i32 %rem.not154, 30
  %shl17156 = shl i32 3, %sub16155
  %shl23157 = shl i32 %dir, %sub16155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %neg31 = xor i32 %shl17156, -1
  %and32 = and i32 %1, %neg31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdir2, i32 %and32) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %or39 = or i32 %and32, %shl23157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdir2, i32 %or39) #4, !srcloc !48
  %cppar2 = getelementptr inbounds %struct.qe_pio_regs, ptr %par_io, i32 0, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cppar2) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  %shl74167 = shl i32 %assignment, %sub16155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %and83 = and i32 %2, %neg31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cppar2, i32 %and83) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %or90 = or i32 %and83, %shl74167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cppar2, i32 %or90) #4, !srcloc !48
  br label %if.end106

do.body93:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %cpdir1 = getelementptr inbounds %struct.qe_pio_regs, ptr %par_io, i32 0, i32 2
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cpdir1) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  %rem = shl nuw nsw i32 %conv, 1
  %rem.not = and i32 %rem, 30
  %sub16 = xor i32 %rem.not, 30
  %shl17 = shl i32 3, %sub16
  %shl23 = shl i32 %dir, %sub16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %neg45 = xor i32 %shl17, -1
  %and46 = and i32 %3, %neg45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdir1, i32 %and46) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %or53 = or i32 %and46, %shl23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdir1, i32 %or53) #4, !srcloc !48
  %cppar1 = getelementptr inbounds %struct.qe_pio_regs, ptr %par_io, i32 0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cppar1) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  %shl74 = shl i32 %assignment, %sub16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %and97 = and i32 %4, %neg45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cppar1, i32 %and97) #4, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %or104 = or i32 %and97, %shl74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cppar1, i32 %or104) #4, !srcloc !48
  br label %if.end106

if.end106:                                        ; preds = %do.body93, %do.body79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @par_io_config_pin(i8 noundef zeroext %port, i8 noundef zeroext %pin, i32 noundef %dir, i32 noundef %open_drain, i32 noundef %assignment, i32 %has_irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @par_io, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %port to i32
  %1 = load i32, ptr @num_par_io_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp sgt i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr %struct.qe_pio_regs, ptr %0, i32 %conv
  tail call void @__par_io_config_pin(ptr noundef %arrayidx, i8 noundef zeroext %pin, i32 noundef %dir, i32 noundef %open_drain, i32 noundef %assignment, i32 undef)
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @par_io_data_set(i8 noundef zeroext %port, i8 noundef zeroext %pin, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %port to i32
  %0 = load i32, ptr @num_par_io_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %conv)
  %cmp.not = icmp sle i32 %0, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %pin)
  %cmp3 = icmp ugt i8 %pin, 31
  %or.cond = or i1 %cmp3, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %entry
  %conv2 = zext i8 %pin to i32
  %shl = lshr i32 -2147483648, %conv2
  %1 = load ptr, ptr @par_io, align 4
  %cpdata = getelementptr %struct.qe_pio_regs, ptr %1, i32 %conv, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cpdata) #4, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %val)
  %cmp9 = icmp eq i8 %val, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  br i1 %cmp9, label %do.body, label %do.body15

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %3 = load ptr, ptr @par_io, align 4
  %cpdata14 = getelementptr %struct.qe_pio_regs, ptr %3, i32 %conv, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdata14, i32 %and) #4, !srcloc !48
  br label %cleanup

do.body15:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %2, %shl
  %4 = load ptr, ptr @par_io, align 4
  %cpdata20 = getelementptr %struct.qe_pio_regs, ptr %4, i32 %conv, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdata20, i32 %or) #4, !srcloc !48
  br label %cleanup

cleanup:                                          ; preds = %do.body15, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body15 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @par_io_of_config(ptr noundef %np) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %pio_map_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pio_map_len) #4
  %0 = ptrtoint ptr %pio_map_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pio_map_len, align 4, !annotation !45
  %1 = load ptr, ptr @par_io, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #4
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #4
  br label %do.end6

of_parse_phandle.exit:                            ; preds = %if.end
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #4
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %of_parse_phandle.exit.do.end6_crit_edge, label %if.end9

of_parse_phandle.exit.do.end6_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end6

do.end6:                                          ; preds = %of_parse_phandle.exit.do.end6_crit_edge, %of_parse_phandle.exit.thread
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %cleanup

if.end9:                                          ; preds = %of_parse_phandle.exit
  %call10 = call ptr @of_get_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.8, ptr noundef nonnull %pio_map_len) #4
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %pio_map_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pio_map_len, align 4
  %div46 = lshr i32 %6, 2
  store i32 %div46, ptr %pio_map_len, align 4
  %rem = urem i32 %div46, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp19.not = icmp eq i32 %rem, 0
  br i1 %cmp19.not, label %while.cond.preheader, label %do.end23

while.cond.preheader:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp2752.not = icmp ult i32 %6, 4
  br i1 %cmp2752.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #7
  br label %cleanup

while.body:                                       ; preds = %par_io_config_pin.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %pio_map.053 = phi ptr [ %add.ptr, %par_io_config_pin.exit.while.body_crit_edge ], [ %call10, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx28 = getelementptr i32, ptr %pio_map.053, i32 1
  %7 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx28, align 4
  %conv29 = trunc i32 %8 to i8
  %arrayidx30 = getelementptr i32, ptr %pio_map.053, i32 2
  %9 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx30, align 4
  %arrayidx31 = getelementptr i32, ptr %pio_map.053, i32 3
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx31, align 4
  %arrayidx32 = getelementptr i32, ptr %pio_map.053, i32 4
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx32, align 4
  %15 = load ptr, ptr @par_io, align 4
  %tobool.not.i47 = icmp eq ptr %15, null
  br i1 %tobool.not.i47, label %while.body.par_io_config_pin.exit_crit_edge, label %lor.lhs.false.i

while.body.par_io_config_pin.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %par_io_config_pin.exit

lor.lhs.false.i:                                  ; preds = %while.body
  %16 = ptrtoint ptr %pio_map.053 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pio_map.053, align 4
  %conv.i = and i32 %17, 255
  %18 = load i32, ptr @num_par_io_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %18, %conv.i
  br i1 %cmp.not.i, label %if.end.i48, label %lor.lhs.false.i.par_io_config_pin.exit_crit_edge

lor.lhs.false.i.par_io_config_pin.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %par_io_config_pin.exit

if.end.i48:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.qe_pio_regs, ptr %15, i32 %conv.i
  call void @__par_io_config_pin(ptr noundef %arrayidx.i, i8 noundef zeroext %conv29, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 undef) #4
  br label %par_io_config_pin.exit

par_io_config_pin.exit:                           ; preds = %if.end.i48, %lor.lhs.false.i.par_io_config_pin.exit_crit_edge, %while.body.par_io_config_pin.exit_crit_edge
  %add.ptr = getelementptr i32, ptr %pio_map.053, i32 6
  %19 = ptrtoint ptr %pio_map_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pio_map_len, align 4
  %sub = add i32 %20, -6
  store i32 %sub, ptr %pio_map_len, align 4
  %cmp27 = icmp sgt i32 %sub, 0
  br i1 %cmp27, label %par_io_config_pin.exit.while.body_crit_edge, label %par_io_config_pin.exit.while.end_crit_edge

par_io_config_pin.exit.while.end_crit_edge:       ; preds = %par_io_config_pin.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

par_io_config_pin.exit.while.body_crit_edge:      ; preds = %par_io_config_pin.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %par_io_config_pin.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @of_node_put(ptr noundef nonnull %4) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end23, %do.end15, %do.end6, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end6 ], [ -1, %do.end15 ], [ -1, %do.end23 ], [ 0, %while.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pio_map_len) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !24, !25, !26, !28, !29, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 41, i32 32}
!2 = !{ptr @__ksymtab___par_io_config_pin, !3, !"__ksymtab___par_io_config_pin", i1 false, i1 false}
!3 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 106, i32 1}
!4 = !{ptr @__ksymtab_par_io_config_pin, !5, !"__ksymtab_par_io_config_pin", i1 false, i1 false}
!5 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 118, i32 1}
!6 = !{ptr @__ksymtab_par_io_data_set, !7, !"__ksymtab_par_io_data_set", i1 false, i1 false}
!7 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 140, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 149, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @par_io_of_config._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @par_io_of_config._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 153, i32 29}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 155, i32 3}
!18 = !{ptr @par_io_of_config._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @par_io_of_config._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 159, i32 33}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 161, i32 3}
!24 = !{ptr @par_io_of_config._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @par_io_of_config._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 166, i32 3}
!28 = !{ptr @par_io_of_config._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @par_io_of_config._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_par_io_of_config, !31, !"__ksymtab_par_io_of_config", i1 false, i1 false}
!31 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 186, i32 1}
!32 = !{ptr @par_io, !33, !"par_io", i1 false, i1 false}
!33 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 24, i32 36}
!34 = !{ptr @num_par_io_ports, !35, !"num_par_io_ports", i1 false, i1 false}
!35 = !{!"../drivers/soc/fsl/qe/qe_io.c", i32 25, i32 12}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 4053137}
!47 = !{i64 2151822750}
!48 = !{i64 4052719}
!49 = !{i64 2151823723}
!50 = !{i64 2151824294}
!51 = !{i64 2151824634}
!52 = !{i64 2151825693}
!53 = !{i64 2151826258}
!54 = !{i64 2151826598}
!55 = !{i64 2151824019}
!56 = !{i64 2151824974}
!57 = !{i64 2151825314}
!58 = !{i64 2151825989}
!59 = !{i64 2151826938}
!60 = !{i64 2151827278}
!61 = !{i64 2151830663}
