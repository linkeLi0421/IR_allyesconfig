; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/spi/paragon.c_pt.bc'
source_filename = "../drivers/mtd/nand/spi/paragon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinand_info = type { ptr, %struct.spinand_devid, i32, %struct.nand_memory_organization, %struct.nand_ecc_props, %struct.spinand_ecc_info, %struct.anon.71, ptr }
%struct.spinand_devid = type { ptr, i8, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.spinand_ecc_info = type { ptr, ptr }
%struct.anon.71 = type { ptr, ptr, ptr }
%struct.spinand_manufacturer_ops = type { ptr, ptr }
%struct.spinand_manufacturer = type { i8, ptr, ptr, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.spinand_op_variants = type { ptr, i32 }
%struct.spi_mem_op = type { %struct.anon.72, %struct.anon.73, %struct.anon.74, %struct.anon.75 }
%struct.anon.72 = type { i8, i8, i8, i16 }
%struct.anon.73 = type { i8, i8, i8, i64 }
%struct.anon.74 = type { i8, i8, i8 }
%struct.anon.75 = type { i8, i8, i32, i32, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.mtd_oob_region = type { i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Paragon\00", [24 x i8] zeroinitializer }, align 32
@paragon_spinand_table = internal constant { [2 x %struct.spinand_info], [48 x i8] } { [2 x %struct.spinand_info] [%struct.spinand_info { ptr @.str.1, %struct.spinand_devid { ptr @.compoundliteral, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 1024, i32 21, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @pn26g0xa_ecc_get_status, ptr @pn26g0xa_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }, %struct.spinand_info { ptr @.str.2, %struct.spinand_devid { ptr @.compoundliteral.3, i8 1, i32 2 }, i32 0, %struct.nand_memory_organization { i32 1, i32 2048, i32 128, i32 64, i32 2048, i32 41, i32 1, i32 1, i32 1 }, %struct.nand_ecc_props { i32 0, i32 0, i32 0, i32 8, i32 512, i32 0 }, %struct.spinand_ecc_info { ptr @pn26g0xa_ecc_get_status, ptr @pn26g0xa_ooblayout }, %struct.anon.71 { ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants }, ptr null }], [48 x i8] zeroinitializer }, align 32
@paragon_spinand_manuf_ops = internal constant { %struct.spinand_manufacturer_ops, [24 x i8] } zeroinitializer, align 32
@paragon_spinand_manufacturer = dso_local constant { %struct.spinand_manufacturer, [44 x i8] } { %struct.spinand_manufacturer { i8 -95, ptr @.str, ptr @paragon_spinand_table, i32 2, ptr @paragon_spinand_manuf_ops }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PN26G01A\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\E1", [31 x i8] zeroinitializer }, align 32
@pn26g0xa_ooblayout = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @pn26g0xa_ooblayout_ecc, ptr @pn26g0xa_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@read_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.4, i32 6 }, [24 x i8] zeroinitializer }, align 32
@write_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.5, i32 2 }, [24 x i8] zeroinitializer }, align 32
@update_cache_variants = internal constant { %struct.spinand_op_variants, [24 x i8] } { %struct.spinand_op_variants { ptr @.compoundliteral.6, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PN26G02A\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { [1 x i8], [31 x i8] } { [1 x i8] c"\E2", [31 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [6 x %struct.spi_mem_op], [64 x i8] } { [6 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 235 }, %struct.anon.73 { i8 2, i8 4, i8 0, i64 0 }, %struct.anon.74 { i8 2, i8 4, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 107 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 4, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 187 }, %struct.anon.73 { i8 2, i8 2, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 2, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 59 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 2, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 11 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 3 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 { i8 1, i8 1, i8 0 }, %struct.anon.75 { i8 1, i8 0, i32 1, i32 0, %union.anon.76 zeroinitializer } }], [64 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 50 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 2 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [2 x %struct.spi_mem_op], [32 x i8] } { [2 x %struct.spi_mem_op] [%struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 52 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 4, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }, %struct.spi_mem_op { %struct.anon.72 { i8 1, i8 1, i8 0, i16 132 }, %struct.anon.73 { i8 2, i8 1, i8 0, i64 0 }, %struct.anon.74 zeroinitializer, %struct.anon.75 { i8 1, i8 0, i32 2, i32 0, %union.anon.76 zeroinitializer } }], [32 x i8] zeroinitializer }, align 32
@switch.table.pn26g0xa_ecc_get_status = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 7, i32 -74, i32 8], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 127, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"paragon_spinand_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 99, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"paragon_spinand_manuf_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 122, i32 46 }
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"paragon_spinand_manufacturer\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 125, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 100, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"pn26g0xa_ooblayout\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 93, i32 39 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"read_cache_variants\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 24, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"write_cache_variants\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 32, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [22 x i8] c"update_cache_variants\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 36, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [34 x i8] c"../drivers/mtd/nand/spi/paragon.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 110, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [37 x i8] c"switch.table.pn26g0xa_ecc_get_status\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @paragon_spinand_table, ptr @paragon_spinand_manuf_ops, ptr @paragon_spinand_manufacturer, ptr @.str.1, ptr @.compoundliteral, ptr @pn26g0xa_ooblayout, ptr @read_cache_variants, ptr @write_cache_variants, ptr @update_cache_variants, ptr @.str.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @switch.table.pn26g0xa_ecc_get_status], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paragon_spinand_table to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paragon_spinand_manuf_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @paragon_spinand_manufacturer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn26g0xa_ooblayout to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_cache_variants to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pn26g0xa_ecc_get_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pn26g0xa_ecc_get_status(ptr nocapture noundef readnone %spinand, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i8 %status, 4
  %1 = and i8 %0, 3
  %2 = zext i8 %1 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.pn26g0xa_ecc_get_status, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  ret i32 %switch.load
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pn26g0xa_ooblayout_ecc(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %section)
  %cmp = icmp sgt i32 %section, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %mul = mul i32 %section, 15
  %add = add i32 %mul, 6
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 13, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pn26g0xa_ooblayout_free(ptr nocapture noundef readnone %mtd, i32 noundef %section, ptr nocapture noundef writeonly %region) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %section)
  %cmp = icmp sgt i32 %section, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %section)
  %cmp1 = icmp eq i32 %section, 4
  %mul = mul i32 %section, 15
  %add = add i32 %mul, 4
  %.sink11 = select i1 %cmp1, i32 64, i32 %add
  %.sink = select i1 %cmp1, i32 64, i32 2
  %0 = ptrtoint ptr %region to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink11, ptr %region, align 4
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %region, i32 0, i32 1
  %1 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -34, %entry.return_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 127, i32 10}
!2 = !{ptr @paragon_spinand_manufacturer, !3, !"paragon_spinand_manufacturer", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 125, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 100, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 110, i32 2}
!8 = !{ptr @paragon_spinand_table, !9, !"paragon_spinand_table", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 99, i32 34}
!10 = !{ptr @pn26g0xa_ooblayout, !11, !"pn26g0xa_ooblayout", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 93, i32 39}
!12 = !{ptr @read_cache_variants, !13, !"read_cache_variants", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 24, i32 8}
!14 = !{ptr @write_cache_variants, !15, !"write_cache_variants", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 32, i32 8}
!16 = !{ptr @update_cache_variants, !17, !"update_cache_variants", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 36, i32 8}
!18 = !{ptr @paragon_spinand_manuf_ops, !19, !"paragon_spinand_manuf_ops", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/spi/paragon.c", i32 122, i32 46}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
