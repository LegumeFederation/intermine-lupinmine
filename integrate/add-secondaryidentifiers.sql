--
-- add secondaryIdentifier = primaryIdentifier with the big prefix trimmed off
--
UPDATE gene SET secondaryidentifier=substring(primaryidentifier,24) WHERE secondaryidentifier IS NULL AND primaryidentifier LIKE 'lupan.Tanjil.gnm%.ann%.%';
UPDATE mrna SET secondaryidentifier=substring(primaryidentifier,24) WHERE secondaryidentifier IS NULL AND primaryidentifier LIKE 'lupan.Tanjil.gnm%.ann%.%';
UPDATE cds  SET secondaryidentifier=substring(primaryidentifier,24) WHERE secondaryidentifier IS NULL AND primaryidentifier LIKE 'lupan.Tanjil.gnm%.ann%.%';

UPDATE chromosome  SET secondaryidentifier=substring(primaryidentifier,19) WHERE secondaryidentifier IS NULL AND primaryidentifier LIKE 'lupan.Tanjil.gnm%.%';
UPDATE supercontig SET secondaryidentifier=substring(primaryidentifier,19) WHERE secondaryidentifier IS NULL AND primaryidentifier LIKE 'lupan.Tanjil.gnm%.%';
